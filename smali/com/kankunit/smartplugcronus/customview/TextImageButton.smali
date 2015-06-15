.class public Lcom/kankunit/smartplugcronus/customview/TextImageButton;
.super Landroid/widget/ImageButton;
.source "TextImageButton.java"


# instance fields
.field private text:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/TextImageButton;->text:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 29
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/TextImageButton;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/TextImageButton;->text:Ljava/lang/String;

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/TextImageButton;->text:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/TextImageButton;->textColor:I

    .line 22
    return-void
.end method
