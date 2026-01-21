# Module 00 — Software Setup and Chapter 1 Preparation

This course uses **Python** and **Jupyter notebooks** as the primary computational tools.
To be fully prepared for the first week of class, complete the setup steps below.

These steps correspond to **Section 1.2: Introduction to Python** in the course textbook.

---

## Step 0 — Create Your Course Workspace Folder (Important)

To keep your files organized all semester, create a dedicated course folder and do *all* course work inside it.

### Windows (recommended location)
Create this folder (using File Explorer or PowerShell):

```
Documents\Projects\MMAE350
```

### macOS (recommended location)
Create this folder:

```
$HOME/Projects/MMAE350
```

Inside your `MMAE350` folder, you will store:
- your virtual environment
- downloaded notebooks (organized by module)
- homework files and scripts

---

## Step 1 — Install Python (Before Creating a Virtual Environment)

A Python installation is required before creating a virtual environment.

### Windows 11 — Install Python from python.org

1. Go to: https://www.python.org/downloads/windows/
2. Click **Latest Python 3 Release**
3. Scroll to **Files**
4. Download **Windows installer (64-bit)**
5. **Do not** download the Python install manager

After installation, verify in PowerShell:

```
py --version
```

---

### macOS — Check Python, then Install via Homebrew if Needed

First, check whether Python 3 is available:

```
python3 --version
```

If `python3` is not found:

1. Install Homebrew (one-time installation):

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install Python:

```
brew install python
```

3. Verify:

```
python3 --version
```

---

## Step 2 — Create and Activate a Virtual Environment

All course work should be completed inside a virtual environment.
This isolates course packages and avoids conflicts with other software.

### Windows 11 (PowerShell)

```
cd $HOME\Documents\Projects\MMAE350
py -m venv my_venv
my_venv\Scripts\activate
```

After activation, your prompt should look like:

```
(my_venv) PS C:\Users\YourName\Documents\Projects\MMAE350>
```

---

### macOS (Terminal)

```
cd ~/Projects/MMAE350
python3 -m venv my_venv
source my_venv/bin/activate
```

After activation, your prompt should include `(my_venv)`.

---

### Deactivation (Windows or macOS)

```
deactivate
```

---

## Step 3 — Upgrade pip and Install Required Packages

With the virtual environment activated:

```
python -m pip install --upgrade pip
python -m pip install pandas sympy notebook matplotlib ipykernel
```

(Optional) Verify installed packages:

```
python -m pip list
```

---

## Step 4 — Register the Jupyter Kernel

```
python -m ipykernel install --user \
  --name=mmae_venv \
  --display-name "Python (mmae_venv)"
```

**Important:** If you skip this step, Jupyter may use the wrong Python installation.

---

## Step 5 — Download the Module 1 Notebook and Run Jupyter

### Windows
```
cd $HOME\Documents\Projects\MMAE350\Module1
jupyter notebook
```

### macOS
```
cd ~/Projects/MMAE350/Module1
jupyter notebook
```

Select **Kernel → Change Kernel → Python (mmae_venv)**.

---

## Getting Help

- Bring your laptop to class during the first week if you encounter issues
- Questions about setup can be addressed during office hours
- Do not wait until an assignment deadline to resolve installation problems

---

## Setup Checklist (Before Week 1)

- Python installed and verified
- Course folder created
- Virtual environment created and activated
- Required packages installed
- Jupyter kernel registered
- Notebook runs successfully
