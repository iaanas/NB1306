.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "DefaultFTPFileEntryParserFactory.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/lang/String; = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 99
    const-string v0, "Error initializing parser"

    const/4 v1, 0x0

    .line 102
    .local v1, "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    sget-object v2, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 107
    .local v2, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v3

    .line 116
    nop

    .line 119
    .end local v2    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 114
    .restart local v2    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/ExceptionInInitializerError;
    :try_start_2
    new-instance v4, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    invoke-direct {v4, v0, v3}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    throw v4

    .line 112
    .end local v3    # "e":Ljava/lang/ExceptionInInitializerError;
    .restart local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :catch_1
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    invoke-direct {v4, v0, v3}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    throw v4

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :catch_2
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not implement the interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    throw v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 117
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "parser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "config":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :catch_3
    move-exception v0

    .line 122
    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 123
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "ukey":Ljava/lang/String;
    const-string v2, "UNIX_LTRIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 126
    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    move-object v1, v2

    goto/16 :goto_2

    .line 129
    :cond_1
    const-string v2, "UNIX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 131
    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    move-object v1, v2

    goto/16 :goto_2

    .line 133
    :cond_2
    const-string v2, "VMS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 135
    new-instance v2, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 137
    :cond_3
    const-string v2, "WINDOWS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 139
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    goto/16 :goto_2

    .line 141
    :cond_4
    const-string v2, "OS/2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 143
    new-instance v2, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 145
    :cond_5
    const-string v2, "OS/400"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_b

    const-string v2, "AS/400"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    goto :goto_1

    .line 150
    :cond_6
    const-string v2, "MVS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 152
    new-instance v2, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    move-object v1, v2

    goto :goto_2

    .line 154
    :cond_7
    const-string v2, "NETWARE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 156
    new-instance v2, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    move-object v1, v2

    goto :goto_2

    .line 158
    :cond_8
    const-string v2, "MACOS PETER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    .line 160
    new-instance v2, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    move-object v1, v2

    goto :goto_2

    .line 162
    :cond_9
    const-string v2, "TYPE: L8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a

    .line 166
    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    move-object v1, v2

    goto :goto_2

    .line 170
    :cond_a
    new-instance v2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown parser type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_b
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    .line 174
    .end local v0    # "ukey":Ljava/lang/String;
    :cond_c
    :goto_2
    instance-of v0, v1, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v0, :cond_d

    .line 175
    move-object v0, v1

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, p2}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 177
    :cond_d
    return-object v1
.end method

.method private createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 8
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINDOWS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-object v0

    .line 244
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 245
    .local v0, "config2":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UNIX_LTRIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-direct {v3, v0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v1
.end method

.method private createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 8
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS/400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-object v0

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 280
    .local v0, "config2":Lorg/apache/commons/net/ftp/FTPClientConfig;
    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UNIX_LTRIM"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-direct {v3, v0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v1
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 91
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v1, "Parser key cannot be null"

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 2
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    return-object v1
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 291
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 221
    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 256
    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 212
    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 217
    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    return-object v0
.end method
