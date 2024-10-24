<h1 align="center">prompts</h1>
<p align="center">
  <a href="https://www.clipboardhealth.com/"><img alt="Clipboard Health logo." src="./static/logo.png"></a>
</p>

Clipboard Health's collection of prompts to assist LLMs in generating code adhering to our best practices.

## Table of contents <!-- omit from toc -->

- [Usage](#usage)
- [Directory structure](#directory-structure)
- [Attribution](#attribution)

## Usage

```bash
# Add this repo as a submodule to your project
git submodule add git@github.com:ClipboardHealth/prompts.git

# Create a symlink to an appropriate rules file in the current directory
ln -s ./prompts/rules/fullStack.md .cursorrules
```

When prompting LLMs, `@` reference the prompts by name. For example, `@_test.md @myFile.ts` writes tests for `myFile.ts`. See [@ Symbols](https://docs.cursor.com/context/@-symbols/basic) for details.

## Directory structure

- **fragments/**
  - Reusable prompt fragments that `./combine.sh` concatentates into complete prompts or rules.
- **prompts/**
  - Provided to LLMs to generate best practice code. Start names with `_` for easy `@` references. See examples in [Usage](#usage).
  - **beta/**
    - Ideally, you'll get reliable results before adding prompts to this repository, but sometimes it's nice to iterate across various domains. Use this folder for the latter.
- **rules/**
  - Custom instructions provided in every prompt. See a symlink example in [Usage](#usage) and Cursor's [Rules for AI](https://docs.cursor.com/context/rules-for-ai) for details.

## Attribution

- Our rules are a combination of those in [Cursor Directory](https://cursor.directory/).
- `_chainOfThought.md` is from [r/cursor](https://www.reddit.com/r/cursor/comments/1fqcdkt/i_initiated_instructions_and_used_them_to_edit/).
- `_commitMessage.md` (which heavily inspired `_prCreate.md`) is from [dgokcin/dotfiles](https://github.com/dgokcin/dotfiles/blob/main/ai-stuff/cursor/prompts/create-commit/system.md).
- `_proofread.md` is from [r/ChatGPTPromptGenius](https://www.reddit.com/r/ChatGPTPromptGenius/comments/1bq212c/3_chatgpt_megaprompts_i_use_daily_to_save_tons_of/).
- `_reasoning.md` is from [philschmid/prompt.txt](https://gist.github.com/philschmid/34747bf5bc8280f3a5f10f5fd8d1cd4b).
- [Anthropic's prompting courses](https://github.com/anthropics/courses).
