# About organize-folders script :file_folder:

## Whats it solves ?

That script was created to organize folders and subfolders in grammatical components (nouns, verbs, adverbs ...) and identify in files to which subfolder they pertence and move them to the right place. Something like this:

```
Z 
  adjectives [all adjectives starting with letter Z go to that folder]
  adverbs [all adverbs starting with letter Z go to that folder]
  interjection [...]
  ...

```

Result:

<img src="../imgs/result-organize-folder-script.png">


# Scan-machine

Script that extracts:

- Machine's name
- Actual date
- SO Installation's date
- Kernel version
- CPUs qty
- CPUs model
- Total available RAM
- Partitions

The results are displayed in command line.

# Basic Greetings

Display hour/minuts/seconds period info and changes phrase according to extracted data.

# Backup 

Create /home/user backup. If a recent backup exists (less than 7 days), a new copy is optional.
