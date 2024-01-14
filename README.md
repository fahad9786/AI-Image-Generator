# Image Generator App

## Overview

The Image Generator App is a user-friendly iOS application built with SwiftUI that harnesses the power of OpenAI's image generation service. It provides an intuitive interface for users to effortlessly generate unique images by combining selected styles and custom prompts.

## Features

### 1. Image Style Selection

Users can choose from a variety of artistic styles, including surrealism, realism, threeDRender, minimalism, abstract, retro, and geometric. The selection is visually presented through a horizontal scrollable view, allowing users to preview each style and easily make their choice.

### 2. Prompt Entry

To add a personal touch to the image generation process, users can enter prompts using a dedicated text editor. The entered prompt guides the generation process, influencing the content and theme of the resulting image.

### 3. Seamless Image Generation with OpenAI

The app seamlessly integrates with OpenAI's image generation service. The `OpenAIService.swift` file encapsulates the communication with the OpenAI API. When users tap the "Generate" button, the app sends the chosen style and entered prompt to OpenAI, which responds with a unique image URL. The generated image is then displayed within the app.

### 4. Responsive and Intuitive UI

The user interface is designed with a focus on responsiveness and intuitiveness. Styles are presented with a visually appealing layout, and the selected style is highlighted for clarity. The text editor for prompt entry features a clean design, making it easy for users to input and edit their prompts.

### 5. Real-time Style Feedback

As users scroll through the available styles, the app dynamically updates the visual feedback by highlighting the selected style with a distinctive border. This real-time feedback enhances the user experience, providing a clear indication of the chosen style.

### Watch The Demo Below!

[![Watch the demo](https://img.youtube.com/vi/RfQn5DESwiM/0.jpg)](https://youtu.be/RfQn5DESwiM)


## Getting Started

### Prerequisites

- Xcode installed on your development machine.
- Obtain an OpenAI API key and replace the placeholder in `Constants.swift` with the actual key.

### Installation

1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Replace the placeholder API key in `Constants.swift` with your OpenAI API key.

### Usage

1. Run the app on a simulator or a physical device.
2. Choose an image style.
3. Enter a prompt in the provided text editor.
4. Tap the "Generate" button to initiate image generation.

## Contribution

Contributions are encouraged! Whether it's bug fixes, new features, or UX improvements, feel free to open issues, submit pull requests, or suggest enhancements.
