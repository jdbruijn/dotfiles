# GPG <!-- omit in toc -->

- [Generate your GPG key](#generate-your-gpg-key)
- [Secret key and revocation certificate](#secret-key-and-revocation-certificate)

# Generate your GPG key

Create a new GPG key, interactively, using the following command. For most purposes, the default options are good to use.

```sh
gpg --full-generate-key
```

At the time of writing, September 2025, these were the default options.

- Cryptographic algorithm: `ECC (sign and encrypt)`.
- Elliptic curve: `Curve 25519`.
- Key is valid for: `0` (does not expire).

Show the fingerprint and key ID using the following command. A lot of commands use the key ID to specify the key, so it's useful to have this on hand. The key ID is the hexadecimal characters after the cryptographic algorithm in the `pub` section and is just the last sixteen characters of the fingerprint, without spaces. In the rest of the document we'll use `06B4B8C3D53C9037` as an example of the key ID.

```sh
gpg --fingerprint --keyid-format=long
```

<details><summary>Fingerprint and key ID example</summary>

In this example the key ID is `06B4B8C3D53C9037` and the fingerprint is `F587 57F4 1B4F 5D2B 30FB  B376 06B4 B8C3 D53C 9037`.

```sh
pub   ed25519/06B4B8C3D53C9037 2025-09-13 [SC]
      Key fingerprint = F587 57F4 1B4F 5D2B 30FB  B376 06B4 B8C3 D53C 9037
uid                 [ultimate] Alan Moore <amoore@example.com>
sub   cv25519/74BF2268D4468146 2025-09-13 [E]
```

</details>

Export the public key using the following command.

```sh
gpg --armor --export 06B4B8C3D53C9037
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

# Secret key and revocation certificate

To prevent your keys from getting lost, it's recommended to backup both the secret key and a revocation certificate in a secure place.

> [!CAUTION]
> Always keep the secret key and the revocation certificate in a secure place. This can, for example, be in a secure [**VeraCrypt**](https://veracrypt.jp/) container on cloud service, like Google Drive, or a USB drive.

Export the secret key using the following command. This will export the secret key directly into an file, `06B4B8C3D53C9037-secret.asc`. If you prefer to store it as text, you can remove the `--output` option or `cat` the file. Be careful with this as the terminal sessions might be recorded.

```sh
gpg --output 06B4B8C3D53C9037-secret.asc --armor --export-secret-key 06B4B8C3D53C9037
```

<details><summary>Secret key example</summary>

```sh
$ cat 06B4B8C3D53C9037-secret.asc
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

Create the revocation certificate, interactively, using the following command. It will ask for a reason, which we of course don't have at this point in time. You can create a revocation certificate with no reason specified, or even create one for each reason.

```sh
gpg --output 06B4B8C3D53C9037-revoke.asc --armor --gen-revoke 06B4B8C3D53C9037
```

<details><summary>Revocation certificate example</summary>

```sh
$ cat 06B4B8C3D53C9037-revoke.asc
-----BEGIN PGP PUBLIC KEY BLOCK-----
Comment: This is a revocation certificate

iHgEIBYKACAWIQT1h1f0G09dKzD7s3YGtLjD1TyQNwUCaMaM2AIdAAAKCRAGtLjD
1TyQN6pUAQC1DeapqxC8hzQyYs8yhwsL59aN/3Joi2de0zOGaQOggQEAm1j6sboO
UnSi4oJ6v/HTsBsJG8I9AmZ3tbH0CvGEnQ8=
=mhWf
-----END PGP PUBLIC KEY BLOCK-----
```

[git]: https://git-scm.com/
[github]: https://github.com/
