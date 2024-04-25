# CASA0018_DL4SN_ArchiVision

## Understanding Architectural Style through Deep Learning

## Overview
This repository contains a deep learning application for the classification of western architectural styles. It is designed to identify and categorize images of buildings into Gothic, Classic, and Byzantine styles. The codebase includes scripts for web image crawling, model training in Colab, and deployment on mobile devices using Flutter.

## Demo Video

Watch the demo video of the project [here](https://www.youtube.com/watch?v=lqC7MKKZYeo).



## Dataset
The `Data` directory is organized into three subdirectories, each containing images corresponding to one of the architectural styles:
- `Gothic_Data`
- `Classic_Data`
- `Byzantine_Data`

## Code Structure
The `Code` directory is divided into three main components:
- `Model_Deployment`: Contains the code for deploying the trained model in a Flutter mobile app.
- `Image_Crawling`: Scripts to collect images from the web for building the dataset.
- `Colab_Code`: Jupyter notebooks used for training the model on Google Colab.

## Getting Started

**Image Crawling**
- Navigate to the `Image_Crawling` directory.
- Set up your chrome driver according to your chrome version.
- Edit the `keywords.txt` file for crawling.
- Run the `web_image.ipynb` to collect images.
   
**Training the Model**
- Navigate to the `Colab_Code` directory.
- Open the Colab notebooks in Google Colab.
- Prepare the data to be uploaded in the Google Drive.
- Follow the instructions within the notebook to train the model.

**Model Deployment**
- Navigate to the `Model_Deployment` directory.
- Save the `model.tflite` file and `label.txt`in this `Code/Model_Deployment/assets` directory.
- Set up your flutter environment and deploy your DL application.

## Acknowledgments

For deploying the deep learning model on mobile devices, I referenced approaches from the [Cat & Dog Detector](https://github.com/benthemobileguy/cat_dog_detector) GitHub repository. My sincere thanks to the author of that repository for providing a solid foundation that aided in the implementation of my application.