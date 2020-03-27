# Readme - SimplePulseGenerator
Pulse generator, with added logic for a pulse repetition frequency (PRF) and a chirp frequency.
As implemented, all data is sent back in realtime, which puts a low limit on the supported PRF due to 
the bottleneck witin the Matlab data unpacking logic through the ethernet path.  
Only the block RAM is used for caching, which is a very limited resource.

A DRAM Memory controller will be needed to cache recorded data from pultiple pulses to form a CPI for 
processing.


<hr>

#### Markdown
This Readme is a Markdown file, which is the default readme filetype for many Git repository hosts. 
It is similar to HTML, but simplified and streamlined.  
[Chrome Extension for viewing Markdown offline](https://chrome.google.com/webstore/detail/markdown-preview-plus/febilkbfcbhebfnokafefeacimjdckgl)  
[Github Markdown Syntax Guide](https://guides.github.com/features/mastering-markdown/)

#### Git Large File Storage

**Quick Start**  
If you do not need to commit synthesized .bit files, and do not need to download old ones, you do not 
need to do anything to use this repository.

However, if you wish to commit new binary .bit files, or view old ones, you need to run one command to 
initialize Git LFS. Open the repository folder on the command line and type  
`git lfs install` and you are done.  
Alternatively, open the repository on GitKraken, click File > Preferences > LFS then press the button labeled "Initialize LFS on this repo."  
That is all that is required.  This allows Git LFS to intercept commits of the files specified in .gitattributes so they are stored outside the main Git repository, preventing bloat.

**What does Git LFS do for me?**  
[Git LFS - Large File Storage](https://git-lfs.github.com/)
Provides a way to handle large binary files **outside** a Git repo, but **inside** the Git workflow.
Because Git is a distributed repository, downloading a repo downloads ALL files present in ALL historical versions of ALL files.  Because binary files cannot be stored as diffs like ASCII, the sum off all historical binary files causes incredible bloat the the local Git repository.

Git LFS solves this by designating a few file types or folders as LFS files, then storing the contents of 
these files in an alternate remote repository, with only a small link to this repo stored in the Git repo.
Git LFS will store a local copy of any files you've checked out within the last 3 days or so, but will 
prune this overtime so local storage doesn't grow without bound.  As long as you have internet access, 
previous copies of LFS files can allways be accessed, and if you have the bandwidth and storage, a simple 
command `git lfs fetch all` will download and store a local copy of all LFS files, so you can check them out 
locally without an internet connection.  
Conversely, `git lfs prune all` will delete local copies of all 
LFS files which have HAVE been uploaded and HAVE NOT been checked out in the last 3 days.
