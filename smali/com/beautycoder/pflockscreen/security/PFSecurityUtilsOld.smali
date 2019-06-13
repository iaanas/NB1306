.class public Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;
.super Ljava/lang/Object;
.source "PFSecurityUtilsOld.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;


# static fields
.field private static final RSA_MODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;-><init>()V

    sput-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKeyOld(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
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

    .line 63
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKey(Landroid/content/Context;Ljava/lang/String;Z)Z

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

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/security/KeyStoreException;
    return v0
.end method

.method private generateKeyOld(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .param p3, "isAuthenticationRequired"    # Z

    .line 134
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 136
    .local v1, "end":Ljava/util/Calendar;
    const/16 v2, 0x19

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 138
    const-string v2, "RSA"

    const-string v4, "AndroidKeyStore"

    invoke-static {v2, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 140
    .local v2, "keyGen":Ljava/security/KeyPairGenerator;
    new-instance v4, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v4, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v4, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 143
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 144
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 146
    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    const-string v6, "CN = Secured Preference Store, O = Devliving Online"

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v4

    .line 150
    .local v4, "spec":Landroid/security/KeyPairGeneratorSpec;
    invoke-virtual {v2, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 151
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return v3

    .line 154
    .end local v0    # "start":Ljava/util/Calendar;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v2    # "keyGen":Ljava/security/KeyPairGenerator;
    .end local v4    # "spec":Landroid/security/KeyPairGeneratorSpec;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "exc":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;
    .locals 1

    .line 33
    sget-object v0, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    return-object v0
.end method

.method private loadKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 48
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 49
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
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

.method private rsaDecrypt([BLjava/lang/String;)[B
    .locals 9
    .param p1, "encrypted"    # [B
    .param p2, "keystoreAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 109
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 110
    .local v1, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 111
    .local v2, "output":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 112
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 114
    .local v3, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v5

    move v6, v5

    .line 116
    .local v6, "nextByte":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 117
    int-to-byte v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [B

    .line 120
    .local v5, "bytes":[B
    const/4 v7, 0x0

    .line 120
    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 121
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v5, v7

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 123
    .end local v7    # "i":I
    :cond_1
    return-object v5
.end method

.method private rsaEncrypt(Landroid/content/Context;[BLjava/lang/String;)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "secret"    # [B
    .param p3, "keystoreAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 84
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->generateKeyIfNecessary(Landroid/content/Context;Ljava/security/KeyStore;Ljava/lang/String;Z)Z

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 86
    .local v1, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 87
    .local v2, "inputCipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v3, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 90
    .local v4, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v4, p2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 91
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 93
    .local v5, "vals":[B
    return-object v5
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

    .line 99
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 100
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->rsaDecrypt([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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

    .line 180
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 182
    .local v0, "keyStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 185
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

    .line 74
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->rsaEncrypt(Landroid/content/Context;[BLjava/lang/String;)[B

    move-result-object v0

    .line 75
    .local v0, "bytes":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    new-instance v1, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while encoding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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

    .line 164
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 166
    .local v0, "keyStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 169
    new-instance v2, Lcom/beautycoder/pflockscreen/security/PFSecurityException;

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
