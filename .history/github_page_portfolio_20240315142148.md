# Create an Online Portfolio with Git

Set up an online portfolio using GitHub (or Gitlab). An online portfolio provides an adaptable platform for sharing your work portfolio while demonstrating techincial savy with Git and HTML. All you need to get started is a [GitHub](github.com) account.

### Step 1: Create a new repository to host your webpage files

1. Sign-in to your account and navigate to your repository tab
    > <img src="https://github.com/ashejim/BSCS/blob/main/url_images/github_repo_tab.png?raw=true" height="50px" alt="repositoy tab button in GitHub"/>
2. Click the "New" button:
    > <img src="https://github.com/ashejim/BSCS/blob/main/url_images/github_repo_new.png?raw=true" height="50px" alt="green NEW button in GitHub" />

3. Give it name. The name will appear in the URL; so choose something appropiate. 
4. Click `Public`, `Add a README file`, and `Create a repository`.

Your new repository is ready.

### Step 2: Copy a Website

1. Look through these links and choose a website you like.
    - LINK
    - LINK
2. Download the websites files. Most websites will have a link to the owner's GitHub repositories. For others, you may need to search in GitHub. 
3. Find the repository associated with their page. It typically will have the format `https://<their_name>.github.io/<repository_name>/`
4. Download the files using the `code` button:
   > <img src="https://github.com/ashejim/BSCS/blob/main/url_images/github_code_button.png?raw=true" height="60px" alt="green CODE button in GitHub" />
5. Navigate back to your repository's page and upload the files:
   > <img src="https://github.com/ashejim/BSCS/blob/main/url_images/github_repo_upload.png?raw=true" height="70px" alt="UPLOAD files button in GitHub" />

### Step 3: Deploy the website

1. 

This can be done at any time, provided the folder selected as the GitHub page branch contains a `index.html` file.

1. 

### Make it Your Website

Now you need to edit the files to make it *your portfolio*, and then activate the site. 

