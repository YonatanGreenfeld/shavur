import subprocess

my_new_domain = "jit.io"

output = subprocess.check_output(
    f"nslookup2 {my_new_domain}",
    shell=True,
    encoding="UTF-8",
)


output1 = subprocess.check_output(f"nslookup2 {my_new_domain}", shell=True, encoding="UTF-8")
