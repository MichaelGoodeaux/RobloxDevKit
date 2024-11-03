# Audio Folder

This folder contains scripts for managing audio in your Roblox game, including sound effects, background music, and an audio manager. These scripts provide a framework for loading, playing, and controlling audio assets to enhance the gaming experience.

## Scripts Overview

### 1. AudioManager.lua

**Purpose**: 
The `AudioManager` module serves as the central hub for managing audio assets in your game. It handles loading sounds, playing them, stopping them, and adjusting their volume.

**Key Functions**:
- `loadSound(name, assetId)`: Loads a sound asset and stores it for playback.
- `playSound(name)`: Plays a loaded sound by its name.
- `stopSound(name)`: Stops the currently playing sound.
- `setVolume(name, volume)`: Sets the volume for a specific sound.

### 2. SoundPlayer.lua

**Purpose**:
The `SoundPlayer` script demonstrates how to use the `AudioManager` to play specific sounds based on game events, such as player actions.

**Key Features**:
- Loads specific sound assets (e.g., jump sound and coin collect sound).
- Connects to player actions and game events to trigger sound playback.

### 3. BackgroundMusic.lua

**Purpose**:
The `BackgroundMusic` script is designed to play background music that loops continuously throughout the game.

**Key Features**:
- Loads background music asset.
- Starts playing the music in a loop to provide ambient sound in the game.

### 4. SoundEffects.lua

**Purpose**:
The `SoundEffects` script manages various sound effects triggered by game events, enhancing interactivity.

**Key Features**:
- Loads multiple sound effects (e.g., explosion, jump, collect).
- Connects sound effects to specific game events (e.g., explosions or item collection).
- Allows for volume adjustments for individual sound effects.

## How to Use

1. **Loading Sounds**: Use the `AudioManager` to load your sound assets by calling `loadSound(name, assetId)` for each sound you want to use.
  
2. **Playing Sounds**: Call the respective play functions (e.g., `playJumpSound()`, `playCollectSound()`) based on the game events you want to trigger sounds for.

3. **Connecting to Events**: Ensure you connect the sound functions to the appropriate game events for them to play when triggered.

4. **Volume Control**: Adjust the volume of sound effects using `setVolume(name, volume)` as needed for balancing audio levels in your game.

## Requirements

- Roblox Studio or a compatible environment to run Luau scripts.
- Ensure all sound assets are uploaded to Roblox and have valid asset IDs.

## Contributing

Feel free to contribute to this project by adding new sound effects, improving the audio management system, or enhancing the scripts provided.