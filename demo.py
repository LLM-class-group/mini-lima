from qwen_self_instruct.api.qwen_sft_api import response
from qwen_self_instruct.api.qwen_0__5B_api import response as response2

if __name__ == '__main__':
    prompt = "If i have 5 apples and want to share them equally with 3 friends, how many apples will each friend get?"
    length = 32
    output = response(prompt, length)
    output2 = response2(prompt, length)
    print("After:")
    print(output)
    print("Before:")
    print(output2)
