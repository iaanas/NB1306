.class public interface abstract Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;
.super Ljava/lang/Object;
.source "IPFSecurityUtils.java"


# virtual methods
.method public abstract decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation
.end method

.method public abstract deleteKey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation
.end method

.method public abstract encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation
.end method

.method public abstract isKeystoreContainAlias(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation
.end method