<!-- See: [GitHub Pages](https://pages.github.com/) and select 'I don't know.'

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Setup a GitHub account
2. Setup a GitHub account

## Creating Your Own GitHub Webpage Through Terminal!

See [GitHub pages](https://pages.github.com/)

### What you need to get started...

1. Python 3 ($\geq 3.9$ recommended)
2. The [Jupyter-Book](https://pypi.org/project/jupyter-book/) & [ghp-import](https://pypi.org/project/ghp-import/) packages.
4. A [Markdown](https://www.markdownguide.org/) editor. 
5. A GitHub account and repository.

### Step 1. Getting Python.

Choose your flavor.
- [python.org](https://www.python.org/downloads/)
- [Anaconda](https://www.anaconda.com/products/distribution)

For a demonstration on this page, I'll use Anaconda because environments can be managed through a GUI; see [Python Environments Management in Anaconda Navigator](https://medium.com/cluj-school-of-ai/python-environments-management-in-anaconda-navigator-ad2f0741eba7). Creating a specialized Python environment is not required, but it is good practice. But if you're going to use Python for nothing else, you can probably skip this step.  

```{margin} What is a virtual environment? 
It's a tool that keeps dependencies required for different projects separate by creating isolated python virtual environments for them. This is one of the most important tools Python developers use. (TODO add GeekforGeek reference) See [Python Virtual Environment](https://www.geeksforgeeks.org/python-virtual-environment/) for more detals. 
```

### Step 2. Install the Required PackagesOpen a Windows terminal (or a terminal by launching CMD.exe from Anaconda Navigator.

**Install Jupyter-book** which converts markdown and Jupyter-notebook files into HTML.

`````{tab-set}
````{tab-item} pip
```{code-block} shell
pip install jupyter-book
```
````
````{tab-item} conda
```{code-block} shell
conda install -c conda-forge jupyter-book
```
````
`````

````{margin} Pip in Conda
Want to use pip and Anaconda?
```shell
conda install -c anaconda pip
```
Now you can 'pip' in conda. 
````

**Install git** (it should already be installed) so you can connect your local files to a GitHub repository.

`````{tab-set}
````{tab-item} pip
```{code-block} shell
pip install python-git
```
````
````{tab-item} conda
```{code-block} shell
conda install -c anaconda git
```
````
`````

**Install ghp-import** which will post your HTML files from your GitHub repository to the web.

`````{tab-set}
````{tab-item} pip
```{code-block} shell
pip install ghp-import
```
````
````{tab-item} conda
```{code-block} shell
conda install -c conda-forge ghp-import
```
````
`````

```{margin} Adding cool stuff
Check out all the cool UI stuff you can do: [JupyterBook UI elements](https://jupyterbook.org/en/stable/content/components.html#components-tabs).
```

### Step 3. Create a Jupyter-Book

Create a sample book by going to the directory and running the following command:

```shell
jupyter-book create mynewbook/
```

Where 'mynewbook/' is the name of the folder you want your Jupyter-book and all its source files to live (it will create the folder).

### Step 4. Add some content!

Your two main choices for adding content are  Markdown (.md) and Jupyter Notebook (.ipynb) files. The former is easier and great for most stuff. The latter is less easy but very flexible.

```{note}
The sample book created in step 3 includes both Markdown and Jupyter files.

```

Some Markdown editor options:

- [online editor](https://stackedit.io/app#)
- [Visual Studio Code](https://code.visualstudio.com/Docs/languages/markdown)
- [typora](https://typora.io/)

I use Visual Studio.

### Step 5. Turn your Markdown/Jupyter files into HTML.

This is why we need jupyter-book. Go to folder where your jupyter-book folder lives and type: 

```shell
jupyter-book build mynewbook
```
And that's it. You now have the web files. After building, you'll be provided with a local link. Copy and paste the link into your browser of choice to check it out. 

### Step 6. Move Your Web files to the Web!

You can put your web files wherever you like. I'll use GitHub.

1. Go to your GitHub account. 
2. Create a repository. 
3. Clone the repository to a local directory -this will be the directory linked to GitHub (use a different one than above unless you want to copy over it).  
4. Copy your book into the local repo clone.

```{margin} Jupyter Docs
See the [jupyter-book documentation](https://jupyterbook.org/en/stable/start/publish.html) for more details. 
```

```shell
cd directorywhereyouwantittobe
git clone https://github.com/<my-org>/<my-repository-name>
```
For example, 
```shell
cd github_book_repo
git clone https://github.com/ashejim/examplebook/
```

Now copy your built Jupyter book files into this new folder.  

```{warning}
What! You don't have a GitHub account? Well getting one is free and easy. As long as its public, your repos and webpages will also be free.  
```
A GitHub repository is a great place to put all kinds of stuff. 

### Step 7. Sync your local repo to the GitHub repository. 

```shell
cd directorywhereyouwantittobe/mynewbook
git add ./*
git commit -m "a message is optional, but helpful."
git push
```

### Step 8. Sync your book to a GitPage. 
In the same folder:

```shell
ghp-import -n -p -f _build/html
```

Wait a few minutes and go to:

```shell
https://<user>.github.io/<myonlinebook>/
``` 
(you can copy and paste the new site name from the terminal output.)

```{margin} GitHub Pages Docs
See the [Github Pages Doc](https://docs.github.com/en/pages/getting-started-with-github-pages/unpublishing-a-github-pages-site) for more (and better) details.
```

Congratulations! You have a website!

#### Edit your page

some change
Hey, here's a ***mistake.***


bullets points
- ggg
- fff

1. [Google](google.com)
2. numbering stuff.

Add links
```markdown
[Google](google.com)
```

#### Headings

Here's a link to a [video](https://wgu.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=8bb97182-1e41-4b6f-9218-ad9201579ada&autoplay=false&offerviewer=true&showtitle=true&showbrand=true&captions=true&interactivity=all)


Here's an embedded video:
<iframe 
    src="https://wgu.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=8bb97182-1e41-4b6f-9218-ad9201579ada&autoplay=false&offerviewer=true&showtitle=true&showbrand=true&captions=true&interactivity=all" 
    title="C964 Overview" 
    width="640px"
    height="360px"
    style="border: 1px solid #464646;" 
    allowfullscreen allow="autoplay"
>
</iframe>

The html code can be obtained through Panopto's editing page:
```html
<iframe 
    src="https://wgu.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=8bb97182-1e41-4b6f-9218-ad9201579ada&autoplay=false&offerviewer=true&showtitle=true&showbrand=true&captions=true&interactivity=all" 
    title="C964 Overview" 
    width="640px"
    height="360px"
    style="border: 1px solid #464646;" 
    allowfullscreen allow="autoplay"
>
</iframe>
``` -->