.class public Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;
.super Lorg/apache/commons/net/imap/IMAPSClient;
.source "AuthenticatingIMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z
    .param p3, "ctx"    # Ljavax/net/ssl/SSLContext;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/IMAPSClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "implicit"    # Z

    .line 51
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "implicit"    # Z
    .param p2, "ctx"    # Ljavax/net/ssl/SSLContext;

    .line 91
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    .line 92
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "a"    # [B

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .local v0, "result":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 231
    .local v4, "element":B
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    .line 232
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .end local v4    # "element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "method"    # Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 150
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 155
    :cond_0
    sget-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$1;->$SwitchMap$org$apache$commons$net$imap$AuthenticatingIMAPClient$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 216
    return v1

    .line 208
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "result":I
    if-nez v0, :cond_2

    .line 211
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 213
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 195
    .end local v0    # "result":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 197
    return v1

    .line 199
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v0

    .line 200
    .restart local v0    # "result":I
    if-nez v0, :cond_6

    .line 202
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 204
    :cond_6
    if-nez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 171
    .end local v0    # "result":I
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    .local v0, "serverChallenge":[B
    const-string v3, "HmacMD5"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 174
    .local v4, "hmac_md5":Ljavax/crypto/Mac;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 176
    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 178
    .local v3, "hmacResult":[B
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 179
    .local v5, "usernameBytes":[B
    array-length v6, v5

    add-int/2addr v6, v2

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 180
    .local v6, "toEncode":[B
    array-length v7, v5

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v7, v5

    const/16 v8, 0x20

    aput-byte v8, v6, v7

    .line 182
    array-length v7, v5

    add-int/2addr v7, v2

    array-length v8, v3

    invoke-static {v3, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v6}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v7

    .line 185
    .local v7, "result":I
    if-nez v7, :cond_9

    .line 187
    sget-object v8, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 189
    :cond_9
    if-nez v7, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 159
    .end local v0    # "serverChallenge":[B
    .end local v3    # "hmacResult":[B
    .end local v4    # "hmac_md5":Ljavax/crypto/Mac;
    .end local v5    # "usernameBytes":[B
    .end local v6    # "toEncode":[B
    .end local v7    # "result":I
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->sendData(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "result":I
    if-nez v0, :cond_c

    .line 164
    sget-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    .line 166
    :cond_c
    if-nez v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public authenticate(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;->auth(Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
