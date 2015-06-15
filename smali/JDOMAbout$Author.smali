.class LJDOMAbout$Author;
.super Ljava/lang/Object;
.source "JDOMAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJDOMAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Author"
.end annotation


# instance fields
.field final email:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, LJDOMAbout$Author;->name:Ljava/lang/String;

    .line 259
    iput-object p2, p0, LJDOMAbout$Author;->email:Ljava/lang/String;

    .line 260
    return-void
.end method
