# Focus Loop 🎯

**Focus Loop** is a minimalist, gamified productivity SaaS and local time-tracking system. It is designed to act as an impenetrable, zero-distraction focus environment powered by behavioral intelligence and local data tracking.

Stripped of heavy graphics and complex layouts, Focus Loop leans entirely into a brutalist, "Linear-style" aesthetic (`#131415`). 

## ⚡ Core Features

*   **Linear Productivity Timer**: A beautiful flat UI timer with task intents, project tagging (`#Work`, `#Study`), and micro-goal checklists.
*   **Gamification & Streaks Engine**: Integrated leveling system. Crossing XP thresholds ranks you up dynamically.
*   **True Calendar Matrix**: A precision mathematically-generated month calendar inside the UI. Click historical months to view focus analytics, and explicitly click empty days to manually track/repair your "Focus Streak".
*   **Recharts Data Visualizers**: A complete data analytics suite showing an interactive 7-Day Line Graph for productivity momentum, and a Pie Chart for time categorization based on your Project Tags.
*   **Hardware Web Tracking**:
    *   **Tab Switching Penalty**: Uses HTML5 visibility API to actively snap your timer if you click to a distracting tab.
    *   **Webcam Presence Detection**: Hooks securely into local `face-api.js`. If you walk away from the computer while the timer runs, it actively triggers a distraction pause. (Runs entirely locally; zero video packets are sent).
*   **Focus Loop Extension**: Ships with a custom Manifest V3 Google Chrome Extension that integrates with your dashboard blocklist to physically intercept and block bad URLs while your timer is running.

---

## 🛠️ Tech Stack

*   **Frontend**: React (Vite)
*   **Styling**: Pure vanilla CSS design system
*   **Data Visualization**: Recharts
*   **Backend**: Python, FastAPI
*   **Database**: SQLite (`focus_loop.db`)
*   **Hardware Hooks**: TensorFlow.js / face-api

---

## 🚀 How to Run Locally

Because this tracker hooks deeply into your camera and file-system, it runs entirely across locally hosted ports.

### 1. Start the SQLite Backend
```bash
cd backend
pip install fastapi uvicorn sqlite3
python -m uvicorn main:app --port 8000
```
This runs the local API. Ensure port `8000` is open.

### 2. Start the React Frontend
```bash
cd frontend
npm install
npm run dev
```
The application will boot at `http://localhost:5173`. 

### 3. Load the Browser Extension (Optional)
To enable visceral website hard-blocking:
1. Open Google Chrome.
2. Go to `chrome://extensions/`.
3. Enable **Developer Mode** in the top right.
4. Click **Load Unpacked**.
5. Select the `chrome-extension/` directory located inside this repository.

---

## 🔒 Privacy First
Unlike modern productivity trackers, Focus Loop operates in an exact sandbox. SQLite data never leaves your `/backend/` disk. The webcam scanner (`faceapi.nets`) computes entirely inside your browser's V8 engine and cannot transmit payload data.
