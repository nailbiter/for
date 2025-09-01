## disclaimer
some code in this folder is adapted from the course https://academy.langchain.com/courses/take/intro-to-langgraph/lessons/58238107-course-overview and may be the intellectual property of the authors of that
course. Beware when copying

## setup
* `git clone https://github.com/langchain-ai/langchain-academy.git`
* ensure python 3.11
* setup venv

```sh
pip install -r langchain-academy/requirements.txt
pip install ipykernel ipywidgets GitPython python-dotenv jupyter-black
python -m ipykernel install --user --name=venv-20250901-first-langchain-course
```

## staring `LangGraph Studio`

From `20250901-first-langchain-course` folder run

```sh
langgraph dev --config langchain-academy/module-1/studio/langgraph.json
```

and open http://127.0.0.1:2024
