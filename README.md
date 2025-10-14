# Auto Whatsapp Chat Snipper
Auto Whatsapp Chat Snipper is an AHK script that automatically captures sequential screenshots of WhatsApp Web Chat 
and saves them with date-indexed file names into a specified directory.

It is a program that me and my very close friend Winnie use weekly to document our WhatsApp chat history. 
It, along with the other programs and applications I have built, integrates into one large ecosystem. 
I have used it for 45+ times with 11,000+ pictures captured by this point.

Feel to to try it out, share it with others, and let me know if this program personally helped you in any way!

Contributions, issues, and pull requests are welcomed!

## Requirements
- Windows 10 (other versions not tested)
- [AutoHotKey v1.1](https://www.autohotkey.com/)
- A screen resolution of 1366 x 768
- The latest version of Google Chrome (tested up to 141.0.7390.66)

## Installation
1. If you have git installed, clone the repo.
    ```
    git clone https://github.com/oyxong123/AutoWhatsappChatSnipper---AHK.git
    ```
    Otherwise, download the repo and unzip it.
2. Press `Win+R` and type `shell:startup` to open the startup folder of the computer, then paste `AutoWhatsappChatSnipper - AHK.ahk` from the repo in it.
   This allows the program to run automatically every time the computer boots up. (Optional)
3. Run `AutoWhatsappChatSnipper - AHK.ahk`.

## Usage
1. Open **Snipping Tool**.
2. Snip a random screenshot.
3. Save the image in the directory that you want the program to save in later.
4. Delete the image from the directory.
5. Open **WhatsApp Web** through **Chrome** and open the chat that you want to capture.
<p align="center">
   
</p>

6. Scroll up or search up the point where you want the capturing process to start.
<p align="center">
   
</p>

7. Set the zoom of the browser to 67%.
<p align="center">
   
</p>

8. Click on a blank area of the page to ensure no buttons, text fields, or other elements are focused. 
<p align="center">
   
</p>

9. Press `PrtSc+O`.
<p align="center">
   
</p>

10. 

## Future Roadmap
#### Possible new features:
- Implement ability to set the area to capture, possibility by selecting the top left and bottom right coordinate, 
  that only needs to set once, through a setting button in the initializing popup.

#### Possible improvements and bug fixes:
- Instead of manually snipping an image in the beginning to select the directory that the program will save its captured screenshots in,
  implement some way to select a directory in the initializing popup.

## Extra Notes
The problem with this program is that it is dependent on the GUI design and behaviour of WhatsApp Web, which updates every once in a while. 
Thus, whenever there is an update, this program would need to be updated.
