.class Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;
.super Ljava/lang/Object;
.source "FTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertiesSingleton"
.end annotation


# static fields
.field static final PROPERTIES:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 433
    const-class v0, Lorg/apache/commons/net/ftp/FTPClient;

    const-string v1, "/systemType.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 434
    .local v0, "resourceAsStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 435
    .local v1, "p":Ljava/util/Properties;
    if-eqz v0, :cond_0

    .line 436
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object v1, v2

    .line 438
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :goto_0
    goto :goto_2

    .line 444
    :catch_0
    move-exception v2

    .line 447
    goto :goto_2

    .line 442
    :catchall_0
    move-exception v2

    .line 443
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    goto :goto_1

    .line 444
    :catch_1
    move-exception v3

    .line 446
    :goto_1
    throw v2

    .line 439
    :catch_2
    move-exception v2

    .line 443
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 449
    :cond_0
    :goto_2
    sput-object v1, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    .line 450
    .end local v0    # "resourceAsStream":Ljava/io/InputStream;
    .end local v1    # "p":Ljava/util/Properties;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
