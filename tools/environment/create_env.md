# Creating the MMAE 350 Python Environment

This document describes how to create and configure the Python virtual
environment used for **MMAE 350**.

These steps assume that **Python 3.10 or newer** is already installed.
For detailed installation instructions, see **Module 00**.

---

## Step 1 — Create the Virtual Environment

From the root of your MMAE350 workspace directory:

### macOS (Terminal)

```bash
python3 -m venv my_venv
```

### Windows (PowerShell)

```powershell
py -m venv my_venv
```

---

## Step 2 — Activate the Environment

### macOS

```bash
source my_venv/bin/activate
```

### Windows

```powershell
my_venv\Scripts\activate
```

When activated, your shell prompt should include:

```
(my_venv)
```

---

## Step 3 — Install Required Packages

With the virtual environment activated, install all required packages:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

This installs NumPy, Pandas, SymPy, Matplotlib, Numba, Jupyter, and related tools
used throughout the course.

---

## Step 4 — Register the Jupyter Kernel

Register the virtual environment so it appears as a selectable kernel in Jupyter:

```bash
python -m ipykernel install --user \
  --name=my_venv \
  --display-name "Python (my_venv)"
```

---

## Step 5 — Verify the Installation (Optional)

You may verify the environment by launching Jupyter:

```bash
jupyter notebook
```

In a notebook:
- select **Kernel → Change Kernel**
- choose **Python (my_venv)**

---

## Deactivating the Environment

To exit the virtual environment:

```bash
deactivate
```

---

## Notes

- All course notebooks should be run using the `Python (my_venv)` kernel.
- Do not install packages globally for this course.
- If package installation fails, consult Module 00 or bring your laptop to class.
