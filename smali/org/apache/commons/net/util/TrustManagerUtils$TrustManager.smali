.class Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/TrustManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustManager"
.end annotation


# instance fields
.field private final checkServerValidity:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "checkServerValidity"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;->checkServerValidity:Z

    .line 43
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lorg/apache/commons/net/util/TrustManagerUtils$TrustManager;->checkServerValidity:Z

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p1

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 61
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 59
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 72
    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->access$000()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
