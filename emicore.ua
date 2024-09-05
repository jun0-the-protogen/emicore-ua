---IonCore
  ---Notation
    Symbols ← ("-LJ^v>:,_/\\=;O()")
    DirectionTable ↚ (⊂⟜¯⋯1_2)

    Tokenize ← (
      Symbols
      ⊸⊃(\+⬚1↻¯1∈|⊗:)
      ⟜:
      ⊓(⊜(◿⧻Symbols⊢⇌)
      | ⊜(⍣⋕(⍣⋕NaN↘¯1))))

    ApTop ↚ ⍜⊙(°□⊢⇌)(⊂:)

    Mirror ↚ (
      ⊸(⊢⇌)
      ⊸≡⊢°□
      ⨬(∘
      | ⍜(⊢⇌)¯
      | ⍜(⊢⇌)¯
      | ∘)
      ⇌)

    Pass₁ ← (
      °⊏⊙⊙($Stack {↯0_2[]})
      ∧⋅⨬(
        # Place
        ⍥⋅0 ⊸=NaN # -
        ApTop[0∘]
        # Place and change direction
      | ⍥⋅0 ⊸=NaN # J
        ApTop[[1 1][0∘]]
      | ⍥⋅0 ⊸=NaN # L
        ApTop[[1¯1][0∘]]
        # Offsets perpendicular
      | ⍤{0@^}⊸≠NaN # ^
        ApTop[2∘]
      | ⍤{0@v}⊸≠NaN # v
        ApTop[2¯]
        # Offset forward
      | ⍤{0@>}⊸≠NaN # >
        ApTop[3∘]
        # Offset, perpendicular, direction changing
      | ⍤{0@:}⊸≠NaN # :
        ApTop[[2∘]⊙[1 2]]+2
      | ⍤{0@,}⊸≠NaN # ,
        ApTop[[2¯]⊙[1¯2]]+2

        # Mirrors
      | ⍥⋅0 ⊸=NaN # _
        ⊙Mirror
        ApTop⊂[0∘]
      | ⍥⋅0 ⊸=NaN # /
        ⊙Mirror
        ApTop⊂[[1 1][0∘]]
      | ⍥⋅0 ⊸=NaN # \
        ⊙Mirror
        ApTop⊂[[1¯1][0∘]]
      | ⍤{0@=}⊸≠NaN # =
        ⊙Mirror
        ApTop⊂[[2∘]⊙[1 2]]+2
      | ⍤{0@;}⊸≠NaN # ;
        ⊙Mirror
        ApTop⊂[[2¯]⊙[1¯2]]+2

        # Repeat top of stack
      | ⍥⋅0 ⊸=NaN # O
        ⍜⊙(⊢△°□⊢⇌)×+1

        # Stack operations
      | ⍥⋅0 ⊸=NaN # (
        ApTop[0∘]
        ⊂⊙(□↯0_2[])
      | ⍥⋅0 ⊸=NaN # )
        ApTop[0∘]
        ⍜(↙¯2|□/◇⊂))
      # just in case
      /◇⊂)

    Pass₂ ← (
      ≡°⊟⊙($Coordinates⊚2$Direction0$Ions↯0_3[])

      ∧⨬(
        # Place
        ⊙⊙:⊸:⊙:
        ⊏⊙DirectionTable
        ⊃(+××2
        | ⋅⋅⋅∘
        | ⇡:
          +⊙¤⊞××2
          $Ions⊂:⍜⍉⊂)
      | # Rotate
        ⊃(◿4⊙:|+1×3<0|◿4+⊙◌)
        ⊙⊙:
        ⨬(⋅⋅∘
        | +⍥¯[⊃(≥2|=0◿3)]
        | :⊃(◿|⍥¯⊓<×⟜:)2
          ⍜⊙⊏+
        | +⍥¯[⊃(≠0◿3|<2)])
      | # Move Perpendicularly 
        ⊃⋅⋅∘⊙⊙∘
        :¬⊙⍥¯⊃◿≥2
        ⍜⊙⊏+
      | # Move Axially
        ⊃⋅⋅∘⊙⊙∘
        :⊙⍥¯⊃◿≥2
        ⍜⊙⊏+
      )
      ⋅◌
    )
  ---
---

$ 4-1v1(1^1-4O)(1v1-2O)12=

IonCore~Notation~Tokenize
IonCore~Notation~Pass₁
IonCore~Notation~Pass₂

