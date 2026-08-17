

i want to create a pr in sheikhwasimuddin/Collegeand add wirless sensor network

8a4de99a-26a0-432e-9820-b32bdcad24f8.png
just do it


what to di

You're very close. The screenshot shows your GitHub branch WSN exists, but it is 0 commits ahead and 0 behind main. So there is currently nothing to make a PR from.

Do this from your terminal:

1. Make sure you're on your WSN branch
git checkout WSN
2. Add the Wireless Sensor Network folder
git add "Wireless Sensor Network"
3. Commit it
git commit -m "Add Wireless Sensor Network lab"
4. Push it
git push origin WSN
5. Create the PR
Open the Pull requests tab in your GitHub repository. You should now see:

Compare & pull request

Select:

base: main
compare: WSN
Use this title:

Add Wireless Sensor Network Lab
Changes
Added Wireless Sensor Network lab materials

Added MATLAB implementation for random deployment of sensor nodes

Added WSN practical files

Purpose
This PR adds the Wireless Sensor Network practical work to the College repository.

Then click Create pull request.

Important
Your screenshot shows WSN is 0 ahead, so don't create the PR yet. First run:

git add "Wireless Sensor Network"
git commit -m "Add Wireless Sensor Network lab"
git push origin WSN
If git add says pathspec not found, send me that exact error.


sheikhwasimuddin/College make a readme file 

Absolutely. Since this repository contains your college practicals, lab work, programming exercises, and subject-wise files, I’d keep the README clean and professional.

Replace your current README.md with this. Then:

git add README.md
git commit -m "Update repository README"
git push
Since you're currently working with the WSN branch/PR, make sure you push the README to the branch you actually want included in the PR.



README.md

College
A collection of my college academic work, practicals, laboratory assignments, programming exercises, and course-related resources completed during my B.Tech in Computer Science and Engineering with an IoT specialization.

📚 Repository Contents
Folder	Description
AIML	Artificial Intelligence & Machine Learning practicals
blockchain technology	Blockchain Technology practicals
CC	Competitive Computing practicals and assignments
CRT	Campus Recruitment Training and coding practice
ds	Data Science / related practical work
gis	Geographic Information Systems practicals
IIOT	Introduction to Internet of Things practicals
JavaFSD	Java Full Stack Development practicals
kotlin	Kotlin programming practicals
MWIOT	Mobile & Wireless IoT practicals
OOPS	Object-Oriented Programming practicals
os	Operating Systems practicals
VSDA R	Visual Statistics & Data Analysis using R
Wireless Sensor Network	Wireless Sensor Network practicals and MATLAB programs
🛠️ Technologies & Tools
Programming: Java, Python, Kotlin, R, MATLAB

AI/ML: Artificial Intelligence, Machine Learning

IoT: IIoT, MWIOT, Wireless Sensor Networks

Cloud: Cloud Computing

Data: Data Science, GIS, R

Other: Blockchain, Operating Systems, OOPS, Java Full Stack Development

🎯 Purpose
This repository is maintained as an organized collection of my academic work throughout my engineering degree. It serves as a reference for:

College laboratory practicals

Subject assignments

Programming exercises

Experiment implementations

Revision and examination preparation

Academic project documentation

📂 Organization
The repository follows a subject-wise structure:

College/
├── AIML/
├── blockchain technology/
├── CC/
├── CRT/
├── ds/
├── gis/
├── IIOT/
├── JavaFSD/
├── kotlin/
├── MWIOT/
├── OOPS/
├── os/
├── VSDA R/
└── Wireless Sensor Network/
👨‍💻 Author
Sheikh Wasimuddin

B.Tech Computer Science & Engineering
IoT Major | Cloud Computing Minor

🔗 Connect
GitHub: @sheikhwasimuddin

⭐ If this repository helps you with your academic preparation, feel free to star the repository.



