.class public final enum Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "AuthenticatingIMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/AuthenticatingIMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

.field public static final enum LOGIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

.field public static final enum XOAUTH:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;


# instance fields
.field private final authName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 245
    new-instance v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v2}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    .line 247
    new-instance v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    const/4 v2, 0x1

    const-string v3, "CRAM_MD5"

    const-string v4, "CRAM-MD5"

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    .line 249
    new-instance v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    const/4 v3, 0x2

    const-string v4, "LOGIN"

    invoke-direct {v0, v4, v3, v4}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    .line 251
    new-instance v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    const/4 v4, 0x3

    const-string v5, "XOAUTH"

    invoke-direct {v0, v5, v4, v5}, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    sget-object v5, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    aput-object v5, v0, v1

    sget-object v1, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 256
    iput-object p3, p0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->authName:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 242
    const-class v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;
    .locals 1

    .line 242
    sget-object v0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;

    return-object v0
.end method


# virtual methods
.method public final getAuthName()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/commons/net/imap/AuthenticatingIMAPClient$AUTH_METHOD;->authName:Ljava/lang/String;

    return-object v0
.end method
