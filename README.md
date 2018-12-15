# greener-on-the-other-side
Repository to automatically push a commit for every single day.

## Instruction

Install `expect`
```bash
sudo yum -y install expect
```

Generate `run.sh` to run `commit.sh`. The `.gitignore` has `run.sh`, so `run.sh` will not be added to your repository.

```sh
#!/bin/sh
cd /home/your-account/greener-on-the-other-side
./commit.sh github-id github-password line-notify-token
```

Then `commit.sh` will push a commit for your repository. To get `line-notify-token`, see [LINE-Notify bot](https://notify-bot.line.me/en/).

Register `run.sh` to the `crontab`.

```
00 08 * * * /home/your-account/greener-on-the-other-side/run.sh
```

It will push a commit to your repository every single day at 8AM of UCT (5PM of KST).

## References

- [리눅스 크론탭 사용법](https://jdm.kr/blog/2)
- [Bash 스크립트에 expect 스크립트 넣기](https://zetawiki.com/wiki/Bash_스크립트에_expect_스크립트_넣기)
