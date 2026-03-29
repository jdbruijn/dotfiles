# GPG <!-- omit in toc -->

[**GPG**][gpg], also known as [**GnuPG**][gpg], is a common tool for encrypting and signing sensitive data.

- [**GPG** keys](#gpg-keys)
  - [Generate a **GPG** key](#generate-a-gpg-key)
  - [Export a public key](#export-a-public-key)
  - [Export a secret key](#export-a-secret-key)
  - [Generate revocation certificates](#generate-revocation-certificates)
  - [Import a key into the keyring](#import-a-key-into-the-keyring)
  - [Remove a key from the keyring](#remove-a-key-from-the-keyring)
- [Encrypt a file](#encrypt-a-file)
- [Decrypt a file](#decrypt-a-file)

# [**GPG**][gpg] keys

The [**GPG**][gpg] key is a cryptographic pair of public and private (secret) keys, and can be used to encrypt, decrypt and sign data.

## Generate a [**GPG**][gpg] key

Generate a [**GPG**][gpg] key, interactively, using the following command abd enter the following information.

```sh
gpg --full-generate-key
```

- Please select what kind of key you want: `ECC (sign and encrypt)`.
- Please select which elliptic curve you want: `Curve 25519`.
- Please specify how long the key should be valid: `0` (the key does not expire).
- Real name: enter your name, for example `Alan Moore`.
- Email address: enter your email, for example `amoore@example.com`.
- Comment: enter a comment explaining the key's usage, if needed.
- Passphrase: generate something strong, for example using the `openssl rand -base64 24` command, and store it in the password manager.

The long key ID and the fingerprint of the generated key are logged after the key is created and are used to identify the key. In the rest of this document, `06B4B8C3D53C9037` is used as the key ID.

<details><summary>Fingerprint and key ID</summary>

In this example the key ID is 06B4B8C3D53C9037 and the fingerprint is F587 57F4 1B4F 5D2B 30FB B376 06B4 B8C3 D53C 9037.

```
pub   ed25519/06B4B8C3D53C9037 2025-09-13 [SC]
      Key fingerprint = F587 57F4 1B4F 5D2B 30FB  B376 06B4 B8C3 D53C 9037
uid                 [ultimate] Alan Moore <amoore@example.com>
sub   cv25519/74BF2268D4468146 2025-09-13 [E]
```

</details>

## Export a public key

Export a public key using the following command, exporting directly into the `06B4B8C3D53C9037-public.asc` file.. This key is public information and can therefore be safely shared with anyone.

```sh
gpg --armor --export --output 06B4B8C3D53C9037-public.asc 06B4B8C3D53C9037
```

<details><summary>Public key example</summary>

```
-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEaMXCSBYJKwYBBAHaRw8BAQdA71YnGIYHbIJS/d2p66J9X8X6pEezU8+zKsJY
CGeWKTa0H0FsYW4gTW9vcmUgPGFtb29yZUBleGFtcGxlLmNvbT6IkwQTFgoAOxYh
BPWHV/QbT10rMPuzdga0uMPVPJA3BQJoxcJIAhsDBQsJCAcCAiICBhUKCQgLAgQW
AgMBAh4HAheAAAoJEAa0uMPVPJA3XK0A/AsGADUCGsK0d8CJs2KnsbXittV9fWoI
YY4jFprgnRNYAQCcTZjsz/BIexOQlzvtHELiDtg51SHMg8rUfJWab0P2Crg4BGjF
wkgSCisGAQQBl1UBBQEBB0BVHvtXvq8qZGczfZDyVyJvvE5qIa6vzwEXeSEz0BHV
DwMBCAeIeAQYFgoAIBYhBPWHV/QbT10rMPuzdga0uMPVPJA3BQJoxcJIAhsMAAoJ
EAa0uMPVPJA31k4BAOarT0SA+oThfebc5tO1R2ovZcEQX3NQP17keQVCDB0iAP95
epiF+owiJwr+uQN0z4MRKgkKbUIEwgVgOvDtia26Bw==
=ybvJ
-----END PGP PUBLIC KEY BLOCK-----
```

</details>

## Export a secret key

> [!CAUTION]
> Always keep the secret key and the revocation certificate in a secure place. This can, for example, be in a secure [**VeraCrypt**](https://veracrypt.io/) container on cloud service, like Google Drive, or a USB drive.

To prevent your keys from getting lost, it's recommended to backup both the secret key and a revocation certificate in a secure place.

Export a secret key using the following command, exporting directly into the `06B4B8C3D53C9037-secret.asc` file.

```sh
gpg --armor --export-secret-key --output 06B4B8C3D53C9037-secret.asc 06B4B8C3D53C9037
```

<details><summary>Secret key example</summary>

```
-----BEGIN PGP PRIVATE KEY BLOCK-----

lIYEaMXCSBYJKwYBBAHaRw8BAQdA71YnGIYHbIJS/d2p66J9X8X6pEezU8+zKsJY
CGeWKTb+BwMCwXdzWp/srh/9njYV89q8lr9Z0uEa/CXH9Wv+M6NRcZtoqtjmnEdD
3loY6V7SR0WcpjXVOkFV8hHQhEb2BySwU0bJBsW+qb1DkluqvCy2MrQfQWxhbiBN
b29yZSA8YW1vb3JlQGV4YW1wbGUuY29tPoiTBBMWCgA7FiEE9YdX9BtPXSsw+7N2
BrS4w9U8kDcFAmjFwkgCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQ
BrS4w9U8kDdcrQD8CwYANQIawrR3wImzYqexteK21X19aghhjiMWmuCdE1gBAJxN
mOzP8Eh7E5CXO+0cQuIO2DnVIcyDytR8lZpvQ/YKnIsEaMXCSBIKKwYBBAGXVQEF
AQEHQFUe+1e+rypkZzN9kPJXIm+8Tmohrq/PARd5ITPQEdUPAwEIB/4HAwL6tY2L
0eLqvf2e8Qj+NtdTjVTPyiOIDBXWcSCFsdUeOCcWaLS6sdRW4FcWXAsqjvH+fhL+
6TqzpyMQCFmH1oN7gRI+vsElo/U2rqU8EGYNiHgEGBYKACAWIQT1h1f0G09dKzD7
s3YGtLjD1TyQNwUCaMXCSAIbDAAKCRAGtLjD1TyQN9ZOAQDmq09EgPqE4X3m3ObT
tUdqL2XBEF9zUD9e5HkFQgwdIgD/eXqYhfqMIicK/rkDdM+DESoJCm1CBMIFYDrw
7Ymtugc=
=PGDd
-----END PGP PRIVATE KEY BLOCK-----
```

</details>

## Generate revocation certificates

> [!CAUTION]
> Always keep the secret key and the revocation certificate in a secure place. This can, for example, be in a secure [**VeraCrypt**](https://veracrypt.io/) container on cloud service, like Google Drive, or a USB drive.

Create the revocation certificate, interactively, using the following command. It will ask for a reason, which we of course don't have at this point in time. You can create a revocation certificate with no reason specified, or even create one for each reason.

```sh
gpg --armor --generate-revocation --output 06B4B8C3D53C9037-revoke.asc 06B4B8C3D53C9037
```

<details><summary>Revocation certificate example</summary>

```
-----BEGIN PGP PUBLIC KEY BLOCK-----
Comment: This is a revocation certificate

iHgEIBYKACAWIQT1h1f0G09dKzD7s3YGtLjD1TyQNwUCaMaM2AIdAAAKCRAGtLjD
1TyQN6pUAQC1DeapqxC8hzQyYs8yhwsL59aN/3Joi2de0zOGaQOggQEAm1j6sboO
UnSi4oJ6v/HTsBsJG8I9AmZ3tbH0CvGEnQ8=
=mhWf
-----END PGP PUBLIC KEY BLOCK-----
```

</details>

## Import a key into the keyring

[**GPG**][gpg] stores the keys in its keyring. For restoring a key, use the following command to import the keys from [Export a public key](#export-a-public-key) and [Export a secret key](#export-a-secret-key) into the keychain. To import a public key, for example to use it to encrypt data, simply provide just the public key file.

```sh
gpg --import ./06B4B8C3D53C9037-public.asc 06B4B8C3D53C9037-secret.asc
```

## Remove a key from the keyring

[**GPG**][gpg] stores the keys in its keyring. For security reasons, for example in case of a highly sensitive key used for backups, removing a key could benefit security. Using the following command a key can be removed from the keyring.

> [!CAUTION]
> This deletes the secret and public key. Without the exported secret and public keys, the key and its trust is permanently lost. Therefore, make sure you have the files from [Export a public key](#export-a-public-key) and [Export a secret key](#export-a-secret-key) securely stored somewhere.

```sh
gpg --delete-secret-and-public-key 2CCAB25D3BBE3651
```

# Encrypt a file

Encrypt a file, `test.txt` in this example, using the following command. The `--recipient` option specifies the key ID to encrypt the file with. Only the person with the secret key of that key can decrypt the file.

```sh
gpg --encrypt --output test.txt.gpg --recipient 06B4B8C3D53C9037 test.txt
```

When encrypting a file in CI/CD or on a server, the key is most likely not in the agent but in a file. In that case the following command can be used to specify the key using a file.

```sh
gpg --encrypt --output test.txt.gpg --recipient-file 2CCAB25D3BBE3651-public.asc --yes test.txt
```

# Decrypt a file

> [!TIP]
> The `gpg --list-packets --pinentry-mode cancel test.txt.gpg` command can be used to show the recipient of the encrypted file, i.e. the public key it was encrypted with.

Decrypt a file, `test.txt.gpg` in this example, using the following command. [**GPG**][gpg] can only decrypt using a file in its keystore. To use a key from a file, first [Import a key into the keyring](#import-a-key-into-the-keyring).

```sh
gpg --decrypt --output test.txt test.txt.gpg
```

[gpg]: https://www.gnupg.org/
