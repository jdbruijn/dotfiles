# SSH <!-- omit in toc -->

- [Create a new key](#create-a-new-key)
- [Add the key to **GitHub**](#add-the-key-to-github)
- [Add the key to a remote server](#add-the-key-to-a-remote-server)

# Create a new key

Create a new SSH key with the following command. This uses the Ed25519 algorithm and outputs the public and private keys in `~/.ssh/id_ed25519.pub` and `~/.ssh/id_ed25519`, respectively.

> [!CAUTION]
> The secret key should be kept in a secure place and never shared. If you keep a backup of the private key, keep it in a secure place. This can, for example, be in a secure [**VeraCrypt**](https://veracrypt.jp/) container on cloud service, like Google Drive, or a USB drive.

```shell
ssh-keygen -t ed25519 -C amoore@example.com -f ~/.ssh/id_ed25519
```

Export the public key using the following command. This public key can be shared, and will be used by other services like [**GitHub**][github] and remote servers to verify your connection.

```shell
cat ~/.ssh/id_ed25519
```

<details><summary>Public key example</summary>

```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGts4YCwYfHOpwrH6v32k9rG69GAdFokzVy7OrAnVLEz amoore@example.com
```

</details>

# Add the key to [**GitHub**][github]

If you're using [**GitHub**][github], you also need to add the public key there. To do this, follow the steps described in the [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) page from the [**GitHub**][github] documentation. In short, this boils down the the following steps.

1. Go to your user settings.
2. In the _SSH and GPG keys_ section, click on _New SSH key_.
3. In the `Title` field, enter a recognisable name for the key, e.g. `personal MacBook`. [**GitHub**][github] also shows the fingerprint in the SSH keys\_ overview, so no need to include that in the title.
4. In the `Key type` field, select `Authentication Key`.
5. In the `Key` field, copy the **public** key that was exported above.

To use the SSH key for communication with [**GitHub**][github], it needs to be added to the SSH config and.

Edit the `~/.ssh/config` file and add the following section. This will let the [**Git**][git] command, and others, know what SSH configuration to use for `github.com`.

```
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
```

Set [`url.<base>.insteadOf`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-urlbaseinsteadOf) in the `.gitconfig` file to rewrite URLs to use SSH.

> [!TIP]
> If you're using these dotfiles, make sure to use the `~/.gitconfig.local` file.

```ini
[url "ssh://git@github.com/"]
  insteadOf = https://github.com/
```

With these settings [**GitHub**][github] is able to validate who we are using the SSH key. However, we haven't validated [**GitHub**][github] yet. Use the following command to connect to `github.com` using SSH.

```shell
ssh -T git@github.com
```

If this is the first time we connect to [**GitHub**][github], this will show something like the following warning message. When you see this, validate the fingerprint is one of [GitHub's SSH key fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints) and type `yes` to confirm. Once confirmed, the public key of `github.com` is be added to the `~/.ssh/known_hosts` file. It won't ask to verify the authenticity again unless `github.com` presents a different public key, which would potentially be malicious.

```
The authenticity of host 'github.com (140.82.121.4)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

# Add the key to a remote server

Adding a key to a remote server might depend on the specific system. On most Linux-based systems, simply add the **public** key to the `~/.ssh/authorized_keys` file of the server.

[git]: https://git-scm.com/
[github]: https://github.com/
