# [**Git**][git] <!-- omit in toc -->

# Signing [**Git**][git] commits and tags

To use the GPG or SSH key to sign [**Git**][git] commits and tags, we need to let [**Git**][git] know about this key. To do this, set the key ID or _Public Key Path_ as the [`user.signingKey`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-usersigningKey) and set [`commit.gpgSign`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-commitgpgSign) and [`tag.gpgSign`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-taggpgSign) to `true` in the `.gitconfig` file. These options are shown in the following, stripped down, `.gitconfig` as an example for both GPG and SSH.

> [!TIP]
> If you're using these dotfiles, make sure to use the `~/.gitconfig.local` file.

```ini
[commit]
  gpgSign = true
[gpg]
  format = ssh
[tag]
  gpgSign = true
[user]
  email = amoore@example.com
  signingKey = /Users/AlanMoore/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/PublicKeys/35fee608a4a091553bd6dd91053c347b.pub
```

<details><summary>Example using GPG</summary>

```ini
[commit]
  gpgSign = true
[tag]
  gpgSign = true
[user]
  email = amoore@example.com
  signingKey = 06B4B8C3D53C9037
```

</details>

If you're using [**GitHub**][github], you also need to add the public key there so it can verify the commits and tags. To do this, follow the steps described in the [Adding a GPG key to your GitHub account](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account) or [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) page from the [**GitHub**][github] documentation. In short, this boils down the the following steps.

> [!NOTE]
> The [`user.email`](https://git-scm.com/docs/git-config#Documentation/git-config.txt-useremail) in your `.gitconfig` should be the same email as the GPG key. Additionally, this email must be registered on [**GitHub**][github].

1. Go to your user settings.
2. In the _SSH and GPG keys_ section, click on _New SSH key_ or _New GPG key_, depending on whether you're using SSH or GPG for signing.
3. In the `Title` field, enter a recognisable name for the key, e.g. `personal MacBook`. [**GitHub**][github] also shows the key ID in the _GPG keys_ or fingerprint in the _SSH keys_ overview, so no need to include that in the title.
4. If you're using an SSH key for [**Git**][git] signing, in the `Key type` field, select `Signing Key`.
5. In the `Key` field, copy the **public** key that was exported from [Generate your GPG key](./GPG.md#generate-your-gpg-key) or [Create a new key](./SSH.md#create-a-new-key).

[git]: https://git-scm.com/
[github]: https://github.com/
[secretive]: https://secretive.dev/
