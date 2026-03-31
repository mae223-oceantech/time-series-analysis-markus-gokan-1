# MAE223 — Week 1: Time Series Analysis

Starter repository for the Week 1 Time Series Analysis lab.

## Files

| File | Description |
|------|-------------|
| `Tidal Analysis_Python.ipynb` | Lab notebook — work here |
| `sample_data.json` | Velocity time series (CLASS10 mooring, 30-min sampling, 16,000 samples) |
| `la_jolla_tide.json` | NOAA La Jolla tide gauge sea level — full ~100-year record, hourly, in mm |
| `environment.yml` | Conda environment specification |

---

## Setup (do this once)

### Step 0 — Create a GitHub account

You need a free GitHub account to access this assignment.

1. Go to [github.com](https://github.com) and click **Sign up**
2. Enter your email, a password, and a username
   - Your username will be visible to your instructor — keep it professional
   - Using your UCSD email is recommended but not required
3. Verify your email address when prompted
4. Once your account is active, click the assignment link posted on Canvas
5. Click **Accept this assignment** — GitHub Classroom will create a personal copy of this repository just for you
6. Wait a few seconds, then refresh — you will see a link to your own repo

> Your repo is an independent copy. Changes you make do not affect anyone else's, and no other student can see yours.

### What is a Jupyter Notebook?

A Jupyter Notebook is an interactive document that combines code, text, and figures in a single file (`.ipynb`). It is organized into **cells** — each cell contains either code or explanatory text, and you can run cells individually or all at once. When you run a code cell, the output (numbers, plots, etc.) appears directly below it. Notebooks are widely used in science and data analysis because they make it easy to write, run, and inspect code in small chunks.

### What is VS Code?

VS Code (Visual Studio Code) is a free code editor made by Microsoft. It can open and run Jupyter Notebooks directly. It is a popular alternative to running notebooks in a web browser (the classic JupyterLab interface). Both work with the same `.ipynb` files — the choice is just a matter of preference. For this course we use VS Code.

### What is a kernel?

A kernel is the Python engine that actually runs the code in your notebook. When you open a notebook you need to tell it which Python environment to use — in our case that is the `mae223` environment you will create below. Think of the kernel as the engine and the notebook as the dashboard.

---

### Step 1 — Install Miniconda

Miniconda is a lightweight Python package manager. It lets you create isolated Python environments so that different projects do not interfere with each other. **Skip this step if you already have Anaconda or Miniconda installed.**

**Mac:**
1. Go to https://docs.conda.io/en/latest/miniconda.html
2. Download the **macOS** installer — choose **Apple Silicon** if you have an M1/M2/M3/M4 Mac, otherwise choose **Intel**
3. Open the downloaded `.pkg` file and follow the prompts
4. Open a **Terminal** window: press `Cmd+Space`, type `Terminal`, and hit Enter
5. Type `conda --version` and press Enter — you should see something like `conda 24.x.x`

**Windows:**
1. Go to https://docs.conda.io/en/latest/miniconda.html
2. Download the **Windows 64-bit** installer (`.exe`)
3. Run the installer. When you reach the **Advanced Options** screen, check **"Add Miniconda3 to my PATH environment variable"**
4. Click through the remaining prompts and finish the installation
5. Open **Anaconda Prompt**: click the Windows Start menu, type `Anaconda Prompt`, and open it. A black window will appear — this is your command line and is what you will use for all terminal commands below
6. Type `conda --version` and press Enter — you should see something like `conda 24.x.x`

---

### Step 2 — Clone your repository

On your GitHub Classroom repo page, click the green **Code** button and copy the URL. Then in Terminal (Mac) or Anaconda Prompt (Windows) run:

```bash
git clone <your-repo-url>
```

This downloads all the files to your computer and keeps them connected to your GitHub repo. Navigate into the folder:

```bash
cd time-series-analysis-<your-username>
```

---

### Step 3 — Create the course environment

This installs all the Python packages needed for the lab into an isolated environment called `mae223`.

```bash
conda env create -f environment.yml
```

This may take a few minutes. When it finishes, run:

```bash
conda activate mae223
python -m ipykernel install --user --name mae223 --display-name "mae223"
```

The first command activates the environment. The second registers it as a kernel so VS Code can find it.

---

### Step 4 — Install VS Code

1. Download and install VS Code from https://code.visualstudio.com
2. Open VS Code and go to the **Extensions** panel — click the square icon on the left sidebar or press `Cmd+Shift+X` (Mac) / `Ctrl+Shift+X` (Windows)
3. Search for **Python** and click Install
4. Search for **Jupyter** and click Install
5. Restart VS Code after both extensions finish installing

---

### Step 5 — Open the notebook

1. In VS Code, open the repo folder: **File → Open Folder**, navigate to your `time-series-analysis` folder, and click Open
2. Click `Tidal Analysis_Python.ipynb` in the left file panel to open the notebook
3. In the top-right corner click **Select Kernel → Select Another Kernel... → Jupyter Kernel... → mae223**
4. Click **Run All** in the toolbar to execute all cells — plots and output will appear below each cell

> **Note:** Always run cells from top to bottom. If you see a `NameError`, it usually means an earlier cell has not been run yet. Use **Run All** to avoid this.

---

### Step 6 — Save your work to GitHub

Push your changes to GitHub periodically as you work through the notebook — this keeps your code backed up and lets you pick up where you left off from any computer.

1. Open the Source Control panel in VS Code: click the branch icon on the left sidebar or press `Cmd+Shift+G` (Mac) / `Ctrl+Shift+G` (Windows)
2. You will see your modified notebook listed under **Changes**
3. Click the `+` icon next to the file to stage it
4. Type a short message describing what you did (e.g. `completed tidal spectrum section`) and click **Commit**
5. Click **Sync Changes** to push to your GitHub repo

You can push as many times as you like — each push saves a snapshot of your progress.

> **Note:** Lab reports are submitted through Canvas, not GitHub.
