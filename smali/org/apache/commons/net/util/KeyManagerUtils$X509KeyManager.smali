.class Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509KeyManager"
.end annotation


# instance fields
.field private final keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;


# direct methods
.method constructor <init>(Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 206
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 207
    iput-object p1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    .line 208
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 214
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 225
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v1}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$X509KeyManager;->keyStore:Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method
