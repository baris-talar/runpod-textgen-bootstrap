RunPod TextGen Bootstrap

This repository provides a one-shot bootstrap script for installing and launching Oobabooga’s Text Generation WebUI inside an existing RunPod / JupyterLab environment.

The goal is to make running large local language models on rented GPUs simple, reproducible, and low-friction, without manual debugging of Python, PyTorch, or CUDA setups.

This repository does not contain models or datasets.

⸻

What this repository provides

• A single Bash installer script designed for RunPod
• Automated cloning and first-run setup of Text Generation WebUI
• Optional username and password protection for the web UI
• No manual configuration required
• Clean and repeatable GPU inference setup

⸻

Intended audience

This repository is intended for users who:

• Use RunPod or similar JupyterLab-based GPU environments
• Want to run local LLMs instead of hosted APIs
• Prefer a one-command setup over manual installs
• Are comfortable using a terminal

This is not a Windows installer and is not intended for local desktop setups.

⸻

Supported environment

• Linux (RunPod / JupyterLab)
• NVIDIA GPU (RTX-class recommended)
• Internet access for repository cloning
• Git available in the environment

⸻

Installation (RunPod)
	1.	Create and start a RunPod instance
Use a PyTorch template and expose port 7860
	2.	Navigate to your workspace directory
	3.	Upload the installer script named
runpod-textgen-bootstrap.sh
	4.	Make the script executable
	5.	Run the script
	6.	Choose whether to enable username and password protection
	7.	Open the WebUI using the RunPod HTTP link on port 7860

⸻

What the script does

• Removes any existing Text Generation WebUI installation to ensure a clean start
• Clones the official oobabooga/text-generation-webui repository
• Runs the automatic installer using the default install path
• Launches the web UI bound to all interfaces for remote access
• Optionally enables basic authentication

⸻

Restarting the WebUI

If the pod is stopped or paused and you want to restart the UI manually:

• Navigate to the text-generation-webui directory
• Run the start script with listen enabled
• Add authentication flags if you previously enabled login

⸻

Notes on models

• This repository does not include model files
• GGUF models are recommended for VRAM efficiency
• Large models can be run using appropriate quantization
• Model selection depends on available VRAM and system memory

⸻

Scope and intent

• This repository focuses on infrastructure and environment tooling
• Scripts are provided as-is
• No telemetry, tracking, or analytics are included
• Users are responsible for respecting model and license terms

⸻

Credits

• Oobabooga Text Generation WebUI
• RunPod infrastructure
• PyTorch and NVIDIA CUDA ecosystems
