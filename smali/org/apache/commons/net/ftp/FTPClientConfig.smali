.class public Lorg/apache/commons/net/ftp/FTPClientConfig;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final LANGUAGE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYST_AS400:Ljava/lang/String; = "AS/400"

.field public static final SYST_L8:Ljava/lang/String; = "TYPE: L8"

.field public static final SYST_MACOS_PETER:Ljava/lang/String; = "MACOS PETER"

.field public static final SYST_MVS:Ljava/lang/String; = "MVS"

.field public static final SYST_NETWARE:Ljava/lang/String; = "NETWARE"

.field public static final SYST_NT:Ljava/lang/String; = "WINDOWS"

.field public static final SYST_OS2:Ljava/lang/String; = "OS/2"

.field public static final SYST_OS400:Ljava/lang/String; = "OS/400"

.field public static final SYST_UNIX:Ljava/lang/String; = "UNIX"

.field public static final SYST_UNIX_TRIM_LEADING:Ljava/lang/String; = "UNIX_LTRIM"

.field public static final SYST_VMS:Ljava/lang/String; = "VMS"


# instance fields
.field private defaultDateFormatStr:Ljava/lang/String;

.field private lenientFutureDates:Z

.field private recentDateFormatStr:Ljava/lang/String;

.field private saveUnparseableEntries:Z

.field private serverLanguageCode:Ljava/lang/String;

.field private final serverSystemKey:Ljava/lang/String;

.field private serverTimeZoneId:Ljava/lang/String;

.field private shortMonthNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 370
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    .line 380
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v2, "de"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v2, "it"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "da"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sv"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "no"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "nl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ro"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sq"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sh"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sk"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 249
    const-string v0, "UNIX"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemKey"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 241
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "systemKey"    # Ljava/lang/String;
    .param p2, "defaultDateFormatStr"    # Ljava/lang/String;
    .param p3, "recentDateFormatStr"    # Ljava/lang/String;

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 268
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "systemKey"    # Ljava/lang/String;
    .param p2, "defaultDateFormatStr"    # Ljava/lang/String;
    .param p3, "recentDateFormatStr"    # Ljava/lang/String;
    .param p4, "serverLanguageCode"    # Ljava/lang/String;
    .param p5, "shortMonthNames"    # Ljava/lang/String;
    .param p6, "serverTimeZoneId"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 296
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 297
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 298
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 299
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 300
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "systemKey"    # Ljava/lang/String;
    .param p2, "defaultDateFormatStr"    # Ljava/lang/String;
    .param p3, "recentDateFormatStr"    # Ljava/lang/String;
    .param p4, "serverLanguageCode"    # Ljava/lang/String;
    .param p5, "shortMonthNames"    # Ljava/lang/String;
    .param p6, "serverTimeZoneId"    # Ljava/lang/String;
    .param p7, "lenientFutureDates"    # Z
    .param p8, "saveUnparseableEntries"    # Z

    .line 332
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 333
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 334
    iput-boolean p7, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 335
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 336
    iput-boolean p8, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 337
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 338
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 339
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 340
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2
    .param p1, "systemKey"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 344
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 345
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 346
    iget-boolean v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 347
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 348
    iget-boolean v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 349
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 350
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 351
    iget-object v0, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 360
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 361
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 362
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 363
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 364
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 365
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 366
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 367
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public static getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 3
    .param p0, "shortmonths"    # Ljava/lang/String;

    .line 652
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "months":[Ljava/lang/String;
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 654
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1, v0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 655
    return-object v1
.end method

.method public static getSupportedLanguageCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 3
    .param p0, "languageCode"    # Ljava/lang/String;

    .line 631
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    .local v0, "lang":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 633
    instance-of v1, v0, Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 634
    new-instance v1, Ljava/text/DateFormatSymbols;

    move-object v2, v0

    check-cast v2, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v1

    .line 635
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 636
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    return-object v1

    .line 639
    :cond_1
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v1
.end method

.method private static splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "shortmonths"    # Ljava/lang/String;

    .line 659
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 661
    .local v1, "monthcnt":I
    const/16 v2, 0xc

    if-ne v2, v1, :cond_1

    .line 665
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    .line 666
    .local v2, "months":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 667
    .local v3, "pos":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    .line 670
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_0
    const-string v4, ""

    aput-object v4, v2, v3

    .line 671
    return-object v2

    .line 662
    .end local v2    # "months":[Ljava/lang/String;
    .end local v3    # "pos":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getDefaultDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLanguageCode()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSystemKey()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonthNames()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-object v0
.end method

.method public getUnparseableEntries()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return v0
.end method

.method public isLenientFutureDates()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return v0
.end method

.method public setDefaultDateFormatStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultDateFormatStr"    # Ljava/lang/String;

    .line 487
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setLenientFutureDates(Z)V
    .locals 0
    .param p1, "lenientFutureDates"    # Z

    .line 532
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 533
    return-void
.end method

.method public setRecentDateFormatStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "recentDateFormatStr"    # Ljava/lang/String;

    .line 508
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setServerLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverLanguageCode"    # Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setServerTimeZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverTimeZoneId"    # Ljava/lang/String;

    .line 549
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setShortMonthNames(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortMonthNames"    # Ljava/lang/String;

    .line 570
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setUnparseableEntries(Z)V
    .locals 0
    .param p1, "saveUnparseable"    # Z

    .line 695
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 696
    return-void
.end method
