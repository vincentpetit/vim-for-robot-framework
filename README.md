Vim plugins for Robot framework

FUNCTIONALITY
------------------------------------------
{rtp}/after/syntax/robot.vim - Robot syntax plugin for text, space-delimited files.
{rtp}/ftdetect/robot.vim     - Robot filetype recognition plugin for text, space-delimited files.

INSTALLATION
------------------------------------------

```bash
git clone https://github.com/vincentpetit/vim-for-robot-framework.git
 cp -R * ~/.vim/
```

USAGE
------------------------------------------

To custom syntax (add your own library), you can modify ~/.vim/after/syntax/robot.vim

Supported library :
  - collectionsLibrary : 6.0.2
  - dateTimeLibrary : 6.0.2
  - dialogLibrary : 6.0.2
  - kubeLibrary : 0.8.0
  - operatingSystemLibrary : 6.0.2
  - processLibrary : 6.0.2
  - requestsLibrary : 1.0a2
  - screenshotLibrary : 6.0.2
  - sshLibrary : 3.8.1rc1
  - stringLibrary : 6.0.2
  - telnetLibrary : 6.0.2
  - xmlLibrary : 6.0.2

Detection of robot files is implemented in vim/ftdetect/robot.vim. Currently, ".txt, .resource, .robot" are detected as robot files. 
