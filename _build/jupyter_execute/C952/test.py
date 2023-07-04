#!/usr/bin/env python
# coding: utf-8

# # Test and demonstration notebook for Javascript quiz tool
# 
# This notebook tests and demonstrates the jupyterquiz library and its use. It draws from a set of example questions that show the supported capabilities of the jupyterquiz library.
# 
# In particular, this notebook also serves to test different ways for the library to load questions:
# 1. **From a URL:** This is the preferred approach. It will embed a copy of the questions in your Jupyter notebook (and Jupyter book), but it will also try to load the latest version of the questions from the URL via Javascript at page load time. If the questions cannot be loaded from the URL, the stored versions will be used as a fallback.
# 2. **From a JSON File:** This may be more convenient for local testing.
# 3. **From a Python Dict:** This is probably the best path for testing new questions because they can be added and tested within a Jupyter notebook.
# 
# jupyterquiz supports drawing a random subset of questions, and that is also tested.

# In[1]:


from jupyterquiz import display_quiz

git_path="https://raw.githubusercontent.com/jmshea/jupyterquiz/main/examples/"


# ## Test all question types, standard URL loading method:

# In[2]:


display_quiz(git_path+"questions.json")


# Using the 'fdsp' color scheme:

# In[3]:


display_quiz(git_path+"questions.json", colors='fdsp')


# # Test loading all questions from file and customizing individual colors:

# In[4]:


display_quiz("examples/questions.json", 
             colors={
               '--jq-many-choice-bg': '#224dea',
               '--jq-multiple-choice-bg': '#a45995'
             }
            )


# # Test loading questions from dict (this is for more rapid question generation and testing) and changing border radius for "flat" look:

# In[5]:


import json
with open("examples/questions.json", "r") as file:
    questions=json.load(file)
    
display_quiz(questions,  border_radius=0)


# In[6]:


# #Leave this here for when doing question development

# import json
# with open("examples/questions.json", "w") as file:
#     json.dump(questions, file, indent=4)


# ## Test sampling from questions:

# In[7]:


display_quiz(git_path+"questions.json",2)


# In[8]:


github_preview=[questions[0]]+[questions[2]]


# In[9]:


display_quiz(github_preview)


# # Test custom border radius, question alignment, max_width

# In[10]:


display_quiz(git_path+"questions.json", border_radius=0, question_alignment='center', max_width=1000)

