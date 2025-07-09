# 🚀 HackOrbit2025 – Code by Surekha

A PHP-based web app visualizing India’s import data across states and categories. Designed to help users analyze trade patterns through interactive pages and future-ready visualizations.

---
## ⏳ Built in 36 Hours During HackOrbit Hackathon

All code, design, and testing were done from **July 8, 2025 to July 9, 2025**.

---

## 🌟 Inspiration

India is a massive importer of essential goods, but there’s no simple platform that shows **what is imported**, **where**, and **how much**. This project was inspired by the need to **visualize state-wise imports** for researchers, students, and policy analysts in an intuitive, clean interface.

---

## 💡 What It Does

- Users can browse through states and explore what goods are imported into each one.
- The app provides structured import categories and highlights their trade partners.
- It features dynamic charts, responsive pages, and an extendable backend.
- Future versions will allow live data through APIs and user-uploaded datasets.

---

## 🛠️ Tech Stack

- **Frontend**: HTML, CSS (Bootstrap), JavaScript  
- **Backend**: PHP  
- **Database**: MySQL (optional for dynamic content)  
- **AI Tools**: ChatGPT (for guided code generation)  
- **Visualization**: Chart.js (planned)

---

## 🧠 How We Built It

- **Editor**: Visual Studio Code  
- **Tools Used**: ChatGPT for function templates, XAMPP for local testing  
- **Architecture**: Modular PHP pages, dynamic include logic, external JS/CSS  
- All code was written during the hackathon timeframe with incremental Git commits.

---

## 🤖 AI Assistance Disclosure

Some functions and layout templates were generated using **ChatGPT** based on the original idea and use case. These outputs were reviewed, modified, and integrated manually by the developer. **No third-party code was copied** from existing repositories.

---

## 📦 Features

- ✅ Dynamic home, states, categories, and import details pages  
- ✅ Structured CSS and JavaScript files per page  
- ✅ Mobile-responsive layout using Bootstrap  
- 🚧 Chart.js visualizations (planned but not fully implemented)

---

## 📁 File Structure

```
HackOrbit2025-CodebySurekha/
├── config/
│   └── config.php                # Global DB & app config
├── includes/
│   └── db_connect.php            # DB connection logic
├── pages/
│   ├── home.php                  # Main dashboard
│   ├── states.php                # List of Indian states
│   ├── import.php                # Import details view
│   └── categories.php            # Product category view
├── public/
│   ├── css/
│   │   ├── home.css
│   │   ├── states.css
│   │   └── import.css
│   ├── js/
│   │   ├── home.js
│   │   ├── states.js
│   │   └── import.js
│   └── images/
│       ├── home/
│       ├── states/
│       └── categories/
├── LICENSE
└── README.md
```

---

## 🎯 Challenges We Faced

- Initial database schema planning under tight time.
- Responsive layout bugs in mobile view.
- Making modular includes work without a framework (pure PHP).

---

## 🏁 Accomplishments We're Proud Of

- Completed core frontend and backend logic in under 48 hours.
- Designed a fully functional multi-page PHP application.
- Learned to optimize GitHub workflows and documentation under pressure.

---

## 📚 What's Next

- Implement dynamic data using MySQL or live trade API
- Add admin dashboard with login for data management
- Integrate Chart.js and export functions (PDF, Excel)
- Deploy online with user authentication

---

## 🙌 Team

| Name                | Role          | GitHub                                               |
|---------------------|---------------|------------------------------------------------------|
| Brundavanam Surekha | Full Stack Dev| [@BRUNDAVANAMSUREKHA](https://github.com/BRUNDAVANAMSUREKHA) |

---

## ⚙️ Installation & Setup

### 1. Clone the Repository

```bash
git clone https://github.com/BRUNDAVANAMSUREKHA/HackOrbit2025-CodebySurekha.git
```

### 2. Move to Server Root

Place the `IMPORT/` folder inside your server root directory:

- For **XAMPP**: `htdocs/`
- For **WAMP**: `www/`

### 3. Start Local Server

Make sure Apache and MySQL are running via XAMPP/WAMP.

### 4. Database Configuration

Edit the following files to set your database credentials:

- `config/config.php`
- `includes/db_connect.php`
- `database/india_imports.sql`

**Optional**: If you have a sample database file, Use it inplace of the "india_imports.sql".


## 🤝 Collaboration & Contribution

This was an individual hackathon submission. However, the modular architecture is open to further development or integration in collaboration with research/academic projects.

---

## 📬 Contact

Maintained by [@BRUNDAVANAMSUREKHA](https://github.com/BRUNDAVANAMSUREKHA)  
For issues, please use the [GitHub Issues](https://github.com/BRUNDAVANAMSUREKHA/Imports-In-India/issues) section.

---

## 📄 License

> ⚠️ This is a **proprietary project**. All rights reserved © 2025 **Surekha Brundavanam**.  
> Usage, reproduction, or distribution without permission is strictly prohibited.

---

> 🏁 **Final Note to Judges:**  
> Every line of this project was designed, structured, and implemented in under 48 hours as part of HackOrbit 2025. From initial idea to execution, it reflects both technical skill and time-bound creativity.
