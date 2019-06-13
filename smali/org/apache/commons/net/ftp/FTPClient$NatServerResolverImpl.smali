.class public Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;
.super Ljava/lang/Object;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NatServerResolverImpl"
.end annotation


# instance fields
.field private client:Lorg/apache/commons/net/ftp/FTPClient;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/commons/net/ftp/FTPClient;

    .line 3826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3827
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;->client:Lorg/apache/commons/net/ftp/FTPClient;

    .line 3828
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 3832
    move-object v0, p1

    .line 3833
    .local v0, "newHostname":Ljava/lang/String;
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 3835
    .local v1, "host":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3836
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 3837
    .local v2, "remote":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3838
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 3841
    .end local v2    # "remote":Ljava/net/InetAddress;
    :cond_0
    return-object v0
.end method
