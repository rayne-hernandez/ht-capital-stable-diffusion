# ht-capital-stable-diffusion

This repo will get you up and running with using Stable Diffusion.

# Setup
You will need XCode, Git, Python and HuggingFace setup on your machine to run this repo. You will also need to use your computer's Terminal.
## Terminal
You can find the Terminal app in your Applications folder or LaunchPad. Once open, you can use the terminal to complete the following setup.
## XCode Setup
You can install XCode following these [instructions](https://www.freecodecamp.org/news/how-to-download-and-install-xcode/)
## Git Setup
You can install Git using these [instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
## Python Setup
You can install Python using these [instructions](https://realpython.com/installing-python/#how-to-install-from-the-official-installer)
## HuggingFace Hub Setup
You can install huggingface_hub using these [instructions](https://huggingface.co/docs/huggingface_hub/quick-start#installation)
## VirtualEnv Setup
You can install virtualenv for Python by running
```
pip install virtualenv
```

## Creating a Github Account to clone this repo
First you will need a GitHub account. Follow these instructions on setting up a [Github Account](https://docs.github.com/en/get-started/onboarding/getting-started-with-your-github-account#part-1-configuring-your-github-account).

Next you will need to configure Git with your new Github account. Follow these instructions on [Authenticating with Github from Git](https://docs.github.com/en/get-started/quickstart/set-up-git#authenticating-with-github-from-git). We recommend authenticating using the HTTPS option which can be configured using these [instructions](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)

If your Git is configured with Github you will be able to clone this repo from your Terminal. Just run
```
git clone https://github.com/rayne-hernandez/ht-capital-stable-diffusion.git
```

You will see that a new folder called `ht-capital-stable-diffusion` has been created containing the source code in this repo

## Creating a HuggingFace account
You will need a HuggingFace account to download the model weights from HuggingFace. You can create an account [here](https://huggingface.co/join) and then configure your HuggingFace cli using these [instructions](https://huggingface.co/docs/huggingface_hub/quick-start#login). Make sure you follow the instructions for creating an [access token](https://huggingface.co/docs/hub/security-tokens)

# Using this Repo
You can use this repo to generate images from text prompts. Run the following commands from your Terminal inside this repo directory
## Create a VirtualEnv to install dependencies
From this directory run
```
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```
You will see a bunch of dependencies installing. This may take a few minutes

## Download the Model weights
Run the `download_helper.py` file to download the model weights for Stable Diffusion
```
python download_helper.py
```
You will download model weights, this may take 15-45 minutes depending on your download speed. You will see a new folder created called `out` containing the downloaded model

## Run Stable Diffusion
You can now generate images using the following command. Change your prompt by changing the `--prompt` option to whatever you want. The current example is "a photo of an astronaut riding a horse on mars". Set `--seed` to any number to get a different image for the same prompt.
```
python -m python_coreml_stable_diffusion.pipeline --prompt "a photo of an astronaut riding a horse on mars" -i out/coreml-stable-diffusion-v1-4_original_packages -o images_output --compute-unit ALL --seed 42
```
You will find generated images in the `images_output` folder
