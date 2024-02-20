# prompt-paradigm-project

For this project, you will need the following tools:
- [promptfoo](https://github.com/promptfoo/promptfoo)

For local models, I recommend the [Ollama](https://ollama.com/) library.

## Prerequisites

Before cloning this repository and starting tests, ensure you have met the following prerequisites:

- **OpenAI Account**: Necessary for using model-graded assertion types in this repository. We utilize GPT-4-turbo to grade the output of test cases.
- **Node.js**: The `promptfoo` tool used in this repository operates on Node.js. Ensure Node.js is installed on your local machine.
- **Environment Variables**: After setting up your OpenAI account, you should add your OpenAI key to an environment file. Refer to the `.env.example` file in this repository as a guide.
- **Ollama Library**: For tasks that involve local models, such as those in the grammar improvement directory of this repo, the Ollama library is required. Download the necessary models, create the Ollama config, and then upload these configurations to your Ollama local instance. For more details, consult the Ollama documentation.
- **Shell Script (Optional)**: There is a shell script available that automates the calling of use case numbers based on the stage of the engineering workflow. This is optional, as you can directly use the `promptfoo` CLI. If you opt to use the shell script, it can be executed directly by passing the use case number as the first parameter, e.g., `./run_eval.sh 1`.

**Note**: This repository has been tested on **Ubuntu 22.04**. If you're using a different operating system and encounter issues, the shell script may not work as expected. Please feel free to open a pull request if you find a workaround or fix.


## Overview
This guide aims to help developers and researchers craft prompts to achieve better outcomes from AI models, especially in scenarios where the nuanced wording of prompts plays a crucial role in the output generated. (which happens on smaller models)

Prompt engineering is an essential technique for guiding AI models, particularly language models, to generate desired outputs. The effectiveness of a prompt can vary significantly across different models, making it crucial to approach prompt creation in a structured and experimental manner. This guide outlines a methodology for crafting, testing, and refining prompts.

### Creating Base Prompts
Start by drafting a base prompt that encapsulates your instruction or question to the AI. The phrasing and structure of your base prompt can greatly influence the model's output. Experiment with different approaches:

- Friendly vs. formal tone
- List vs. paragraph format
- Including examples and separators

Remember, not all models will interpret your instructions as intended. Smaller models might not grasp complex contexts but can often follow straightforward patterns.

### Testing and Refinement Sample Workflow
1. **Create a Base Text for the Base Prompt**: Start by crafting a base prompt. The content and style of this base prompt can vary depending on the specific use case. This step involves exploring different ways to instruct an AI model, recognizing that the wording of instructions can significantly influence the model's output. See `base.txt`.
    
2. **Generate a YAML File with Base Prompts**: Once you have a collection of base prompts, compile them into a YAML file for structured testing. See `promptfooconfig_test_1.yaml`.
    
3. **Conduct Initial Testing with Varied Inputs**: Begin with a basic test involving three distinct inputs to avoid overlapping results and gain a broad understanding of the model's performance.
    
4. **Generate and Test Additional Prompts**: After selecting the best prompt from the initial testing, create and test additional prompts to examine the impact of formatting changes on the model's output. See `base_formats.txt` and `promptfooconfig_test_2.yaml`.
    
5. **Refine Prompt Selection Based on Formatting and Output**: Select prompts that are well-formatted and effective in generating the desired output, based on the last two tests. Create a new file, `base_winner.txt`, selected from the last two tests, and test it with different models and temperatures.
    
6. **Compare Different Models Using a Consistent Temperature Setting**: Test various models with the same temperature setting to identify the most suitable large language model (LLM) for your use case. See `promptfooconfig_test_3.yaml`.
    
7. **Select and Test the Optimal Temperature for the Chosen Model**: After choosing the best model, experiment with different temperature settings to find the optimal configuration for your needs. See `promptfooconfig_test_4.yaml`.
    
8. **Finalize the Best Model, Temperature, and Base Prompt**: Conclude the process by selecting the best combination of model, temperature, and base prompt that suits your use case.
    
9. **Evaluate the Need for Advanced Prompting Techniques**: In the final step, assess whether advanced prompting techniques (e.g., few-shot examples, system prompt variation, chain of thought) are necessary to enhance the AI checker's performance based on the latest model updates and testing results. See `promptfooconfig_test_5.yaml` and `base_winner_few_shots.txt` for sample files.

### Practical Tips
- Use larger models like GPT-4 for brainstorming or enhancing your prompts, as they have a better grasp of nuanced instructions.