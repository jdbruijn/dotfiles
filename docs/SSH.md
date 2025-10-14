# SSH <!-- omit in toc -->

- [Create a new key](#create-a-new-key)
  - [Create a new key with **Secretive**](#create-a-new-key-with-secretive)
  - [Create a new key with `ssh-keygen`](#create-a-new-key-with-ssh-keygen)
- [Add the key to **GitHub**](#add-the-key-to-github)
- [Add the key to a remote server](#add-the-key-to-a-remote-server)

# Create a new key

On macOS, [Create a new key with **Secretive**](#create-a-new-key-with-secretive) would generally be the recommended way to manage your SSH keys. On other systems use [Create a new key with `ssh-keygen`](#create-a-new-key-with-ssh-keygen) to manage the keys in the user's `.ssh` folder. On macOS you can of course also do this, which might be useful if you already have SSH keys that you want to share across different machines, in a secure manner of course.

> [!TIP]
> On macOS, [**Secretive**][secretive] could also be combined with keys in the user's `~/.ssh` folder. In these dotfiles the `SSH_AUTH_SOCK` environment variable is set to [**Secretive**][secretive]'s socket on macOS. For convenience, the original value is copied to the `DOTFILES_SSH_AUTH_SOCK` environment variable. Using the [Custom **Zsh** configurations](/README.md#custom-zsh-configurations), you could use that to revert the `SSH_AUTH_SOCK` back to its original value.
>
> If combined with keys in the user's `~/.ssh` folder, set the `IdentityFile` parameter in the `~/.ssh/config` file to path to the key from the `~/.ssh` folder you want to use. You will be asked for the passphrase each time the key is used since the keys can't be added to the SSH agent using [**Secretive**][secretive]'s socket.

## Create a new key with [**Secretive**][secretive]

If you're using macOS you can use [**Secretive**][secretive] to manage your SSH keys in the Mac's Secure Enclave. Create a new SSH key using the following steps.

1. Open the [**Secretive**][secretive] App.
2. Click on the _+_ icon in the top right to add an SSH key.
3. In the `Name` field, enter a recognisable name for the key, e.g. `GitHub`.
4. In the `Protection Level` field, select `Notify`.  
   You could also keep the default value of `Require Authentication`, which means you will be required to authenticate using Touch ID, Apple Watch or password before each use. Keep in mind that package manager tools can perform many [**Git**][git] actions during upgrade, where you could have to authenticate many times. For me personally, the `Notify` level is acceptable since the key is already in the Secure Enclave and that in turn is only unlocked when you enter your password or use Touch ID to unlock your Mac.
5. In the `Key Attribution` field under the _Advanced_ menu, enter your email, e.g. `amoore@example.com`.
6. Click _Create_ to create the key.

In the [**Secretive**][secretive] key overview, you can see the _Public Key_ and the _Public Key Path_ values. The public key can be shared, and will be used by other services like [**GitHub**][github] and remote servers to verify your connection.

<details><summary>Public Key example</summary>

```
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBA2ca7k2rWbNamEBcvG6KB5RGxCKe97eOFHJZIrDMWeEK8waGI3hkVi+y5y54npskX2u6bZdeAv2WmYcicbLIZM= amoore@example.com
```

</details>

<details><summary>Public Key Path example</summary>

```
/Users/AlanMoore/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/PublicKeys/235a48cf4c72686b5887261b00a90dbc.pub
```

</details>

## Create a new key with `ssh-keygen`

Create a new SSH key with the following command. This uses the Ed25519 algorithm and outputs the public and private keys in `~/.ssh/id_ed25519.pub` and `~/.ssh/id_ed25519`, respectively.

> [!CAUTION]
> The secret key should be kept in a secure place and never shared. If you keep a backup of the private key, keep it in a secure place. This can, for example, be in a secure [**VeraCrypt**](https://veracrypt.jp/) container on cloud service, like Google Drive, or a USB drive.

```sh
ssh-keygen -t ed25519 -C amoore@example.com -f ~/.ssh/id_ed25519
```

Export the public key using the following command. This public key can be shared, and will be used by other services like [**GitHub**][github] and remote servers to verify your connection.

```sh
cat ~/.ssh/id_ed25519.pub
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
3. In the `Title` field, enter a recognisable name for the key, e.g. `personal MacBook`. [**GitHub**][github] also shows the fingerprint in the _SSH keys_ overview, so no need to include that in the title.
4. In the `Key type` field, select `Authentication Key`.
5. In the `Key` field, copy the **public** key that was exported above.

To use the SSH key for communication with [**GitHub**][github], it needs to be added to the SSH config and.

If you have multiple SSH keys, you might want to edit the `~/.ssh/config` file and add something like the following section. This will let the [**Git**][git] command, and others, know what SSH configuration to use for `github.com`. If you're using [**Secretive**][secretive], the value for the `IdentityFile` is the _Public Key Path_ shown by [**Secretive**][secretive] for the specific key.

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

With these settings [**GitHub**][github] is able to validate who we are using the SSH key. However, we haven't validated [**GitHub**][github] yet. Use the following command to connect to `github.com` using SSH. With the `-v` flag added, you can also see which SSH keys are tried and which key is used for authentication.

```sh
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
[secretive]: https://secretive.dev/
