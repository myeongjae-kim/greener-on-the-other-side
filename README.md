# greener-on-the-other-side
Repository for a commit for every single day

## Instruction

Install `expect`
```bash
sudo yum -y install expect
```

Generate a script to run `commit.sh`.

```sh
#!/bin/sh
cd /home/your-account/greener-on-the-other-side
./commit.sh github-id github-password
```

Then `commit.sh` will push a commit for your repository.

Register `run.sh` to the crontab

```
00 17 * * * /home/your-account/greener-on-the-other-side/run.sh
```

It will push a commit to your repository every single day at 5PM.

## References

- [리눅스 크론탭 사용법](https://jdm.kr/blog/2)
- [Bash 스크립트에 expect 스크립트 넣기](https://zetawiki.com/wiki/Bash_스크립트에_expect_스크립트_넣기)
