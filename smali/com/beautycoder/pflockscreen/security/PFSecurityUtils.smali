.class public Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;
.super Ljava/lang/Object;
.source "PFSecurityUtils.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;


# static fields
.field private static final ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;-><init>()V

    sput-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private decode(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;
    .locals 4
    .param p1, "encodedString"    # Ljava/lang/String;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 117
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 118
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 120
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 111
    invoke-direct {p0, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKey(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private generateKey(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "isAuthenticationRequired"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 140
    :try_start_0
    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 142
    .local v0, "keyGenerator":Ljava/security/KeyPairGenerator;
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "SHA-256"

    const-string v3, "SHA-512"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "OAEPPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 150
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x1

    return v1

    .line 153
    .end local v0    # "keyGenerator":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "exc":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 157
    const/4 v1, 0x0

    return v1
.end method

.method private generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyStore"    # Ljava/security/KeyStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isAuthenticationRequired"    # Z

    .line 103
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/security/KeyStoreException;
    return v0
.end method

.method private getCipherInstance()Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 163
    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v0, "cipher":Ljavax/crypto/Cipher;
    return-object v0

    .line 165
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 167
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not get instance of Cipher object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEncodeCipher(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/crypto/Cipher;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 94
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z

    .line 95
    invoke-direct {p0, v0, p2, v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->initEncodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 96
    return-object v0
.end method

.method public static getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;
    .locals 1

    .line 49
    sget-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    return-object v0
.end method

.method private initDecodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;)V
    .locals 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 175
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 176
    .local v1, "key":Ljava/security/PrivateKey;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "key":Ljava/security/PrivateKey;
    nop

    .line 183
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 180
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initEncodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 189
    .local v0, "key":Ljava/security/PublicKey;
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 190
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 189
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 191
    .local v1, "unrestricted":Ljava/security/PublicKey;
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v3, "SHA-256"

    const-string v4, "MGF1"

    sget-object v5, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v6, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 193
    .local v2, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "key":Ljava/security/PublicKey;
    .end local v1    # "unrestricted":Ljava/security/PublicKey;
    .end local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    nop

    .line 199
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not initialize Encode Cipher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 62
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 63
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 65
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not load keystore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 128
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-direct {p0, v0, p1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->initDecodeCipher(Ljavax/crypto/Cipher;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 130
    .local v1, "bytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 131
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 133
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 222
    .local v0, "keyStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 227
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 225
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not delete key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/lang/String;
    .param p4, "isAuthorizationRequared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getEncodeCipher(Landroid/content/Context;Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 79
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 80
    .local v1, "bytes":[B
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 81
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 83
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while encoding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isKeystoreContainAlias(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 205
    .local v0, "keyStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 208
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
