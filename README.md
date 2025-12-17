RunPod TextGen Bootstrap

One-shot bootstrap script for installing and launching Oobabooga’s Text Generation WebUI inside a RunPod / JupyterLab environment.

Designed to make running large local LLMs on rented GPUs simple, reproducible, and low-friction, without manual Python, PyTorch, or CUDA debugging.

No models or datasets are included.

⸻

What this provides
	•	Single Bash bootstrap script for RunPod
	•	Automatic clone and first-run setup of Text Generation WebUI
	•	Optional username/password protection
	•	Clean, repeatable GPU inference setup
	•	No manual configuration required

⸻

Intended users
	•	RunPod / JupyterLab GPU users
	•	Users running local LLMs instead of hosted APIs
	•	Anyone who wants a one-command setup

Not a Windows or local desktop installer.

⸻

Requirements
	•	Linux (RunPod / JupyterLab)
	•	NVIDIA GPU (RTX-class recommended)
	•	Git and internet access

⸻

Usage (RunPod)
	1.	Start a RunPod instance (PyTorch template, port 7860 exposed)
	2.	Upload runpod-textgen-bootstrap.sh
	3.	Make it executable and run it
	4.	Choose whether to enable authentication
	5.	Open the WebUI via RunPod on port 7860

⸻

What the script does
	•	Removes any existing TextGen WebUI install
	•	Clones the official repository
	•	Runs the default auto-install path
	•	Launches the WebUI for remote access
	•	Optionally enables basic auth

⸻

Notes
	•	Models are not included
	•	GGUF models recommended for VRAM efficiency
	•	Model choice depends on GPU memory

⸻

Scope
	•	Infrastructure and environment tooling only
	•	No telemetry or tracking
	•	Users are responsible for license compliance

⸻

Credits
	•	Oobabooga Text Generation WebUI
	•	RunPod
	•	PyTorch & NVIDIA CUDA
