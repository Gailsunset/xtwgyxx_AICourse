002_Github Debug Recode.md


### 210318 
# 错误名称
> SSL_connect: SSL_ERROR_SYSCALL in connection to github.com:443

## 解决方案
Same problem here, it turned out to be my incorrectly configured proxy settings, here's how to check and remove them.

First open your git config file.

```python 
vi ~/.gitconfig
```
and find out whether the [http] or [https] sections are set.

I used to set proxies for git due to slow access to Github in China, however, lately I changed my local proxy ports but I forgot my git settings.

If you have incorrect proxy settings and decide to remove it, simply execute:
```python
git config --global --unset http.proxy
git config --global --unset https.proxy
```
Things will work just fine.


# 210319
### 问题描述
fatal: unable to access 'https://github.com/xxx': OpenSSL SSL_connect: SSL_ERROR_SYSCALL in connection to github.com:443

```python
git config --global --add remote.origin.proxy "127.0.0.1:(proxy http port number)"
```
- 底下有很多图片，正好使用了clash的端口，于是我也用了。遂解决问题。

* [stackoverflow](https://stackoverflow.com/questions/49345357/fatal-unable-to-access-https-github-com-xxx-openssl-ssl-connect-ssl-error)