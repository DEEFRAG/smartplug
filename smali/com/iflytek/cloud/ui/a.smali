.class public final Lcom/iflytek/cloud/ui/a;
.super Lcom/iflytek/cloud/ui/a/e;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/ui/a$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/iflytek/cloud/ui/a/f;

.field private f:Landroid/view/animation/RotateAnimation;

.field private g:Lcom/iflytek/cloud/SpeechRecognizer;

.field private h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

.field private i:J

.field private j:Lcom/iflytek/cloud/RecognizerListener;

.field private volatile k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    sput v0, Lcom/iflytek/cloud/ui/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/ui/a;->i:J

    new-instance v0, Lcom/iflytek/cloud/ui/b;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/ui/b;-><init>(Lcom/iflytek/cloud/ui/a;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->j:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/ui/a;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    return v0
.end method

.method private a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "errtxt"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Lcom/iflytek/cloud/ui/a;->a(Landroid/widget/TextView;Lcom/iflytek/cloud/SpeechError;)V

    const-string v1, "errview"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "warning"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/ui/a;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/cloud/ui/a;Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/a/f;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/cloud/ui/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->j()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/cloud/ui/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/cloud/ui/a;->b:Z

    return v0
.end method

.method private g()V
    .locals 4

    const-string v0, "startRecognizing"

    invoke-static {v0}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iflytek/cloud/ui/a;->i:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/cloud/ui/a;->i:J

    iget-wide v2, p0, Lcom/iflytek/cloud/ui/a;->i:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->j:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->i()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    :cond_0
    iput-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/ui/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V

    return-void
.end method

.method private j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "control"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "tips"

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/iflytek/cloud/ui/a;->k:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v8}, Lcom/iflytek/cloud/resource/Resource;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v0, v7}, Lcom/iflytek/cloud/ui/a/f;->a(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a/f;->invalidate()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v0, v7}, Lcom/iflytek/cloud/ui/a/f;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/iflytek/cloud/ui/a;->k:I

    if-ne v4, v8, :cond_2

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/ui/a/f;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v9}, Lcom/iflytek/cloud/resource/Resource;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/iflytek/cloud/ui/a;->k:I

    if-ne v3, v9, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v1, v6}, Lcom/iflytek/cloud/ui/a/f;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "recognize"

    invoke-static {v1, v0, p0}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "voice_bg.9"

    invoke-static {v2, v3}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "container"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/iflytek/cloud/a/g/f;->a(Landroid/view/View;)V

    new-instance v0, Lcom/iflytek/cloud/ui/a/f;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/ui/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a;->e:Lcom/iflytek/cloud/ui/a/f;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->d:Landroid/widget/LinearLayout;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "control"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "waiting"

    invoke-static {v1, v2}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/widget/TextView;Lcom/iflytek/cloud/SpeechError;)V
    .locals 12

    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v10}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v0, v2, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    array-length v6, v1

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    new-instance v8, Lcom/iflytek/cloud/ui/a$a;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/iflytek/cloud/ui/a$a;-><init>(Lcom/iflytek/cloud/ui/a;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v8, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v10}, Lcom/iflytek/cloud/SpeechError;->getHtmlDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "<br>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/iflytek/cloud/ui/a/a;->a()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v2, v3, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/iflytek/cloud/ui/a/a;->b()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-direct {v2, v6, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v6, 0x21

    invoke-virtual {v5, v2, v3, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/iflytek/cloud/ui/a/a;->a()[I

    move-result-object v3

    aget v3, v3, v10

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v2, v3, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/iflytek/cloud/ui/a/a;->b()[I

    move-result-object v2

    aget v2, v2, v10

    invoke-direct {v1, v2, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v1, v0, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/iflytek/cloud/ui/RecognizerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/cloud/ui/a;->h:Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    invoke-virtual {p0, p0}, Lcom/iflytek/cloud/ui/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/iflytek/cloud/ui/a/e;->b()V

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    invoke-super {p0}, Lcom/iflytek/cloud/ui/a/e;->c()V

    return-void
.end method

.method protected d()Z
    .locals 1

    invoke-super {p0}, Lcom/iflytek/cloud/ui/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->h()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->destroy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/iflytek/cloud/ui/a;->k:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a;->e()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->g()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a;->g:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    invoke-direct {p0}, Lcom/iflytek/cloud/ui/a;->j()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
