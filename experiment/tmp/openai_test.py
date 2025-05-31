import sqlite3
from openai import OpenAI
import os

# response = client.chat.completions.create(
#     model="deepseek-chat",
#     messages=[
#         {"role": "system", "content": "You are a helpful assistant"},
#         {"role": "user", "content": "Hello"},
#     ],
#     stream=False
# )

# print(response.choices[0].message.content)



# Initialize OpenAI client
client = OpenAI(api_key="sk-2634270d6c2a41909553319b0b3b8bc1", base_url="https://api.deepseek.com")

# Create or connect to a SQLite DB
conn = sqlite3.connect("chat_history.db")
cur = conn.cursor()

# Create table if not exists
cur.execute("""
CREATE TABLE IF NOT EXISTS messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    role TEXT NOT NULL,
    content TEXT NOT NULL
)
""")
conn.commit()

def load_history():
    """Load full conversation history from DB"""
    cur.execute("SELECT role, content FROM messages ORDER BY id")
    return [{"role": row[0], "content": row[1]} for row in cur.fetchall()]

def save_message(role, content):
    """Save a message to DB"""
    cur.execute("INSERT INTO messages (role, content) VALUES (?, ?)", (role, content))
    conn.commit()

def ask_gpt(user_input):
    """Send user input and get assistant response"""
    save_message("user", user_input)
    messages = load_history()
    
    response = client.chat.completions.create(
        temperature=0.0,    # coding and math
        model="deepseek-chat",
        messages=messages
    )
    reply = response.choices[0].message.content
    save_message("assistant", reply)
    return reply

# ---- CLI Loop ----

print("Welcome to GPT Chat (Type 'exit' to quit)")
while True:
    user_input = input("You: ").strip()
    if user_input.lower() == "exit":
        break
    reply = ask_gpt(user_input)
    print("Assistant:", reply)
