# HUI Example

## Supported Platforms

- macOS

## Overview

This is a debugging workhorse that was used while developing the HUI components of swift-midi.

Host host and client are modeled, fully functional and essentially feature-complete.

## Key Features

- On app launch, two windows are presented: a **host** and a **client** control surface.
- The **client** window creates its own virtual MIDI input and output.
- The **host** window automatically forms a bidirectional connection to the client window by connecting to its virtual input and output.
- In order to test the client control surface window with another piece of software (such as a DAW like Logic or Pro Tools):
  - Close the host window
  - Launch the DAW software
  - Configure the DAW to use a HUI control surface and assign the virtual input and output as the MIDI ports

## Addendum

> [!NOTE]
>
> The SwiftUI implementation is not fully optimized and may be laggy and/or CPU-intensive under heavy HUI activity.
