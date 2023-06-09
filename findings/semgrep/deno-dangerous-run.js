// @ts-nocheck

async function okTest() {
  const p = Deno.run({
    cmd: ["echo", "hello"],
  });

  await p.status();
}

async function test1(userInput) {
// ruleid: deno-dangerous-run
  const p = Deno.run({
    cmd: [userInput, "hello"],
    stdout: "piped",
    stderr: "piped",
  });

  await p.status();
}

async function test1(userInput) {
// demo
// ruleid: deno-dangerous-run
  const p = Deno.run({
    cmd: ["bash", "-c", userInput],
    stdout: "piped",
    stderr: "piped",
  });

  await p.status();
}
