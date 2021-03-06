        r e s o u r c e _ v e r s i o n       /de31345603890a8c2b0e2d05a0ccbeb46bff46d1.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
   ? # v e r s i o n   3 3 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 # l i n e   0   1 
 i n   v e c 4   i n _ p o s i t i o n ; 
 i n   v e c 3   i n _ n o r m a l ; 
 i n   v e c 3   i n _ t a n g e n t ; 
 i n   v e c 3   i n _ b i t a n g e n t ; 
 i n   v e c 4   i n _ c o l o r 0 ; 
 i n   v e c 2   i n _ u v 0 ; 
 i n   v e c 2   i n _ u v 1 ; 
 i n   v e c 2   i n _ u v 2 ; 
 i n   v e c 2   i n _ u v 3 ; 
 i n   v e c 2   i n _ u v 4 ; 
 i n   v e c 2   i n _ u v 5 ; 
 i n   v e c 2   i n _ u v 6 ; 
 i n   v e c 2   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   m v p _ m a t r i x 
 u n i f o r m   m a t 4   m v p _ m a t r i x ; 
 
 / / :   p a r a m   a u t o   s u b _ p i x e l _ o f f s e t 
 u n i f o r m   v e c 2   p i x e l _ o f f s e t ; 
 
 # d e f i n e 	 V E R T E X _ S H A D E R 
 
 # i f   ! d e f i n e d ( C U S T O M _ C O M P U T E _ V E R T E X _ P O S I T I O N ) 
 v e c 4   c o m p u t e V e r t e x P o s i t i o n ( )   { 
 	 r e t u r n   m v p _ m a t r i x   *   i n _ p o s i t i o n ; 
 } 
 # e n d i f 
 
 # e n d i f     / /   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d 0   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d 1   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d 2   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d 3   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d 4   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d 5   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d 6   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d 7   =   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 # e n d i f 
 } 
 # l i n e   2   0 
   0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
   ? # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # l i n e   0   1 
 i n   v e c 4   i n _ p o s i t i o n ; 
 i n   v e c 3   i n _ n o r m a l ; 
 i n   v e c 3   i n _ t a n g e n t ; 
 i n   v e c 3   i n _ b i t a n g e n t ; 
 i n   v e c 4   i n _ c o l o r 0 ; 
 i n   v e c 2   i n _ u v 0 ; 
 i n   v e c 2   i n _ u v 1 ; 
 i n   v e c 2   i n _ u v 2 ; 
 i n   v e c 2   i n _ u v 3 ; 
 i n   v e c 2   i n _ u v 4 ; 
 i n   v e c 2   i n _ u v 5 ; 
 i n   v e c 2   i n _ u v 6 ; 
 i n   v e c 2   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   m v p _ m a t r i x 
 u n i f o r m   m a t 4   m v p _ m a t r i x ; 
 
 / / :   p a r a m   a u t o   s u b _ p i x e l _ o f f s e t 
 u n i f o r m   v e c 2   p i x e l _ o f f s e t ; 
 
 # d e f i n e 	 V E R T E X _ S H A D E R 
 
 # i f   ! d e f i n e d ( C U S T O M _ C O M P U T E _ V E R T E X _ P O S I T I O N ) 
 v e c 4   c o m p u t e V e r t e x P o s i t i o n ( )   { 
 	 r e t u r n   m v p _ m a t r i x   *   i n _ p o s i t i o n ; 
 } 
 # e n d i f 
 
 # e n d i f     / /   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d 0   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d 1   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d 2   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d 3   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d 4   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d 5   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d 6   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d 7   =   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 # e n d i f 
 } 
 # l i n e   3   0 
   J l a s t _ v a l i d _ f r a g m e n t _ s o u r c e _ v i s i b i l i t y   
   g? # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # d e f i n e   S H A D E R _ F R A G M E N T 
 
 # l i n e   0   1 
 # i f d e f   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # e x t e n s i o n   G L _ A R B _ b i n d l e s s _ t e x t u r e   :   r e q u i r e 
 l a y o u t   ( b i n d l e s s _ s a m p l e r )   u n i f o r m ; 
 # e n d i f 
 
 # i f   _ _ V E R S I O N _ _   <   4 0 0 
 # e x t e n s i o n   G L _ A R B _ t e x t u r e _ q u e r y _ l o d   :   e n a b l e 
 # d e f i n e   t e x t u r e Q u e r y L o d ( S A M P L E R ,   P )   t e x t u r e Q u e r y L O D ( ( S A M P L E R ) ,   ( P ) ) 
 # e n d i f 
 # l i n e   9   0 
 
 # d e f i n e   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 
 # l i n e   0   2 
 / / -   s h a d e r - c o m m o n . f r a g . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` f i l l V 2 F ` 
 / / -   ` f i l l D e f a u l t O u t p u t s ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` V 2 F ` 
 / / -   ` O u t p u t s ` 
 
 # l i n e   0   3 
 / / -   l i b - s p a r s e . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   T h i s   f i l e   p r o v i d e s   u s e f u l   f u n c t i o n s   t o   e n s u r e   s p a r s e   t e x t u r e s   s a m p l i n g 
 / / -   c o r r e c t n e s s   ( A R B _ s p a r s e _ t e x t u r e ) . 
 / / -   A l l o w s   t o   s a m p l e   o n l y   p a r t   o f   t e x t u r e s   r e a l l y   p r e s e n t   i n   v i d e o   m e m o r y . 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S p a r s e C o o r d ` 
 / / -   ` g e t S p a r s e C o o r d L o d 0 ` 
 / / -   ` t e x t u r e S p a r s e Q u e r y L o d ` 
 / / -   ` t e x t u r e S p a r s e ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` S a m p l e r S p a r s e ` 
 / / -   ` S p a r s e C o o r d ` 
 / / - 
 / / -   T h e   ` F E A T U R E _ S P A R S E _ T E X T U R E `   m a c r o   i s   d e f i n e d   o n l y   i f   t h e   s p a r s e   v i r t u a l   t e x t u r e   e x t e n s i o n   i s   e n a b l e d . 
 / / - 
 / / -   I f   e n a b l e d ,   p r o c e s s   a d d i t i o n a l   t e x t u r e   l o o k u p   c h e c k s   t o   c l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g . 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ c h e c k _ n e e d e d 
 u n i f o r m   b o o l   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   =   f a l s e ; 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ m a s k 
 u n i f o r m   u s a m p l e r 2 D   m a t e r i a l _ l o d _ m a s k ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   u v t i l e _ r e f e r e n c e _ s a m p l e r 
 u n i f o r m   s a m p l e r 2 D   u v t i l e _ r e f e r e n c e _ s a m p l e r ; 
 / / :   p a r a m   a u t o   u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ i n v e r s e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ l o d _ b i a s 
 u n i f o r m   f l o a t   u v t i l e _ l o d _ b i a s ; 
 
 / / -   S a m p l e r   a n d   s p a r s e   t e x t u r e   i n f o r m a t i o n   s t r u c t u r e 
 / / - 
 / / -   U s e d   t o   q u e r y   a l l   s a m p l e r   r e l a t e d   u n i f o r m s   w i t h   a   s i n g l e   a u t o   b i n d i n g 
 s t r u c t   S a m p l e r S p a r s e   { 
     s a m p l e r 2 D   t e x ; 
     v e c 4   s i z e ;   / /   w i d t h ,   h e i g h t ,   1 / w i d t h ,   1 / h e i g h t 
     b o o l   i s _ s e t ;   / /   a   b o o l e a n   i n d i c a t i n g   w h e t h e r   t h e   t e x t u r e   i s   i n   t h e   t e x t u r e   s e t   o r   n o t 
     u v e c 3   l o d _ m a s k _ s e l e c t ;   / /   m a s k i n g   o p e r a t i o n s   d e s c r i p t i o n   a l l o w i n g   t o   r e t r i e v e   l o a d e d   m i p m a p s   i n f o r m a t i o n 
 } ; 
 
 / / -   S p a r s e   s a m p l i n g   c o o r d i n a t e s 
 / / - 
 / / -   S t o r e   t h e   U V   c o o r d i n a t e s   &   m a t e r i a l - w i s e   s p a r s e   L o D   m a s k 
 s t r u c t   S p a r s e C o o r d   { 
     v e c 2   t e x _ c o o r d ; 
     v e c 2   d f d x ; 
     v e c 2   d f d y ; 
     f l o a t   l o d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 f l o a t   g e t L o d F r o m R e f e r e n c e S a m p l e r ( v e c 2   t e x _ c o o r d ) 
 { 
 	 v e c 2   t e x c o o r d r e f   =   t e x _ c o o r d   *   ( u v t i l e _ s i z e   *   ( 1 . 0 / 1 0 2 4 . 0 ) ) ; 
 	 r e t u r n   m a x ( 0 . 0 , t e x t u r e Q u e r y L o d ( u v t i l e _ r e f e r e n c e _ s a m p l e r , t e x c o o r d r e f ) . y ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 u i n t   g e t T e x t u r e L o d M a s k ( u v e c 3   l o d M a s k S e l e c t ,   u i n t   m a t e r i a l L o d M a s k )   { 
     m a t e r i a l L o d M a s k   > > =   l o d M a s k S e l e c t . x ; 
     m a t e r i a l L o d M a s k   & =   l o d M a s k S e l e c t . y ; 
     m a t e r i a l L o d M a s k   | =   l o d M a s k S e l e c t . z ; 
     r e t u r n   m a t e r i a l L o d M a s k ; 
 } 
 
 f l o a t   g e t F i x e d S p a r s e L o d ( u i n t   l o d M a s k ,   f l o a t   r e q u e s t e d L o d )   { 
     r e q u e s t e d L o d   =   m a x ( r e q u e s t e d L o d , 0 . 0 ) ; 
     u i n t   r e q u e s t e d M a s k   =   ( 1 u < < u i n t ( r e q u e s t e d L o d ) )   |   ( 1 u < < u i n t ( c e i l ( r e q u e s t e d L o d ) ) ) ; 
     i f   ( ( r e q u e s t e d M a s k & l o d M a s k ) ! = r e q u e s t e d M a s k )   { 
         / /   I f   t h e   r e q u e s t e d   l e v e l s   a r e   n o t   l o a d e d ;   r e t u r n   t h e   f i r s t   a v a i l a b l e 
         l o d M a s k   & =   ~ ( l o d M a s k - 1 u ) ; 
         r e q u e s t e d L o d   =   l o g 2 ( f l o a t ( m a x ( l o d M a s k , 1 u ) ) ) ; 
     } 
     r e t u r n   r e q u e s t e d L o d ; 
 } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   [ D O C - O N ] 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   ( m u s t   b e   c a l l e d   f r o m   f r a g m e n t   s h a d e r ) 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   d F d x ( t e x _ c o o r d ) ; 
     r e s . d f d y   =   d F d y ( t e x _ c o o r d ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x _ c o o r d ) ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 # e n d i f 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   B a s e   l e v e l   s a m p l i n g   v e r s i o n   ( c a n   b e   u s e d   i f   o u t s i d e   f r a g m e n t   s h a d e r ) 
 S p a r s e C o o r d   g e t S p a r s e C o o r d L o d 0 ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   v e c 2 ( 0 . 0 ) ; 
     r e s . d f d y   =   v e c 2 ( 0 . 0 ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   0 . 0 ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 / / -   R e t u r n s   L o D   B E F O R E   L o D   b i a s   a p p l i e d 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     f l o a t   l o d f i x   =   c o o r d . l o d ; 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   l o d f i x ) ; 
     } 
     r e t u r n   l o d f i x - u v t i l e _ l o d _ b i a s ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y - u v t i l e _ l o d _ b i a s ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 / / -   C o m p u t e   t h e   d e r i v a t i v e s   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 v o i d   t e x t u r e S p a r s e Q u e r y G r a d ( o u t   v e c 2   d f d x ,   o u t   v e c 2   d f d y ,   S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         f l o a t   l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   c o o r d . l o d ) ; 
         i f   ( c o o r d . l o d ! = l o d f i x )   { 
             / /   F i x   d f d x   d f d y ,   t a k e   a c c o u n t   o f f s e t ,   n o   m o r e   a n i s o t r o p y 
             v e c 2   d d f i x   =   e x p 2 ( l o d f i x - u v t i l e _ l o d _ b i a s )   *   u v t i l e _ i n v e r s e _ s i z e ; 
             d f d x   =   v e c 2 ( d d f i x . x , 0 . 0 ) ; 
             d f d y   =   v e c 2 ( 0 . 0 , d d f i x . y ) ; 
             r e t u r n ; 
         } 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     d f d x   =   c o o r d . d f d x ; 
     d f d y   =   c o o r d . d f d y ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     r e t u r n   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   d f d x ,   d f d y ) ; 
 } 
 
 / / -   G i v e n   a   t e x t u r e ,   p e r f o r m s   a n   o p t i m i z e d   m u l t i p l e   t e x t u r e   l o o k u p s   w i t h   s m a l l   o f f s e t s 
 / / - 
 / / -   W e   a r e   p r o v i d i n g   a l t e r n a t i v e s   v e r s i o n s   o f   t h i s   h e l p e r   f o r   u p   t o   N = 4 
 
 / / -   [ D O C - O F F ] 
 / *   P r o v i d e   a   f a k e d   d o c u m e n t a t i o n   t o   b e   m o r e   r e a d a b l e   f o r   t h e   u s e r 
 / / -   [ D O C - O N ] 
 v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         v e c 2   d f d x , d f d y ;   \ 
         t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ;   \ 
         }   \ 
     } 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 1 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 2 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 3 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 4 ) 
 # u n d e f   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F 
 / / -   [ D O C - O N ] 
 # l i n e   1 2   2 
 
 / / -   D e t e r m i n e   i f   w e   r e c o m p u t e   t h e   t a n g e n t   f r a m e   p e r   p i x e l . 
 / / :   p a r a m   a u t o   p e r _ f r a g _ b i n o r m a l 
 u n i f o r m   b o o l   p e r F r a g B i n o r m a l ; 
 
 i n   v e c 3   v a r _ n o r m a l ; 
 i n   v e c 3   v a r _ t a n g e n t ; 
 i n   v e c 3   v a r _ b i t a n g e n t ; 
 i n   v e c 3   v a r _ p o s i t i o n ; 
 i n   v e c 4   v a r _ c o l o r ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 / / -   V 2 F   s t r u c t u r e   d e f i n i t i o n 
 s t r u c t   V 2 F   { 
     v e c 3   n o r m a l ; 
     v e c 3   t a n g e n t ; 
     v e c 3   b i t a n g e n t ; 
     v e c 3   p o s i t i o n ; 
     v e c 4   c o l o r [ 1 ] ; 
     v e c 2   t e x _ c o o r d ; 
     S p a r s e C o o r d   s p a r s e _ c o o r d ; 
     v e c 2   m u l t i _ t e x _ c o o r d [ 8 ] ; 
 } ; 
 
 / / -   F i l l   V 2 F   s t r u c t u r e   w i t h   v a r y i n g   v a r i a b l e s 
 v o i d   f i l l V 2 F ( o u t   V 2 F   i n p u t s )   { 
 	 i n p u t s . n o r m a l   =   v a r _ n o r m a l ; 
 	 i n p u t s . t a n g e n t   =   v a r _ t a n g e n t ; 
 	 i n p u t s . b i t a n g e n t   =   v a r _ b i t a n g e n t ; 
 	 i n p u t s . p o s i t i o n   =   v a r _ p o s i t i o n ; 
 	 i n p u t s . c o l o r [ 0 ]   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 0 ]   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ]   =   v a r _ t e x _ c o o r d 1 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 2 ]   =   v a r _ t e x _ c o o r d 2 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 3 ]   =   v a r _ t e x _ c o o r d 3 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 4 ]   =   v a r _ t e x _ c o o r d 4 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 5 ]   =   v a r _ t e x _ c o o r d 5 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 6 ]   =   v a r _ t e x _ c o o r d 6 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 7 ]   =   v a r _ t e x _ c o o r d 7 ; 
 
 	 / / -   R e c o m p u t e   t a n g e n t   s p a c e   t o   b e   c o m p a t i b l e   w i t h   U E 4 
 	 i f   ( p e r F r a g B i n o r m a l ) 
 	 { 
 	 	 v e c 3   p p b i t a n g e n t   =   c r o s s ( i n p u t s . n o r m a l ,   i n p u t s . t a n g e n t ) ; 
 	 	 i n p u t s . b i t a n g e n t   =   s i g n ( d o t ( i n p u t s . b i t a n g e n t ,   p p b i t a n g e n t ) )   *   p p b i t a n g e n t ; 
 	 } 
 } 
 
 / / -   U s e r   ' s h a d e '   f u n c t i o n   o u t p u t s 
 s t r u c t   O u t p u t s   { 
     f l o a t   a l p h a ; 
     v e c 3   d i f f u s e S h a d i n g ; 
     v e c 3   s p e c u l a r S h a d i n g ; 
     v e c 3   e m i s s i v e C o l o r ; 
     v e c 3   a l b e d o ; 
     v e c 4   s s s C o e f f i c i e n t s ; 
 } ; 
 
 / / -   M e c a n i s m   t o   f o r c e   d e a d   c o d e   r e m o v a l ,   n e c e s s a r y   a t   l e a s t   o n   O S X : 
 / / - 	 t h e   O u t p u t s   s t r u c t   i s   g l o b a l   a n d   f i e l d s   a r e   s e t   u s i n g   m a c r o s   . . . 
 O u t p u t s   o u t p u t s _ ; 
 
 v o i d   f i l l D e f a u l t O u t p u t s ( )   { 
 	 o u t p u t s _ . a l p h a                       =   1 . 0 ; 
 	 o u t p u t s _ . d i f f u s e S h a d i n g     =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . s p e c u l a r S h a d i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . e m i s s i v e C o l o r       =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . a l b e d o                     =   v e c 3 ( 1 . 0 ) ; 
 	 o u t p u t s _ . s s s C o e f f i c i e n t s   =   v e c 4 ( 0 . 0 ) ; 
 } 
 
 # i f d e f   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   a l p h a O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l p h a O u t p u t ( v )   o u t p u t s _ . a l p h a   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v )   o u t p u t s _ . d i f f u s e S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v )   o u t p u t s _ . s p e c u l a r S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v )   o u t p u t s _ . e m i s s i v e C o l o r   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   a l b e d o O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l b e d o O u t p u t ( v )   o u t p u t s _ . a l b e d o   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v )   o u t p u t s _ . s s s C o e f f i c i e n t s   =   ( v ) 
 # e n d i f 
 # l i n e   1 8   0 
 # l i n e   0   4 
 / / -   l i b - v i s i b i l i t y . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 
 # l i n e   4   4 
 
 / / -   C u r r e n t   U V   t i l e   i n d e x 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ u v t i l e _ i n d e x 
 u n i f o r m   u i n t   u v t i l e _ i n d e x ; 
 
 / / -   C u r r e n t   U V   t i l e   v i s i b i l i t y   g r i d   l o g 2   s i z e   i n   p i x e l s 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ s i z e _ l o g 2 
 u n i f o r m   u v e c 2   v i s i b i l i t y _ s i z e _ l o g 2 ; 
 
 / / -   C u r r e n t   U V   t i l e   i n d i c e s 
 / / :   p a r a m   a u t o   u v t i l e _ i n d i c e s 
 u n i f o r m   i v e c 2   u v t i l e _ i n d i c e s ; 
 
 
 / / -   R e t u r n   S V T   U V / L o D / U V T i l e   i n d e x   v i s i b i l i t y   i n f o r m a t i o n   f o r   c u r r e n t   f r a g m e n t 
 u v e c 4   v i s i b i l i t y U V O f F r a g m e n t ( v e c 2   t e x c o o r d ) 
 { 
 	 u v e c 4   r e s ; 
 
 	 f l o a t   l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x c o o r d ) ; 
 
 	 i f   ( u v t i l e _ i n d e x = = 0 u ) 
 	 { 
 	 	 r e s   =   u v e c 4 ( 0 u ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 / /   S e e   s v t / s v t v i s i b i l i t y r e n d e r . h 
 
 	 	 l o d   =   m i n ( l o d , 7 . 5 ) ; 
 	 	 f l o a t   l o d f l o o r   =   f l o o r ( l o d ) ; 
 	 	 u i n t   l o d u   =   u i n t ( l o d f l o o r ) ; 
 
 	 	 u v e c 2   g r i d s i z e l o g 2   =   v i s i b i l i t y _ s i z e _ l o g 2   -   m i n ( u v e c 2 ( l o d u ) , v i s i b i l i t y _ s i z e _ l o g 2 ) ;       / /   c u r r e n t   l e v e l   g r i d   s i z e 
 	 	 u v e c 2   g r i d s i z e u   =   u v e c 2 ( 1 u ) < < g r i d s i z e l o g 2 ; 
 	 	 u v e c 2   g r i d m a s k u   =   g r i d s i z e u - u v e c 2 ( 1 u ) ; 
 	 	 v e c 2   g r i d s i z e   =   v e c 2 ( g r i d s i z e u ) ; 
 	 	 v e c 2   i n v g r i d s i z e   =   e x p 2 ( - v e c 2 ( g r i d s i z e l o g 2 ) ) ; 
 
 	 	 v e c 2   p i x s i z e   =   u v t i l e _ i n v e r s e _ s i z e * e x p 2 ( l o d f l o o r ) ;                               / /   c u r r e n t   l e v e l   n r m   p i x e l   s i z e 
 
 	 	 v e c 2   t i l e c o o r d   =   t e x c o o r d - p i x s i z e * 0 . 5 ;                                                       / /   o n   t e x e l   c e n t e r 
 	 	 i f   ( u v t i l e _ i n d i c e s . x = = 0 x 7 F F F F F F F )   {                                                             / /   I n d i c a t e s   t h a t   r e p e a t   a d r e s s i n g   i s   u s e d   i n s t e a d   
 	 	 	 t i l e c o o r d   =   f r a c t ( t i l e c o o r d ) ;                                                                 / /   R E P E A T 
 	 	 }   e l s e   { 
 	 	 	 t i l e c o o r d   - =   v e c 2 ( u v t i l e _ i n d i c e s ) ;                                                       / /   T r   t o   U V   c o o r d i n a t e s   o f   t h e   t i l e 
 	 	 	 t i l e c o o r d   =   c l a m p ( t i l e c o o r d , 0 . 0 , 1 . 0 ) ;                                                 / /   C L A M P 
 	 	 } 
 
 	 	 b v e c 2   o n b o r d e r   =   l e s s T h a n ( 
 	 	 	 f r a c t ( t i l e c o o r d * g r i d s i z e ) * i n v g r i d s i z e ,                                               / /   O n   t o p l e f t   b o r d e r 
 	 	 	 p i x s i z e ) ; 
 
 	 	 r e s . x   =   ( o n b o r d e r . x   ?   0 x 8 0 u   :   0 x 0 0 u )   | 
 	 	 	 m i n ( u i n t ( t i l e c o o r d . x * g r i d s i z e . x ) , g r i d m a s k u . x ) ; 
 	 	 r e s . y   =   ( o n b o r d e r . y   ?   0 x 8 0 u   :   0 x 0 0 u )   | 
 	 	 	 m i n ( u i n t ( t i l e c o o r d . y * g r i d s i z e . y ) , g r i d m a s k u . y ) ; 
 	 	 r e s . z   =   ( ( u v t i l e _ i n d e x < < 4 u ) & 0 x F 0 u )   | 
 	 	 	 ( f r a c t ( l o d ) ! = 0 . 0   ?   0 x 0 8 u   :   0 x 0 0 u )   | 
 	 	 	 l o d u ; 
 	 	 r e s . w   =   ( u v t i l e _ i n d e x > > 4 u ) & 0 x F F u ; 
 	 } 
 
 	 r e t u r n   r e s ; 
 } 
 
 # l i n e   1 9   0 
 
 / /   A l p h a   t e s t   /   b l e n d 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   u v e c 4   o c o l o r 0 ; 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 v e c 2   t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 
 	 o c o l o r 0   =   v i s i b i l i t y U V O f F r a g m e n t ( t e x _ c o o r d ) ; 
 
 	 / /   I f   b l e n d   O R   a l p h a   t e s t :   d i s c a r d   w /   5 0 %   o f   p r o b a b i l i t y ,   b a s e d   o n   U V   h a s h 
 	 / /   i n s p i r e d   b y   m u r m u r h a s h 3   o u t r o 
 	 i f   ( a l g _ a l p h a _ t e s t )   { 
 	 	 u i n t   c   =   f l o a t B i t s T o U i n t ( t e x _ c o o r d . x ) ^ f l o a t B i t s T o U i n t ( t e x _ c o o r d . y ) ; 
 	 	 c   ^ =   c   > >   1 6 u ; 
 	 	 c   * =   0 x 8 5 e b c a 6 b u ; 
 	 	 c   ^ =   c   > >   1 3 u ; 
 	 	 c   * =   0 x c 2 b 2 a e 3 5 u ; 
 	 	 c   ^ =   c   > >   1 6 u ; 
 	 	 i f   ( ( c & 0 x 8 0 0 0 u ) ! = 0 u )   d i s c a r d ; 
 	 } 
 } 
   4 l a s t _ v a l i d _ f r a g m e n t _ s o u r c e   
  ?H # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # d e f i n e   S H A D E R _ F R A G M E N T 
 
 # l i n e   0   1 
 # i f d e f   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # e x t e n s i o n   G L _ A R B _ b i n d l e s s _ t e x t u r e   :   r e q u i r e 
 l a y o u t   ( b i n d l e s s _ s a m p l e r )   u n i f o r m ; 
 # e n d i f 
 
 # i f   _ _ V E R S I O N _ _   <   4 0 0 
 # e x t e n s i o n   G L _ A R B _ t e x t u r e _ q u e r y _ l o d   :   e n a b l e 
 # d e f i n e   t e x t u r e Q u e r y L o d ( S A M P L E R ,   P )   t e x t u r e Q u e r y L O D ( ( S A M P L E R ) ,   ( P ) ) 
 # e n d i f 
 # l i n e   9   0 
 
 # d e f i n e   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 
 # l i n e   0   2 
 / / -   s h a d e r - c o m m o n . f r a g . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` f i l l V 2 F ` 
 / / -   ` f i l l D e f a u l t O u t p u t s ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` V 2 F ` 
 / / -   ` O u t p u t s ` 
 
 # l i n e   0   3 
 / / -   l i b - s p a r s e . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   T h i s   f i l e   p r o v i d e s   u s e f u l   f u n c t i o n s   t o   e n s u r e   s p a r s e   t e x t u r e s   s a m p l i n g 
 / / -   c o r r e c t n e s s   ( A R B _ s p a r s e _ t e x t u r e ) . 
 / / -   A l l o w s   t o   s a m p l e   o n l y   p a r t   o f   t e x t u r e s   r e a l l y   p r e s e n t   i n   v i d e o   m e m o r y . 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S p a r s e C o o r d ` 
 / / -   ` g e t S p a r s e C o o r d L o d 0 ` 
 / / -   ` t e x t u r e S p a r s e Q u e r y L o d ` 
 / / -   ` t e x t u r e S p a r s e ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` S a m p l e r S p a r s e ` 
 / / -   ` S p a r s e C o o r d ` 
 / / - 
 / / -   T h e   ` F E A T U R E _ S P A R S E _ T E X T U R E `   m a c r o   i s   d e f i n e d   o n l y   i f   t h e   s p a r s e   v i r t u a l   t e x t u r e   e x t e n s i o n   i s   e n a b l e d . 
 / / - 
 / / -   I f   e n a b l e d ,   p r o c e s s   a d d i t i o n a l   t e x t u r e   l o o k u p   c h e c k s   t o   c l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g . 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ c h e c k _ n e e d e d 
 u n i f o r m   b o o l   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   =   f a l s e ; 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ m a s k 
 u n i f o r m   u s a m p l e r 2 D   m a t e r i a l _ l o d _ m a s k ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   u v t i l e _ r e f e r e n c e _ s a m p l e r 
 u n i f o r m   s a m p l e r 2 D   u v t i l e _ r e f e r e n c e _ s a m p l e r ; 
 / / :   p a r a m   a u t o   u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ i n v e r s e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ l o d _ b i a s 
 u n i f o r m   f l o a t   u v t i l e _ l o d _ b i a s ; 
 
 / / -   S a m p l e r   a n d   s p a r s e   t e x t u r e   i n f o r m a t i o n   s t r u c t u r e 
 / / - 
 / / -   U s e d   t o   q u e r y   a l l   s a m p l e r   r e l a t e d   u n i f o r m s   w i t h   a   s i n g l e   a u t o   b i n d i n g 
 s t r u c t   S a m p l e r S p a r s e   { 
     s a m p l e r 2 D   t e x ; 
     v e c 4   s i z e ;   / /   w i d t h ,   h e i g h t ,   1 / w i d t h ,   1 / h e i g h t 
     b o o l   i s _ s e t ;   / /   a   b o o l e a n   i n d i c a t i n g   w h e t h e r   t h e   t e x t u r e   i s   i n   t h e   t e x t u r e   s e t   o r   n o t 
     u v e c 3   l o d _ m a s k _ s e l e c t ;   / /   m a s k i n g   o p e r a t i o n s   d e s c r i p t i o n   a l l o w i n g   t o   r e t r i e v e   l o a d e d   m i p m a p s   i n f o r m a t i o n 
 } ; 
 
 / / -   S p a r s e   s a m p l i n g   c o o r d i n a t e s 
 / / - 
 / / -   S t o r e   t h e   U V   c o o r d i n a t e s   &   m a t e r i a l - w i s e   s p a r s e   L o D   m a s k 
 s t r u c t   S p a r s e C o o r d   { 
     v e c 2   t e x _ c o o r d ; 
     v e c 2   d f d x ; 
     v e c 2   d f d y ; 
     f l o a t   l o d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 f l o a t   g e t L o d F r o m R e f e r e n c e S a m p l e r ( v e c 2   t e x _ c o o r d ) 
 { 
 	 v e c 2   t e x c o o r d r e f   =   t e x _ c o o r d   *   ( u v t i l e _ s i z e   *   ( 1 . 0 / 1 0 2 4 . 0 ) ) ; 
 	 r e t u r n   m a x ( 0 . 0 , t e x t u r e Q u e r y L o d ( u v t i l e _ r e f e r e n c e _ s a m p l e r , t e x c o o r d r e f ) . y ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 u i n t   g e t T e x t u r e L o d M a s k ( u v e c 3   l o d M a s k S e l e c t ,   u i n t   m a t e r i a l L o d M a s k )   { 
     m a t e r i a l L o d M a s k   > > =   l o d M a s k S e l e c t . x ; 
     m a t e r i a l L o d M a s k   & =   l o d M a s k S e l e c t . y ; 
     m a t e r i a l L o d M a s k   | =   l o d M a s k S e l e c t . z ; 
     r e t u r n   m a t e r i a l L o d M a s k ; 
 } 
 
 f l o a t   g e t F i x e d S p a r s e L o d ( u i n t   l o d M a s k ,   f l o a t   r e q u e s t e d L o d )   { 
     r e q u e s t e d L o d   =   m a x ( r e q u e s t e d L o d , 0 . 0 ) ; 
     u i n t   r e q u e s t e d M a s k   =   ( 1 u < < u i n t ( r e q u e s t e d L o d ) )   |   ( 1 u < < u i n t ( c e i l ( r e q u e s t e d L o d ) ) ) ; 
     i f   ( ( r e q u e s t e d M a s k & l o d M a s k ) ! = r e q u e s t e d M a s k )   { 
         / /   I f   t h e   r e q u e s t e d   l e v e l s   a r e   n o t   l o a d e d ;   r e t u r n   t h e   f i r s t   a v a i l a b l e 
         l o d M a s k   & =   ~ ( l o d M a s k - 1 u ) ; 
         r e q u e s t e d L o d   =   l o g 2 ( f l o a t ( m a x ( l o d M a s k , 1 u ) ) ) ; 
     } 
     r e t u r n   r e q u e s t e d L o d ; 
 } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   [ D O C - O N ] 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   ( m u s t   b e   c a l l e d   f r o m   f r a g m e n t   s h a d e r ) 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   d F d x ( t e x _ c o o r d ) ; 
     r e s . d f d y   =   d F d y ( t e x _ c o o r d ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x _ c o o r d ) ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 # e n d i f 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   B a s e   l e v e l   s a m p l i n g   v e r s i o n   ( c a n   b e   u s e d   i f   o u t s i d e   f r a g m e n t   s h a d e r ) 
 S p a r s e C o o r d   g e t S p a r s e C o o r d L o d 0 ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   v e c 2 ( 0 . 0 ) ; 
     r e s . d f d y   =   v e c 2 ( 0 . 0 ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   0 . 0 ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 / / -   R e t u r n s   L o D   B E F O R E   L o D   b i a s   a p p l i e d 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     f l o a t   l o d f i x   =   c o o r d . l o d ; 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   l o d f i x ) ; 
     } 
     r e t u r n   l o d f i x - u v t i l e _ l o d _ b i a s ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y - u v t i l e _ l o d _ b i a s ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 / / -   C o m p u t e   t h e   d e r i v a t i v e s   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 v o i d   t e x t u r e S p a r s e Q u e r y G r a d ( o u t   v e c 2   d f d x ,   o u t   v e c 2   d f d y ,   S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         f l o a t   l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   c o o r d . l o d ) ; 
         i f   ( c o o r d . l o d ! = l o d f i x )   { 
             / /   F i x   d f d x   d f d y ,   t a k e   a c c o u n t   o f f s e t ,   n o   m o r e   a n i s o t r o p y 
             v e c 2   d d f i x   =   e x p 2 ( l o d f i x - u v t i l e _ l o d _ b i a s )   *   u v t i l e _ i n v e r s e _ s i z e ; 
             d f d x   =   v e c 2 ( d d f i x . x , 0 . 0 ) ; 
             d f d y   =   v e c 2 ( 0 . 0 , d d f i x . y ) ; 
             r e t u r n ; 
         } 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     d f d x   =   c o o r d . d f d x ; 
     d f d y   =   c o o r d . d f d y ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     r e t u r n   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   d f d x ,   d f d y ) ; 
 } 
 
 / / -   G i v e n   a   t e x t u r e ,   p e r f o r m s   a n   o p t i m i z e d   m u l t i p l e   t e x t u r e   l o o k u p s   w i t h   s m a l l   o f f s e t s 
 / / - 
 / / -   W e   a r e   p r o v i d i n g   a l t e r n a t i v e s   v e r s i o n s   o f   t h i s   h e l p e r   f o r   u p   t o   N = 4 
 
 / / -   [ D O C - O F F ] 
 / *   P r o v i d e   a   f a k e d   d o c u m e n t a t i o n   t o   b e   m o r e   r e a d a b l e   f o r   t h e   u s e r 
 / / -   [ D O C - O N ] 
 v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         v e c 2   d f d x , d f d y ;   \ 
         t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ;   \ 
         }   \ 
     } 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 1 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 2 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 3 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 4 ) 
 # u n d e f   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F 
 / / -   [ D O C - O N ] 
 # l i n e   1 2   2 
 
 / / -   D e t e r m i n e   i f   w e   r e c o m p u t e   t h e   t a n g e n t   f r a m e   p e r   p i x e l . 
 / / :   p a r a m   a u t o   p e r _ f r a g _ b i n o r m a l 
 u n i f o r m   b o o l   p e r F r a g B i n o r m a l ; 
 
 i n   v e c 3   v a r _ n o r m a l ; 
 i n   v e c 3   v a r _ t a n g e n t ; 
 i n   v e c 3   v a r _ b i t a n g e n t ; 
 i n   v e c 3   v a r _ p o s i t i o n ; 
 i n   v e c 4   v a r _ c o l o r ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 / / -   V 2 F   s t r u c t u r e   d e f i n i t i o n 
 s t r u c t   V 2 F   { 
     v e c 3   n o r m a l ; 
     v e c 3   t a n g e n t ; 
     v e c 3   b i t a n g e n t ; 
     v e c 3   p o s i t i o n ; 
     v e c 4   c o l o r [ 1 ] ; 
     v e c 2   t e x _ c o o r d ; 
     S p a r s e C o o r d   s p a r s e _ c o o r d ; 
     v e c 2   m u l t i _ t e x _ c o o r d [ 8 ] ; 
 } ; 
 
 / / -   F i l l   V 2 F   s t r u c t u r e   w i t h   v a r y i n g   v a r i a b l e s 
 v o i d   f i l l V 2 F ( o u t   V 2 F   i n p u t s )   { 
 	 i n p u t s . n o r m a l   =   v a r _ n o r m a l ; 
 	 i n p u t s . t a n g e n t   =   v a r _ t a n g e n t ; 
 	 i n p u t s . b i t a n g e n t   =   v a r _ b i t a n g e n t ; 
 	 i n p u t s . p o s i t i o n   =   v a r _ p o s i t i o n ; 
 	 i n p u t s . c o l o r [ 0 ]   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 0 ]   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ]   =   v a r _ t e x _ c o o r d 1 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 2 ]   =   v a r _ t e x _ c o o r d 2 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 3 ]   =   v a r _ t e x _ c o o r d 3 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 4 ]   =   v a r _ t e x _ c o o r d 4 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 5 ]   =   v a r _ t e x _ c o o r d 5 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 6 ]   =   v a r _ t e x _ c o o r d 6 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 7 ]   =   v a r _ t e x _ c o o r d 7 ; 
 
 	 / / -   R e c o m p u t e   t a n g e n t   s p a c e   t o   b e   c o m p a t i b l e   w i t h   U E 4 
 	 i f   ( p e r F r a g B i n o r m a l ) 
 	 { 
 	 	 v e c 3   p p b i t a n g e n t   =   c r o s s ( i n p u t s . n o r m a l ,   i n p u t s . t a n g e n t ) ; 
 	 	 i n p u t s . b i t a n g e n t   =   s i g n ( d o t ( i n p u t s . b i t a n g e n t ,   p p b i t a n g e n t ) )   *   p p b i t a n g e n t ; 
 	 } 
 } 
 
 / / -   U s e r   ' s h a d e '   f u n c t i o n   o u t p u t s 
 s t r u c t   O u t p u t s   { 
     f l o a t   a l p h a ; 
     v e c 3   d i f f u s e S h a d i n g ; 
     v e c 3   s p e c u l a r S h a d i n g ; 
     v e c 3   e m i s s i v e C o l o r ; 
     v e c 3   a l b e d o ; 
     v e c 4   s s s C o e f f i c i e n t s ; 
 } ; 
 
 / / -   M e c a n i s m   t o   f o r c e   d e a d   c o d e   r e m o v a l ,   n e c e s s a r y   a t   l e a s t   o n   O S X : 
 / / - 	 t h e   O u t p u t s   s t r u c t   i s   g l o b a l   a n d   f i e l d s   a r e   s e t   u s i n g   m a c r o s   . . . 
 O u t p u t s   o u t p u t s _ ; 
 
 v o i d   f i l l D e f a u l t O u t p u t s ( )   { 
 	 o u t p u t s _ . a l p h a                       =   1 . 0 ; 
 	 o u t p u t s _ . d i f f u s e S h a d i n g     =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . s p e c u l a r S h a d i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . e m i s s i v e C o l o r       =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . a l b e d o                     =   v e c 3 ( 1 . 0 ) ; 
 	 o u t p u t s _ . s s s C o e f f i c i e n t s   =   v e c 4 ( 0 . 0 ) ; 
 } 
 
 # i f d e f   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   a l p h a O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l p h a O u t p u t ( v )   o u t p u t s _ . a l p h a   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v )   o u t p u t s _ . d i f f u s e S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v )   o u t p u t s _ . s p e c u l a r S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v )   o u t p u t s _ . e m i s s i v e C o l o r   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   a l b e d o O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l b e d o O u t p u t ( v )   o u t p u t s _ . a l b e d o   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v )   o u t p u t s _ . s s s C o e f f i c i e n t s   =   ( v ) 
 # e n d i f 
 # l i n e   1 3   0 
 # l i n e   1 4   0 
 # l i n e   0   4 
 / / -   A l l e g o r i t h m i c   u t i l i t y   f u n c t i o n s 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   T o n e   m a p p i n g 
 / / -   - - - - - - - - - - - - 
 / / -   T h e s e   a r e   e x a m p l e s   o f   t o n e   m a p p i n g   y o u   c a n   u s e   i n   y o u r   s h a d e r .   P a i n t e r   d o e s n ' t   a p p l y   a n y 
 / / -   t o n e   m a p p i n g   e x c e p t   t h e   o p t i o n a l   o n e   a p p l i e d   b y   Y e b i s .   I f   y o u   d e c i d e   t o   d o   s o m e   t o n e   m a p p i n g 
 / / -   i n   y o u r   s h a d e r ,   i t   w i l l   b e   a p p l i e d   b e f o r e   Y e b i s   t o n e   m a p p i n g . 
 / / - 
 / / -   P e r f o r m   t h e   S - c u r v e   t o n e   m a p p i n g   b a s e d   o n   t h e   p a r a m e t e r s   s i g m a   a n d   n . 
 v e c 3   t o n e m a p S C u r v e ( v e c 3   v a l u e ,   f l o a t   s i g m a ,   f l o a t   n ) 
 { 
     v e c 3   p o w _ v a l u e   =   p o w ( v a l u e ,   v e c 3 ( n ) ) ; 
     r e t u r n   p o w _ v a l u e   /   ( p o w _ v a l u e   +   p o w ( s i g m a ,   n ) ) ; 
 } 
 
 / / -   s R G B   c o n v e r s i o n s 
 / / -   - - - - - - - - - - - - - - - - 
 / / -   T h e s e   a r e   t h e   c o n v e r s i o n s   u s e d   i n   P a i n t e r .   Y o u   c a n   o v e r r i d e   t h e   a u t o m a t i c   l i n e a r   - >   s R G B 
 / / -   c o n v e r s i o n   i n   t h e   v i e w p o r t   b y   p u t t i n g   t h i s   l i n e   i n   y o u r   c u s t o m   s h a d e r : 
 / / - 
 / / -   ` # d e f i n e   D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ` 
 / / - 
 / / -   a n d   d o i n g   y o u r   o w n   c u s t o m   c o n v e r s i o n . 
 / / - 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   s R G B 2 l i n e a r ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 4 0 4 5   ? 
         x   *   0 . 0 7 7 3 9 9 3 8 0 8   :   / /   1 . 0 / 1 2 . 9 2 
         p o w ( ( x   +   0 . 0 5 5 )   /   1 . 0 5 5 ,   2 . 4 ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   s R G B 2 l i n e a r ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
         s R G B 2 l i n e a r ( r g b . r ) , 
         s R G B 2 l i n e a r ( r g b . g ) , 
         s R G B 2 l i n e a r ( r g b . b ) ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   s R G B 2 l i n e a r ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( s R G B 2 l i n e a r ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   l i n e a r 2 s R G B ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
             1 2 . 9 2   *   x   : 
             1 . 0 5 5   *   p o w ( x ,   0 . 4 1 6 6 6 )   -   0 . 0 5 5 ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
             l i n e a r 2 s R G B ( r g b . r ) , 
             l i n e a r 2 s R G B ( r g b . g ) , 
             l i n e a r 2 s R G B ( r g b . b ) ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( l i n e a r 2 s R G B ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   S c a l a r   v e r s i o n . 
 / / :   p a r a m   a u t o   c o n v e r s i o n _ l i n e a r _ t o _ s r g b 
 u n i f o r m   b o o l   c o n v e r t _ t o _ s r g b _ o p t ; 
 f l o a t   l i n e a r 2 s R G B O p t ( f l o a t   x ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( x )   :   x ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B O p t ( v e c 3   r g b ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b )   :   r g b ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B O p t ( v e c 4   r g b a ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b a )   :   r g b a ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 u n i f o r m   i n t   o u t p u t _ c o n v e r s i o n _ m e t h o d ; 
 f l o a t   c o n v e r t O u t p u t ( f l o a t   x ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   x ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( x ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( x ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   c o n v e r t O u t p u t ( v e c 3   r g b ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   c o n v e r t O u t p u t ( v e c 4   r g b a ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b a ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b a ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b a ) ; 
 } 
 
 / / -   D i t h e r i n g 
 / / -   - - - - - - - - - 
 / / -   T h e s e   a r e   s o m e   h e l p e r s   t o   a d d   d i t h e r i n g   t o   s h a d e r s . 
 / / - 
 / / -   U s e   8 x 8   B a y e r   m a t r i x   f o r   d i t h e r i n g   m o d e 
 # l i n e   0   5 
 / / -   l i b - b a y e r . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` b a y e r M a t r i x 8 ` 
 / / - 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 u i n t   r e v e r s e B i t s ( u i n t   i )   { 
     i   =   ( i   &   0 x A A A A A A A A u )   > >   1 u   |   ( i   &   0 x 5 5 5 5 5 5 5 5 u )   < <   1 u ; 
     i   =   ( i   &   0 x C C C C C C C C u )   > >   2 u   |   ( i   &   0 x 3 3 3 3 3 3 3 3 u )   < <   2 u ; 
     i   =   ( i   &   0 x 0 0 0 0 0 0 C 0 u )   > >   6 u   |   ( i   &   0 x 0 0 0 0 0 0 0 F u )   < <   2 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   s t r i d e B i t s ( u i n t   i )   { 
     i   =   ( i   |   ( i   < <   4 u ) )   &   0 x 0 F 0 F 0 F 0 F u ; 
     i   =   ( i   |   ( i   < <   2 u ) )   &   0 x 3 3 3 3 3 3 3 3 u ; 
     i   =   ( i   |   ( i   < <   1 u ) )   &   0 x 5 5 5 5 5 5 5 5 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   i n t e r l e a v e B i t s ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   s t r i d e B i t s ( i )   |   ( s t r i d e B i t s ( j )   < <   1 ) ; 
 } 
 
 u i n t   b a y e r ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   r e v e r s e B i t s ( i n t e r l e a v e B i t s ( i   ^   j ,   j ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 f l o a t   b a y e r M a t r i x 8 ( u v e c 2   c o o r d s )   { 
     r e t u r n   ( f l o a t ( b a y e r ( c o o r d s . x ,   c o o r d s . y ) )   +   0 . 5 )   /   6 4 . 0 ; 
 } 
 # l i n e   1 2 2   4 
 
 f l o a t   g e t D i t h e r T h r e s h o l d ( u v e c 2   c o o r d s ) 
 { 
     r e t u r n   b a y e r M a t r i x 8 ( c o o r d s ) ; 
 } 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 / /   d i t h e r   a   c o l o r   p o s t   c o l o r   m a n a g e m e n t 
 v e c 4   d i t h e r P o s t C M ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   v e c 3 ( d i t h e r ) ,   c o l o r . a ) ; 
 } 
 
 / /   1 . 0 / d e r i v a t i v e   o f   l i n e a r 2 s R G B   t r a n s f o r m . 
 / /   I n t u i t i v e l y   i t   a l l o w s   t o   g e t   a   k i n d   o f   a   l i n e a r   " s t e p "   b e t w e e n   t w o 
 / /   c o n s e c u t i v e   s R G B   i n t e n s i t i e s . 
 f l o a t   l i n e a r 2 s R G B I n v D e r i v ( f l o a t   x )   { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
         1 . 0   /   1 2 . 9 2   : 
         ( 2 . 4   /   1 . 0 5 5 )   *   p o w ( x ,   1 . 4   /   2 . 4 ) ; 
 } 
 
 / /   d i t h e r   a   c o l o r   a f t e r   c o l o r   m a n a g e m e n t   e x c e p t   s R G B   c o n v e r s i o n   t h a t   w i l l   b e 
 / /   d o n e   l a t e r 
 v e c 4   d i t h e r P r e S R G B ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     v e c 3   d e r i v   =   v e c 3 ( 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . r ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . g ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . b ) ) ; 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   d i t h e r   *   d e r i v ,   c o l o r . a ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 v e c 4   R G B 2 G r a y ( v e c 4   r g b a ) 
 { 
     f l o a t   g r a y   =   0 . 2 9 9   *   r g b a . r   +   0 . 5 8 7   *   r g b a . g   +   0 . 1 1 4   *   r g b a . b ; 
     r e t u r n   v e c 4 ( v e c 3 ( g r a y ) ,   r g b a . a ) ; 
 } 
 
 / / -   R e m o v e   A O   a n d   s h a d o w s   o n   g l o s s y   m e t a l l i c   s u r f a c e s   ( c l o s e   t o   m i r r o r s ) 
 f l o a t   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( f l o a t   d i f f u s e O c c l u s i o n ,   f l o a t   m e t a l l i c ,   f l o a t   r o u g h n e s s ) 
 { 
     r e t u r n   m i x ( d i f f u s e O c c l u s i o n ,   1 . 0 ,   m e t a l l i c   *   ( 1 . 0   -   r o u g h n e s s )   *   ( 1 . 0   -   r o u g h n e s s ) ) ; 
 } 
 # l i n e   1 5   0 
 c o n s t   v e c 4   Q U I C K _ M A S K _ C O L O R   =   v e c 4 ( 0 . 0 ,   0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e n a b l e 
 u n i f o r m   b o o l   a l g _ h a s _ s e l e c t i o n ; 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e d i t e d 
 u n i f o r m   b o o l   a l g _ s e l e c t i o n _ i s _ e d i t e d ; 
 / / :   p a r a m   a u t o   t e x t u r e _ s e l e c t i o n 
 u n i f o r m   s a m p l e r 2 D   a l g _ s e l e c t i o n _ t e x ; 
 / / :   p a r a m   a u t o   d i t h e r 
 u n i f o r m   b o o l   a l g _ d i t h e r ; 
 / /   A l p h a   t e s t   e m u l a t i o n 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   v e c 4   o c o l o r 0 ; 
 
 # l i n e   0   6 
 / / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 / /   V - R a y   S h a d e r s   f o r   S u b s t a n c e   P a i n t e r 
 / /   
 / /   C o p y r i g h t   ( c )   2 0 2 0   C h a o s   S o f t w a r e   L t d 
 / /   
 / /   P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y 
 / /   o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l 
 / /   i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s 
 / /   t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l 
 / /   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s 
 / /   f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 / /   
 / /   T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n   a l l 
 / /   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 / /   
 / /   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S   O R 
 / /   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , 
 / /   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E 
 / /   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R 
 / /   L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , 
 / /   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E 
 / /   S O F T W A R E . 
 / / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 
 / / -   S u b s t a n c e   P a i n t e r   V R a y M t l   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 
 / / -   C h a n n e l s   n e e d e d   f o r   m e t a l / r o u g h   w o r k f l o w   a r e   b o u n d   h e r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ t r a n s m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   t r a n s m i s s i v e _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ e m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   e m i s s i v e _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y a n g l e 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y a n g l e _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y l e v e l _ t e x ; 
 
 # l i n e   0   7 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   0   8 
 / / -   l i b - d e f i n e s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   C o n s t a n t s : * * 
 / / -   ` M _ P I ` 
 / / -   ` M _ 2 P I ` 
 / / -   ` M _ I N V _ P I ` 
 / / -   ` M _ I N V _ L O G 2 ` 
 / / -   ` M _ G O L D E N _ R A T I O ` 
 / / - 
 / / -   S o m e   u s e f u l   c o n s t a n t s 
 c o n s t   f l o a t   M _ P I   =   3 . 1 4 1 5 9 2 6 5 ; 
 c o n s t   f l o a t   M _ 2 P I   =   2 . 0   *   M _ P I ; 
 c o n s t   f l o a t   M _ I N V _ P I   =   0 . 3 1 8 3 0 9 8 8 ; 
 c o n s t   f l o a t   M _ I N V _ L O G 2   =   1 . 4 4 2 6 9 5 ; 
 c o n s t   f l o a t   M _ G O L D E N _ R A T I O   =   1 . 6 1 8 0 3 4 ; 
 
 / / -   B l e n d i n g   m o d e s   c o n s t a n t s 
 c o n s t   i n t   B l e n d i n g M o d e _ D i s a b l e                         =     0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ R e p l a c e                         =     1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N o r m a l                           =     2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D a r k e n                           =     3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ M u l t i p l y                       =     4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r B u r n                     =     5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r B u r n                   =     6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i g h t e n                         =     7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S c r e e n                           =     8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r D o d g e                   =     9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r D o d g e                 =   1 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ O v e r l a y                         =   1 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S o f t L i g h t                     =   1 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ H a r d L i g h t                     =   1 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V i v i d L i g h t                   =   1 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r L i g h t                 =   1 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P i n L i g h t                       =   1 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i f f e r e n c e                   =   1 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ E x c l u s i o n                     =   1 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ T i n t                               =   1 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S a t u r a t i o n                   =   2 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r                             =   2 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V a l u e                             =   2 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i v i d e                           =   2 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e D i v i d e             =   2 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P a s s t h r u                       =   2 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ C o m b i n e                   =   2 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ O r i e n t e d                 =   2 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ I n v e r s e O r i e n t e d   =   2 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S u b t r a c t                       =   2 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e S u b t r a c t         =   3 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ A d d S u b                           =   3 1 ; 
 # l i n e   9   7 
 
 / / -   E n g i n e   p r o v i d e d   p a r a m e t e r s 
 / / :   p a r a m   a u t o   t e x t u r e _ e n v i r o n m e n t 
 u n i f o r m   s a m p l e r 2 D   e n v i r o n m e n t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ r o t a t i o n 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ r o t a t i o n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ e x p o s u r e 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ e x p o s u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ r e d 
 u n i f o r m   m a t 4   i r r a d _ m a t _ r e d ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ g r e e n 
 u n i f o r m   m a t 4   i r r a d _ m a t _ g r e e n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ b l u e 
 u n i f o r m   m a t 4   i r r a d _ m a t _ b l u e ; 
 
 
 / / -   H e l p e r   t h a t   a l l o w s   o n e   t o   s a m p l e   e n v i r o n m e n t .   R o t a t i o n   i s   t a k e n   i n t o 
 / / -   a c c o u n t .   T h e   e n v i r o n m e n t   m a p   i s   a   p a n o r a m i c   e n v   m a p   b e h i n d   t h e   s c e n e , 
 / / -   t h a t ' s   w h y   t h e r e   i s   e x t r a   c o m p u t a t i o n   f r o m   d i r   v e c t o r . 
 v e c 3   e n v S a m p l e L O D ( v e c 3   d i r ,   f l o a t   l o d ) 
 { 
     / /   W O R K A R O U N D :   I n t e l   G L S L   c o m p i l e r   f o r   H D 5 0 0 0   i s   b u g g e d   o n   O S X : 
     / /   h t t p s : / / b u g s . c h r o m i u m . o r g / p / c h r o m i u m / i s s u e s / d e t a i l ? i d = 3 0 8 3 6 6 
     / /   I t   i s   n e c e s s a r y   t o   r e p l a c e   a t a n ( y ,   - x )   b y   a t a n ( y ,   - 1 . 0   *   x )   t o   f o r c e 
     / /   t h e   s e c o n d   p a r a m e t e r   t o   b e   i n t e r p r e t e d   a s   a   f l o a t 
     v e c 2   p o s   =   M _ I N V _ P I   *   v e c 2 ( a t a n ( - d i r . z ,   - 1 . 0   *   d i r . x ) ,   2 . 0   *   a s i n ( d i r . y ) ) ; 
     p o s   =   0 . 5   *   p o s   +   v e c 2 ( 0 . 5 ) ; 
     p o s . x   + =   e n v i r o n m e n t _ r o t a t i o n ; 
     r e t u r n   t e x t u r e L o d ( e n v i r o n m e n t _ t e x t u r e ,   p o s ,   l o d ) . r g b   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 
 / / -   R e t u r n   t h e   i r r a d i a n c e   f o r   a   g i v e n   d i r e c t i o n .   T h e   c o m p u t a t i o n   i s   b a s e d   o n 
 / / -   e n v i r o n m e n t ' s   s p h e r i c a l   h a r m o n i c s   p r o j e c t i o n . 
 v e c 3   e n v I r r a d i a n c e ( v e c 3   d i r ) 
 { 
     f l o a t   r o t   =   e n v i r o n m e n t _ r o t a t i o n   *   M _ 2 P I ; 
     f l o a t   c r o t   =   c o s ( r o t ) ; 
     f l o a t   s r o t   =   s i n ( r o t ) ; 
     v e c 4   s h D i r   =   v e c 4 ( d i r . x z y ,   1 . 0 ) ; 
     s h D i r   =   v e c 4 ( 
         s h D i r . x   *   c r o t   -   s h D i r . y   *   s r o t , 
         s h D i r . x   *   s r o t   +   s h D i r . y   *   c r o t , 
         s h D i r . z , 
         1 . 0 ) ; 
     r e t u r n   m a x ( v e c 3 ( 0 . 0 ) ,   v e c 3 ( 
             d o t ( s h D i r ,   i r r a d _ m a t _ r e d   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ g r e e n   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ b l u e   *   s h D i r ) 
         ) )   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 # l i n e   4 4   6 
 # l i n e   0   9 
 / / -   l i b - r a n d o m . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d ` 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ` 
 / / -   ` f i b o n a c c i 1 D ` 
 / / -   ` f i b o n a c c i 2 D ` 
 / / -   ` f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 2   9 
 
 / / -   A   2 D   b l u e   n o i s e   t e x t u r e   c o n t a i n i n g   s c a l a r   v a l u e s 
 / / :   p a r a m   a u t o   t e x t u r e _ b l u e _ n o i s e 
 u n i f o r m   s a m p l e r 2 D   t e x t u r e _ b l u e _ n o i s e ; 
 
 / / -   B l u e   n o i s e   t e x t u r e   r e s o l u t i o n 
 c o n s t   i v e c 2   t e x t u r e _ b l u e _ n o i s e _ s i z e   =   i v e c 2 ( 2 5 6 ) ; 
 
 / / -   C u r r e n t   f r a m e   r a n d o m   s e e d 
 / / :   p a r a m   a u t o   r a n d o m _ s e e d 
 u n i f o r m   i n t   a l g _ r a n d o m _ s e e d ; 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d ( ) 
 { 
     r e t u r n   t e x t u r e ( t e x t u r e _ b l u e _ n o i s e ,   g l _ F r a g C o o r d . x y   /   v e c 2 ( t e x t u r e _ b l u e _ n o i s e _ s i z e ) ) . x   +   0 . 5   /   6 5 5 3 6 . 0 ; 
 } 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s   a n d   f r a m e   i d . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) 
 { 
     r e t u r n   f r a c t ( g e t B l u e N o i s e T h r e s h o l d ( )   +   M _ G O L D E N _ R A T I O   *   a l g _ r a n d o m _ s e e d ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   n u m b e r   f r o m   f i b o n a c c i   s e q u e n c e . 
 f l o a t   f i b o n a c c i 1 D ( i n t   i ) 
 { 
     r e t u r n   f r a c t ( ( f l o a t ( i )   +   1 . 0 )   *   M _ G O L D E N _ R A T I O ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 v e c 2   f i b o n a c c i 2 D ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     r e t u r n   v e c 2 ( 
         ( f l o a t ( i ) + 0 . 5 )   /   f l o a t ( n b S a m p l e s ) , 
         f i b o n a c c i 1 D ( i ) 
     ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 / / -   T h i s   v e r s i o n   h a s   a   p e r   f r a m e   a n d   p e r   p i x e l   p s e u d o - r a n d o m   r o t a t i o n   a p p l i e d . 
 v e c 2   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     v e c 2   s   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
     s . x   + =   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) ; 
     r e t u r n   s ; 
 } 
 # l i n e   4 5   6 
 # l i n e   0   1 0 
 / / -   l i b - s a m p l e r . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t A O ` 
 / / -   ` g e t S h a d o w F a c t o r ` 
 / / -   ` g e t G l o s s i n e s s ` 
 / / -   ` g e t R o u g h n e s s ` 
 / / -   ` g e t M e t a l l i c ` 
 / / -   ` g e t A n i s o t r o p y L e v e l ` 
 / / -   ` g e t A n i s o t r o p y A n g l e ` 
 / / -   ` g e t O p a c i t y ` 
 / / -   ` g e t H e i g h t ` 
 / / -   ` g e t D i s p l a c e m e n t ` 
 / / -   ` g e t S p e c u l a r L e v e l ` 
 / / -   ` g e t B a s e C o l o r ` 
 / / -   ` g e t D i f f u s e ` 
 / / -   ` g e t S p e c u l a r C o l o r ` 
 / / -   ` g e t S c a t t e r i n g ` 
 / / -   ` g e n e r a t e A n i s o t r o p i c R o u g h n e s s ` 
 / / -   ` g e n e r a t e D i f f u s e C o l o r ` 
 / / -   ` g e n e r a t e S p e c u l a r C o l o r ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   2 5   1 0 
 # l i n e   2 6   1 0 
 
 / / -   D e f a u l t   b a c k g r o u n d   c o l o r s   w h e n   t h e r e   i s   n o   d a t a   i n   c h a n n e l   ( a l p h a   i s   0 ) 
 c o n s t   v e c 3     D E F A U L T _ B A S E _ C O L O R               =   v e c 3 ( 0 . 5 ) ; 
 c o n s t   f l o a t   D E F A U L T _ R O U G H N E S S                 =   0 . 3 ; 
 c o n s t   f l o a t   D E F A U L T _ M E T A L L I C                   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ L E V E L   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ A N G L E   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ O P A C I T Y                     =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A O                               =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S P E C U L A R _ L E V E L       =   0 . 5 ; 
 c o n s t   f l o a t   D E F A U L T _ H E I G H T                       =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ D I S P L A C E M E N T           =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S C A T T E R I N G               =   0 . 0 ; 
 
 / / -   A O   m a p . 
 / / :   p a r a m   a u t o   a o _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   a o _ b l e n d i n g _ m o d e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ a o 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ a o _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a o 
 u n i f o r m   S a m p l e r S p a r s e   a o _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   A m b i e n t   O c c l u s i o n   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 7 5 , 
 / / :       " l a b e l " :   " A O   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a o _ i n t e n s i t y ; 
 
 / / -   S h a d o w m a s k . 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ e n a b l e 
 u n i f o r m   b o o l   s m _ e n a b l e ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ o p a c i t y 
 u n i f o r m   f l o a t   s m _ o p a c i t y ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k 
 u n i f o r m   s a m p l e r 2 D   s m _ t e x ; 
 / / :   p a r a m   a u t o   s c r e e n _ s i z e 
 u n i f o r m   v e c 4   s c r e e n _ s i z e ; 
 
 / / -   R e t u r n   s a m p l e d   g l o s s i n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t G l o s s i n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   ( 1 . 0   -   D E F A U L T _ R O U G H N E S S )   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t G l o s s i n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t G l o s s i n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   r o u g h n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t R o u g h n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ R O U G H N E S S   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t R o u g h n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t R o u g h n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   m e t a l l i c   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t M e t a l l i c ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ M E T A L L I C   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t M e t a l l i c ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t M e t a l l i c ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   l e v e l   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A n i s o t r o p y L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   a n g l e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y A n g l e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   M _ 2 P I   *   ( s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ A N G L E   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y A n g l e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     / /   M a n u a l   t r i l i n e a r   f i l t e r i n g 
     f l o a t   l e v e l   =   m a x ( 0 . 0 ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d )   +   u v t i l e _ l o d _ b i a s ) ; 
     i n t   l e v e l 0   =   i n t ( l e v e l ) ; 
     i n t   l e v e l 1   =   l e v e l 0   +   1 ; 
 
     i v e c 2   t e x S i z e 0   =   i v e c 2 ( s a m p l e r . s i z e . x y )   > >   l e v e l 0 ; 
     i v e c 2   t e x S i z e 1   =   t e x S i z e 0   > >   1 ; 
     i v e c 2   i t e x _ c o o r d 0   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 ) ) ; 
     i v e c 2   i t e x _ c o o r d 1   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 ) ) ; 
 
     / /   A s s u m i n g   t e x   s i z e s   a r e   p o w   o f   2 ,   w e   c a n   d o   t h e   f a s t   m o d u l o 
     i v e c 2   t e x S i z e M a s k 0   =   t e x S i z e 0   -   i v e c 2 ( 1 ) ; 
     i v e c 2   t e x S i z e M a s k 1   =   t e x S i z e 1   -   i v e c 2 ( 1 ) ; 
 
     / /   F e t c h   t h e   8   s a m p l e s   n e e d e d 
     f l o a t   a 0 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 0                                 &   t e x S i z e M a s k 0 ,   l e v e l 0 ) ) ; 
     f l o a t   a 0 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 1                                 &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
 
     / /   D e t e c t   i f   t h e   a n g l e   w a r p s   i n s i d e   t h e   f i l t e r i n g   f o o t p r i n t ,   a n d   f i x   i t 
     a 0 0 1   + =   a b s ( a 0 0 1 )   >   M _ P I   ?   s i g n ( a 0 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 0   + =   a b s ( a 0 1 0 )   >   M _ P I   ?   s i g n ( a 0 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 1   + =   a b s ( a 0 1 1 )   >   M _ P I   ?   s i g n ( a 0 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 0   + =   a b s ( a 1 0 0 )   >   M _ P I   ?   s i g n ( a 1 0 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 1   + =   a b s ( a 1 0 1 )   >   M _ P I   ?   s i g n ( a 1 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 0   + =   a b s ( a 1 1 0 )   >   M _ P I   ?   s i g n ( a 1 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 1   + =   a b s ( a 1 1 1 )   >   M _ P I   ?   s i g n ( a 1 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
 
     / /   T r i l i n e a r   b l e n d i n g   o f   t h e   s a m p l e s 
     v e c 2   t 0   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 )   -   v e c 2 ( i t e x _ c o o r d 0 ) ; 
     v e c 2   t 1   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 )   -   v e c 2 ( i t e x _ c o o r d 1 ) ; 
     r e t u r n   m i x ( 
         m i x ( m i x ( a 0 0 0 ,   a 0 0 1 ,   t 0 . x ) ,   m i x ( a 0 1 0 ,   a 0 1 1 ,   t 0 . x ) ,   t 0 . y ) , 
         m i x ( m i x ( a 1 0 0 ,   a 1 0 1 ,   t 1 . x ) ,   m i x ( a 1 1 0 ,   a 1 1 1 ,   t 1 . x ) ,   t 1 . y ) , 
         l e v e l   -   f l o a t ( l e v e l 0 ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   o p a c i t y   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t O p a c i t y ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ O P A C I T Y   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t O p a c i t y ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t O p a c i t y ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   h e i g h t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t H e i g h t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ H E I G H T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t H e i g h t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t H e i g h t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i s p l a c e m e n t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t D i s p l a c e m e n t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ D I S P L A C E M E N T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t D i s p l a c e m e n t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i s p l a c e m e n t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   a m b i e n t   o c c l u s i o n 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     v e c 2   a o _ l o o k u p   =   t e x t u r e S p a r s e ( b a s e _ a o _ t e x ,   c o o r d ) . r a ; 
     f l o a t   a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
 
     i f   ( a o _ t e x . i s _ s e t )   { 
         a o _ l o o k u p   =   t e x t u r e S p a r s e ( a o _ t e x ,   c o o r d ) . r g ; 
         i f   ( ! i s _ p r e m u l t )   a o _ l o o k u p . x   * =   a o _ l o o k u p . y ; 
         f l o a t   c h a n n e l _ a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
         i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             a o   =   c h a n n e l _ a o ; 
         }   e l s e   i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ M u l t i p l y )   { 
             a o   * =   c h a n n e l _ a o ; 
         } 
     } 
 
     / /   M o d u l a t e   A O   v a l u e   b y   A O _ i n t e n s i t y 
     r e t u r n   m i x ( 1 . 0 ,   a o ,   a o _ i n t e n s i t y ) ; 
 } 
 
 / / -   H e l p e r   t o   g e t   a m b i e n t   o c c l u s i o n   f o r   s h a d i n g 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A O ( c o o r d ,   t r u e ) ; 
 } 
 
 / / -   R e t u r n   s p e c u l a r   l e v e l 
 f l o a t   g e t S p e c u l a r L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S P E C U L A R _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S p e c u l a r L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   F e t c h   t h e   s h a d o w i n g   f a c t o r   ( s c r e e n - s p a c e ) 
 f l o a t   g e t S h a d o w F a c t o r ( ) 
 { 
     f l o a t   s h a d o w F a c t o r   =   1 . 0 ; 
 
     i f   ( s m _ e n a b l e )   { 
         v e c 2   s c r e e n C o o r d   =   ( g l _ F r a g C o o r d . x y   *   v e c 2 ( s c r e e n _ s i z e . z ,   s c r e e n _ s i z e . w ) ) ; 
         v e c 2   s h a d o w S a m p l e   =   t e x t u r e ( s m _ t e x ,   s c r e e n C o o r d ) . x y ; 
         / /   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y   i s   t h e   n o r m a l i z e d   s h a d o w   f a c t o r . 
         / /   s h a d o w S a m p l e . x   m a y   a l r e a d y   b e   n o r m a l i z e d ,   s h a d o w S a m p l e . y   c o n t a i n s   0 . 0   i n   t h i s   c a s e . 
         s h a d o w F a c t o r   =   s h a d o w S a m p l e . y   = =   0 . 0   ?   s h a d o w S a m p l e . x   :   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y ; 
     } 
 
     r e t u r n   m i x ( 1 . 0 ,   s h a d o w F a c t o r ,   s m _ o p a c i t y ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   b a s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t B a s e C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
 } 
 
 v e c 3   g e t B a s e C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i f f u s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t D i f f u s e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( s a m p l e d V a l u e ) ; 
 } 
 
 v e c 3   g e t D i f f u s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i f f u s e ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s p e c u l a r   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t S p e c u l a r C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     v e c 3   s p e c C o l o r   =   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
     v e c 3   d e f a u l t F 0   =   m i x ( v e c 3 ( 0 . 0 4 ) ,   s p e c C o l o r ,   D E F A U L T _ M E T A L L I C ) ; 
     r e t u r n   m i x ( s p e c C o l o r ,   d e f a u l t F 0 ,   ( 1 . 0   -   s a m p l e d V a l u e . a ) ) ; 
 } 
 
 v e c 3   g e t S p e c u l a r C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G e n e r a t e   a n i s o t r o p i c   r o u g h n e s s   f r o m   r o u g h n e s s   a n d   a n i s o t r o p y   l e v e l 
 v e c 2   g e n e r a t e A n i s o t r o p i c R o u g h n e s s ( f l o a t   r o u g h n e s s ,   f l o a t   a n i s o L e v e l ) 
 { 
     r e t u r n   v e c 2 ( r o u g h n e s s ,   r o u g h n e s s   /   s q r t ( m a x ( 1 e - 8 ,   1 . 0   -   a n i s o L e v e l ) ) ) ; 
 } 
 
 / / -   G e n e r a t e   d i f f u s e   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e D i f f u s e C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   b a s e C o l o r   *   ( 1 . 0   -   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   d i e l e c t r i c   s p e c u l a r   l e v e l ,   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( f l o a t   s p e c u l a r L e v e l ,   v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 8   *   s p e c u l a r L e v e l ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r ,   u s i n g   d e f a u l t 
 / / -   s p e c u l a r   l e v e l   ( 0 . 0 4 )   f o r   d i e l e c t r i c s 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 4 ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s c a t t e r i n g   v a l u e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t S c a t t e r i n g ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S C A T T E R I N G   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S c a t t e r i n g ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S c a t t e r i n g ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 # d e f i n e   D E C L A R E _ D E P R E C A T E D _ H E L P E R ( N A M E ,   T Y P E )   \ 
     T Y P E   g e t # # N A M E ( s a m p l e r 2 D   t e x ,   v e c 2   t e x _ c o o r d )   {   \ 
         r e t u r n   g e t # # N A M E ( t e x t u r e ( t e x ,   t e x _ c o o r d ) ) ;   \ 
     } 
 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( G l o s s i n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( R o u g h n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( M e t a l l i c ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y A n g l e ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( O p a c i t y ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( H e i g h t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i s p l a c e m e n t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( B a s e C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i f f u s e ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S c a t t e r i n g ,   f l o a t ) 
 
 # u n d e f   D E C L A R E _ D E P R E C A T E D _ H E L P E R 
 
 / /   N o t   t r i v i a l   w r a p p e r 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   i s _ p r e m u l t ) ; 
 } 
 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   4 6   6 
 # l i n e   4 7   6 
 # l i n e   0   1 1 
 / / -   l i b - v e c t o r s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` c o m p u t e L o c a l F r a m e ` 
 / / -   ` g e t E y e V e c ` 
 / / -   ` t a n g e n t S p a c e T o W o r l d S p a c e ` 
 / / -   ` w o r l d S p a c e T o T a n g e n t S p a c e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 2 
 / / -   l i b - n o r m a l . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l B l e n d ` 
 / / -   ` n o r m a l B l e n d O r i e n t e d ` 
 / / -   ` n o r m a l F a d e ` 
 / / -   ` n o r m a l U n p a c k ` 
 / / -   ` n o r m a l F r o m B a s e N o r m a l ` 
 / / -   ` n o r m a l F r o m N o r m a l ` 
 / / -   ` n o r m a l F r o m H e i g h t ` 
 / / -   ` g e t T S N o r m a l ` 
 / / -   ` c o m p u t e W S B a s e N o r m a l ` 
 / / -   ` c o m p u t e W S N o r m a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 7   1 2 
 # l i n e   1 8   1 2 
 
 / / -   A l l   e n g i n e   p a r a m e t e r s   u s e f u l   f o r   n o r m a l - c e n t r i c   o p e r a t i o n s . 
 / / :   p a r a m   a u t o   c h a n n e l _ h e i g h t 
 u n i f o r m   S a m p l e r S p a r s e   h e i g h t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   c h a n n e l _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   n o r m a l _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   n o r m a l _ b l e n d i n g _ m o d e ; 
 / / -   U s e d   t o   i n v e r t   t h e   Y   a x i s   o f   t h e   n o r m a l   m a p 
 / / :   p a r a m   a u t o   n o r m a l _ y _ c o e f f 
 u n i f o r m   f l o a t   b a s e _ n o r m a l _ y _ c o e f f ; 
 
 / / -   E m p i r i c a l l y   d e t e r m i n e d   b y   o u r   a r t i s t s . . . 
 c o n s t   f l o a t   H E I G H T _ F A C T O R   =   4 0 0 . 0 ; 
 
 / / -   P e r f o r m   t h e   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   W h i t e o u t   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     r e t u r n   n o r m a l i z e ( v e c 3 ( 
         b a s e N o r m a l . x y   +   o v e r N o r m a l . x y , 
         b a s e N o r m a l . z     *   o v e r N o r m a l . z ) ) ; 
 } 
 
 / / -   P e r f o r m   a   d e t a i l   o r i e n t e d   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   D e t a i l   O r i e n t e d   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d O r i e n t e d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     b a s e N o r m a l . z   + =   1 . 0 ; 
     o v e r N o r m a l . x y   =   - o v e r N o r m a l . x y ; 
     r e t u r n   n o r m a l i z e ( b a s e N o r m a l   *   d o t ( b a s e N o r m a l , o v e r N o r m a l )   - 
         o v e r N o r m a l * b a s e N o r m a l . z ) ; 
 } 
 
 / / -   R e t u r n s   a   n o r m a l   f l a t t e n e d   b y   a n   a t t e n u a t i o n   f a c t o r 
 v e c 3   n o r m a l F a d e ( v e c 3   n o r m a l , f l o a t   a t t e n u a t i o n ) 
 { 
     i f   ( a t t e n u a t i o n < 1 . 0   & &   n o r m a l . z < 1 . 0 ) 
     { 
         f l o a t   p h i   =   a t t e n u a t i o n   *   a c o s ( n o r m a l . z ) ; 
         n o r m a l . x y   * =   1 . 0 / s q r t ( 1 . 0 - n o r m a l . z * n o r m a l . z )   *   s i n ( p h i ) ; 
         n o r m a l . z   =   c o s ( p h i ) ; 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ,   f l o a t   y _ c o e f f ) 
 { 
     i f   ( n o r m a l _ a l p h a . a   = =   0 . 0   | |   n o r m a l _ a l p h a . x y z   = =   v e c 3 ( 0 . 0 ) )   { 
         r e t u r n   v e c 3 ( 0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
     } 
 
     / /   A t t e n u a t i o n   i n   f u n c t i o n   o f   a l p h a 
     v e c 3   n o r m a l   =   n o r m a l _ a l p h a . x y z / n o r m a l _ a l p h a . a   *   2 . 0   -   v e c 3 ( 1 . 0 ) ; 
     n o r m a l . y   * =   y _ c o e f f ; 
     n o r m a l . z   =   m a x ( 1 e - 3 ,   n o r m a l . z ) ; 
     n o r m a l   =   n o r m a l i z e ( n o r m a l ) ; 
     n o r m a l   =   n o r m a l F a d e ( n o r m a l ,   n o r m a l _ a l p h a . a ) ; 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l ,   n o   Y   i n v e r t i o n 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ) 
 { 
     r e t u r n   n o r m a l U n p a c k ( n o r m a l _ a l p h a ,   1 . 0 ) ; 
 } 
 
 / / -   C o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   d o c u m e n t ' s   h e i g h t   c h a n n e l 
 v e c 3   n o r m a l F r o m H e i g h t ( S p a r s e C o o r d   c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     / /   N o r m a l   c o m p u t a t i o n   u s i n g   h e i g h t   m a p 
 
     / /   D e t e r m i n e   g r a d i e n t   o f f s e t   i n   f u n c t i o n   o f   d e r i v a t i v e s 
     v e c 2   d f d   =   m a x ( c o o r d . d f d x , c o o r d . d f d y ) ; 
     d f d   =   m a x ( d f d , h e i g h t _ t e x t u r e . s i z e . z w ) ; 
 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   h e i g h t _ t e x t u r e ,   c o o r d ) ; 
     f l o a t   h _ r     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ t     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ b     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
 
     v e c 2   d h _ d u d v   =   ( 0 . 5   *   h e i g h t _ f o r c e )   /   d f d   *   v e c 2 ( 
         2 . 0 * ( h _ l - h _ r ) + h _ l t - h _ r t + h _ l b - h _ r b , 
         2 . 0 * ( h _ b - h _ t ) + h _ r b - h _ r t + h _ l b - h _ l t ) ; 
 
     r e t u r n   n o r m a l i z e ( v e c 3 ( d h _ d u d v ,   H E I G H T _ F A C T O R ) ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   a   h e i g h t 
 / / -   v a l u e ,   a n d   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     v e c 3   n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( 
         n o r m a l U n p a c k ( t e x t u r e S p a r s e ( b a s e _ n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) , 
         n o r m a l F r o m H e i g h t ) ; 
 
     i f   ( n o r m a l _ t e x t u r e . i s _ s e t )   { 
         v e c 3   c h a n n e l N o r m a l   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ) ; 
         i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l F r o m H e i g h t ,   c h a n n e l N o r m a l ) ; 
         }   e l s e   i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ N M _ C o m b i n e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l ,   c h a n n e l N o r m a l ) ; 
         } 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   h e i g h t ,   a n d 
 / / -   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ) 
 { 
     f l o a t   h e i g h t _ f o r c e   =   1 . 0 ; 
     v e c 3   n o r m a l H   =   n o r m a l F r o m H e i g h t ( c o o r d ,   h e i g h t _ f o r c e ) ; 
     r e t u r n   g e t T S N o r m a l ( c o o r d ,   n o r m a l H ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   b a s e   n o r m a l . 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   n o r m a l   g i v e n   b y 
 / / -   g e t T S N o r m a l   h e l p e r s ,   a n d   l o c a l   f r a m e   o f   t h e   m e s h . 
 v e c 3   c o m p u t e W S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   g e t T S N o r m a l ( c o o r d ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 v e c 3   n o r m a l F r o m H e i g h t ( v e c 2   t e x _ c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     r e t u r n   n o r m a l F r o m H e i g h t ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   h e i g h t _ f o r c e ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   n o r m a l F r o m H e i g h t ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S B a s e N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 
 v e c 3   c o m p u t e W S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 / / -   [ D O C - O N ] 
 # l i n e   1 1   1 1 
 
 / / -   W h i c h   v i e w   i s   s h a d e d . 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s 2 D V i e w ; 
 
 / / -   W h a t   k i n d   o f   p r o j e c t i o n   i s   u s e d . 
 / / :   p a r a m   a u t o   i s _ p e r s p e c t i v e _ p r o j e c t i o n 
 u n i f o r m   b o o l   i s _ p e r s p e c t i v e ; 
 
 / / -   E y e   p o s i t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ e y e _ p o s i t i o n 
 u n i f o r m   v e c 3   c a m e r a _ p o s ; 
 
 / / -   C a m e r a   o r i e n t a t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ c a m e r a _ d i r e c t i o n 
 u n i f o r m   v e c 3   c a m e r a _ d i r ; 
 
 / / :   p a r a m   a u t o   f a c i n g 
 u n i f o r m   i n t   f a c i n g ; 
 
 b o o l   i s B a c k F a c e ( )   { 
     r e t u r n   f a c i n g   = =   - 1   | |   ( f a c i n g   = =   0   & &   ! g l _ F r o n t F a c i n g ) ; 
 } 
 
 / / -   C o m p u t e   t h e   w o r l d   s p a c e   e y e   v e c t o r 
 v e c 3   g e t E y e V e c ( v e c 3   p o s i t i o n )   { 
     r e t u r n   i s _ p e r s p e c t i v e   ? 
         n o r m a l i z e ( c a m e r a _ p o s   -   p o s i t i o n )   : 
         - c a m e r a _ d i r ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   t a n g e n t   s p a c e   t o   w o r l d   s p a c e 
 v e c 3   t a n g e n t S p a c e T o W o r l d S p a c e ( v e c 3   v e c T S ,   V 2 F   i n p u t s )   { 
     r e t u r n   n o r m a l i z e ( 
         v e c T S . x   *   i n p u t s . t a n g e n t   + 
         v e c T S . y   *   i n p u t s . b i t a n g e n t   + 
         v e c T S . z   *   i n p u t s . n o r m a l ) ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   w o r l d   s p a c e   t o   t a n g e n t   s p a c e 
 v e c 3   w o r l d S p a c e T o T a n g e n t S p a c e ( v e c 3   v e c W S ,   V 2 F   i n p u t s )   { 
     / /   A s s u m e   t h e   t r a n s f o r m a t i o n   i s   o r t h o g o n a l 
     r e t u r n   n o r m a l i z e ( v e c W S   *   m a t 3 ( i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ) ; 
 } 
 
 / / -   L o c a l   f r a m e   o f   v e r t e x   i n   w o r l d   s p a c e 
 s t r u c t   L o c a l V e c t o r s   { 
     v e c 3   v e r t e x N o r m a l ; 
     v e c 3   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ,   e y e ; 
 } ; 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   c u s t o m   w o r l d   s p a c e   n o r m a l   a n d   a n i s o t r o p y   a n g l e 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s ,   v e c 3   n o r m a l ,   f l o a t   a n i s o A n g l e )   { 
     L o c a l V e c t o r s   v e c t o r s ; 
     v e c t o r s . v e r t e x N o r m a l   =   i n p u t s . n o r m a l ; 
     v e c t o r s . n o r m a l   =   n o r m a l ; 
 
     / /   F l i p   t h e   n o r m a l s   f o r   b a c k   f a c i n g   p o l y g o n s 
     i f   ( i s B a c k F a c e ( ) )   { 
         v e c t o r s . v e r t e x N o r m a l   =   - v e c t o r s . v e r t e x N o r m a l ; 
         v e c t o r s . n o r m a l   =   - v e c t o r s . n o r m a l ; 
     } 
 
     v e c t o r s . e y e   =   i s 2 D V i e w   ? 
         v e c t o r s . n o r m a l   :   / /   I n   2 D   v i e w ,   p u t   v i e w   v e c t o r   a l o n g   t h e   n o r m a l 
         g e t E y e V e c ( i n p u t s . p o s i t i o n ) ; 
 
     / /   T r i c k   t o   r e m o v e   b l a c k   a r t i f a c t s 
     / /   B a c k f a c e   ?   p l a c e   t h e   e y e   a t   t h e   o p p o s i t e   -   r e m o v e s   b l a c k   z o n e s 
     i f   ( d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l )   <   0 . 0 )   { 
         v e c t o r s . e y e   =   r e f l e c t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
     } 
 
     / /   C r e a t e   a   l o c a l   f r a m e   f o r   B R D F   w o r k 
     v e c 3   t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . t a n g e n t ,   v e c t o r s . n o r m a l ) 
     ) ; 
     v e c 3   b i t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . b i t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . b i t a n g e n t ,   v e c t o r s . n o r m a l ) 
         -   t a n g e n t   *   d o t ( i n p u t s . b i t a n g e n t ,   t a n g e n t ) 
     ) ; 
 
     f l o a t   c o s A n g l e   =   c o s ( a n i s o A n g l e ) ; 
     f l o a t   s i n A n g l e   =   s i n ( a n i s o A n g l e ) ; 
     v e c t o r s . t a n g e n t   =   c o s A n g l e   *   t a n g e n t   -   s i n A n g l e   *   b i t a n g e n t ; 
     v e c t o r s . b i t a n g e n t   =   c o s A n g l e   *   b i t a n g e n t   +   s i n A n g l e   *   t a n g e n t ; 
 
     r e t u r n   v e c t o r s ; 
 } 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   m e s h   a n d   d o c u m e n t   h e i g h t   a n d   n o r m a l s 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s )   { 
     / /   G e t   w o r l d   s p a c e   n o r m a l 
     v e c 3   n o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
     r e t u r n   c o m p u t e L o c a l F r a m e ( i n p u t s ,   n o r m a l ,   0 . 0 ) ; 
 } 
 # l i n e   4 8   6 
 
 / / :   s t a t e   c u l l _ f a c e   o f f 
 
 / / -   P a r a m e t e r s   f r o m   S u b s t a n c e 
 / / :   p a r a m   a u t o   m a i n _ l i g h t 
 u n i f o r m   v e c 4   u n i f o r m _ m a i n _ l i g h t ; 
 
 / /   p a r a m s   f r o m   l i b - p b r . 
 / /   W e   d o n ' t   w a n t   t o   i m p o r t   t h e   e n t i r e   l i b - p b r   b e c a u s e   i t   b r i n g s   l i b - e m i s s i v e 
 / /   a n d   t h a t   m e s s e s   w i t h   o u r   s e l f - i l l u m i n a t i o n   p a r a m s 
 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ m a x _ l o d 
 u n i f o r m   f l o a t   m a x L o d ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 6 , 
 / / :       " l a b e l " :   " Q u a l i t y " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " V e r y   l o w   ( 4   s p p ) " :   4 , 
 / / :           " L o w   ( 1 6   s p p ) " :   1 6 , 
 / / :           " M e d i u m   ( 3 2   s p p ) " :   3 2 , 
 / / :           " H i g h   ( 6 4   s p p ) " :   6 4 , 
 / / :           " V e r y   h i g h   ( 1 2 8   s p p ) " :   1 2 8 , 
 / / :           " U l t r a   ( 2 5 6   s p p ) " :   2 5 6 
 / / :       } , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   i n t   n b S a m p l e s ; 
 
 / / -   V R a y M t l   s p e c i f i c   o p t i o n s 
 
 / /   G r o u p   b a s i c   o p t i o n s 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " B a s e   c o l o r   a m o u n t " ,   " m i n " :   0 ,   " m a x " :   1 ,   " g r o u p " :   " B a s e   c o l o r "   } 
 u n i f o r m   f l o a t   u n i f o r m _ d i f f u s e _ a m o u n t ; 
 
 / /   G r o u p   r e f l e c t i o n 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " R e f l e c t i o n   a m o u n t " ,   " m i n " :   0 ,   " m a x " :   1 ,   " g r o u p " :   " R e f l e c t i o n "   } 
 u n i f o r m   f l o a t   u n i f o r m _ r e f l e c t i o n _ a m o u n t ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e ,   " l a b e l " :   " U s e   f r e s n e l " ,   " g r o u p " :   " R e f l e c t i o n " ,   " d e s c r i p t i o n " :   " M a k e   r e f l e c t i o n   s t r e n g t h   d e p e n d e n t   o n   t h e   v i e w i n g   a n g l e   ( e . g .   g l a s s   m a t e r i a l s ) .   D e p e n d s   o n   I O R . "   } 
 u n i f o r m   b o o l   u n i f o r m _ u s e _ f r e s n e l ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e ,   " l a b e l " :   " L o c k   f r e s n e l   I O R   t o   r e f r a c t i o n   I O R " ,   " g r o u p " :   " R e f l e c t i o n " ,   " d e s c r i p t i o n " :   " U s e   t h e   s a m e   I O R   a s   r e f r a c t i o n   f o r   r e f l e c t i o n   f r e s n e l . "   } 
 u n i f o r m   b o o l   u n i f o r m _ l o c k _ f r e s n e l _ i o r ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 6 ,   " l a b e l " :   " F r e s n e l   I O R " ,   " g r o u p " :   " R e f l e c t i o n " ,   " d e s c r i p t i o n " :   " S e p a r a t e   f r e s n e l   r e f l e c t i o n   I O R ,   w h e n   n o t   l o c k e d   t o   r e f r a c t i o n   I O R . "   } 
 u n i f o r m   f l o a t   u n i f o r m _ f r e s n e l _ i o r ; 
 
 / /   G r o u p   r e f r a c t i o n 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 ,   " l a b e l " :   " R e f r a c t i o n   a m o u n t " ,   " m i n " :   0 ,   " m a x " :   1 ,   " w i d g e t " :   " c o l o r " ,   " g r o u p " :   " R e f r a c t i o n " 
 / / :   } 
 u n i f o r m   f l o a t   u n i f o r m _ r e f r a c t i o n _ a m o u n t ; 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 6 ,   " l a b e l " :   " I O R " ,   " g r o u p " :   " R e f r a c t i o n " , 
 / / :       " d e s c r i p t i o n " :   " I n d e x   o f   r e f r a c t i o n   f o r   r e f r a c t i o n   e f f e c t   a n d   f r e s n e l   r e f l e c t i o n s   ( u n l e s s   d i s a b l e d   i n   R e f l e c t i o n   o p t i o n s ) " 
 / / :   } 
 u n i f o r m   f l o a t   u n i f o r m _ r e f r a c t i o n _ i o r ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " R e f r a c t i o n   g l o s s i n e s s " ,   " m i n " :   0 ,   " m a x " :   1 ,   " g r o u p " :   " R e f r a c t i o n " ,   " d e s c r i p t i o n " :   " S e p a r a t e   r e f r a c t i o n   g l o s s i n e s s "   } 
 u n i f o r m   f l o a t   u n i f o r m _ r e f r a c t i o n _ g l o s s i n e s s ; 
 
 / /   G r o u p   B R D F 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   3 , 
 / / :       " l a b e l " :   " B R D F   t y p e " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " P h o n g " :   0 , 
 / / :           " B l i n n " :   1 , 
 / / :           " W a r d " :   2 , 
 / / :           " G G X " :   3 
 / / :       } , 
 / / :       " g r o u p " :   " B R D F " 
 / / :   } 
 u n i f o r m   i n t   u n i f o r m _ b r d f _ t y p e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   2 ,   " l a b e l " :   " G G X   t a i l   f a l l o f f " ,   " m i n " :   1 ,   " m a x " :   1 0 ,   " g r o u p " :   " B R D F "   } 
 u n i f o r m   f l o a t   u n i f o r m _ g t r _ g a m m a ; 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   2 , 
 / / :       " l a b e l " :   " A n i s o t r o p y   a x i s " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " X " :   0 , 
 / / :           " Y " :   1 , 
 / / :           " Z " :   2 
 / / :       } , 
 / / :       " g r o u p " :   " B R D F " , 
 / / :       " d e s c r i p t i o n " :   " B a s e   l o c a l   a x i s   f o r   a n i s o t r o p i c   h i g h l i g h t " 
 / / :   } 
 u n i f o r m   i n t   u n i f o r m _ a n i s o t r o p y _ a x i s ; 
 
 / /   G r o u p   o p t i o n s 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   t r u e ,   " l a b e l " :   " T r a c e   r e f l e c t i o n s " ,   " g r o u p " :   " O p t i o n s " , 
 / / :       " d e s c r i p t i o n " :   " W h e n   d i s a b l e d ,   r e f l e c t i o n s   a r e   n o t   t r a c e d ,   r e s u l t i n g   i n   o n l y   h i g h l i g h t s .   A l s o   t h e   d i f f u s e   c o l o r   i s   n o t   d i m m e d   b y   t h e   r e f l e c t i o n   c o l o r ,   a s   w o u l d   h a p p e n   n o r m a l l y " 
 / / :   } 
 u n i f o r m   b o o l   u n i f o r m _ t r a c e _ r e f l e c t i o n s ; 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   t r u e ,   " l a b e l " :   " T r a c e   r e f r a c t i o n s " ,   " g r o u p " :   " O p t i o n s " , 
 / / :       " d e s c r i p t i o n " :   " W h e n   d i s a b l e d ,   r e f r a c t i o n s   a r e   n o t   t r a c e d " 
 / / :   } 
 u n i f o r m   b o o l   u n i f o r m _ t r a c e _ r e f r a c t i o n s ; 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   f a l s e ,   " l a b e l " :   " D o u b l e   s i d e d " ,   " g r o u p " :   " O p t i o n s " , 
 / / :       " d e s c r i p t i o n " :   " W h e n   e n a b l e d ,   V - R a y   a l s o   s h a d e s   t h e   b a c k - f a c i n g   s u r f a c e s .   O t h e r w i s e ,   t h e   l i g h t i n g   f o r   t h e   o u t e r   s i d e   i s   a l w a y s   c o m p u t e d .   C a n   b e   u s e d   t o   a c h i e v e   a   f a k e   t r a n s l u c e n t   e f f e c t   f o r   t h i n   o b j e c t s   l i k e   p a p e r . " 
 / / :   } 
 u n i f o r m   b o o l   u n i f o r m _ d o u b l e _ s i d e d ; 
 
 
 f l o a t   v r a y S q r ( f l o a t   x )   { 
 	 r e t u r n   x   *   x ; 
 } 
 
 / /   F u n c t i o n s   f r o m   l i b - p b r   w e   n e e d   t o   s a m p l e   t h e   e n v i r o n m e n t   p r o p e r l y   { { { 
 
 / / /   C o m p u t e   t h e   i n v e r s e   o f   t h e   s o l i d   a n g l e   o f   t h e   d i f f e r e n t i a l   p i x e l   i n   t h e 
 / / /   c u b e   m a p   p o i n t e d   a t   b y   W n 
 / / /   @ p a r a m   W n   W o r l d - s p a c e   d i r e c t i o n 
 f l o a t   d i s t o r t i o n ( v e c 3   W n )   { 
 	 f l o a t   s i n T   =   s q r t ( 1 . 0 - W n . y * W n . y ) ; 
 	 r e t u r n   s i n T ; 
 } 
 
 / / /   G e t   t h e   L O D   f o r   s a m p l i n g   t h e   e n v i r o n m e n t 
 / / /   @ p a r a m   W n   W o r l d - s p a c e   n o r m a l 
 / / /   @ p a r a m   p   P r o b a b i l i t y   o f   t h i s   d i r e c t i o n   ( f r o m   s a m p l e B R D F ) 
 / / /   @ p a r a m   n u m S a m p l e s   T o t a l   n u m b e r   o f   s a m p l e s 
 f l o a t   c o m p u t e L O D ( v e c 3   W n ,   f l o a t   p ,   i n t   n u m S a m p l e s )   { 
 	 i f   ( n u m S a m p l e s   <   2 )   { 
 	 	 r e t u r n   0 . 0 ; 
 	 }   e l s e   { 
 	 	 r e t u r n   m a x ( 0 . 0 ,   m a x L o d   -   1 . 5   -   0 . 5   *   l o g 2 ( 1 . 0   +   f l o a t ( n u m S a m p l e s )   *   p   *   d i s t o r t i o n ( W n ) ) ) ; 
 	 } 
 } 
 
 / /   } } }   E n d   f u n c t i o n s   f r o m   l i b - p b r 
 
 s t r u c t   V R a y M t l I n i t P a r a m s   { 
 	 v e c 3     V w ; 
 	 v e c 3     g e o m N o r m a l ; 
 	 v e c 3     d i f f u s e C o l o r ; 
 	 f l o a t   d i f f u s e A m o u n t ; 
 	 f l o a t   r o u g h n e s s ; 
 	 v e c 3     s e l f I l l u m ; 
 	 v e c 3     r e f l C o l o r ; 
 	 f l o a t   r e f l A m o u n t ; 
 	 f l o a t   r e f l G l o s s ; 
 	 b o o l     t r a c e R e f l e c t i o n s ; 
 	 f l o a t   m e t a l n e s s ; 
 	 f l o a t   a n i s o ; 
 	 f l o a t   a n i s o R o t a t i o n ; 
 	 i n t       a n i s o A x i s ; 
 	 v e c 3     o p a c i t y ; 
 	 v e c 3     r e f r a c t i o n C o l o r ; 
 	 f l o a t   r e f r a c t i o n A m o u n t ; 
 	 f l o a t   r e f r G l o s s ; 
 	 b o o l     t r a c e R e f r a c t i o n s ; 
 	 f l o a t   r e f r a c t i o n I O R ; 
 	 b o o l     u s e F r e s n e l ; 
 	 f l o a t   f r e s n e l I O R ; 
 	 b o o l     l o c k F r e s n e l I O R ; 
 	 b o o l     d o u b l e S i d e d ; 
 	 b o o l     u s e R o u g h n e s s ; 
 	 f l o a t   g t r G a m m a ; 
 	 i n t       b r d f T y p e ; 
 	 b o o l   a p p r o x E n v ; 
 } ; 
 
 s t r u c t   V R a y M t l C o n t e x t   { 
 	 v e c 3     g e o m N o r m a l ; 
 	 f l o a t   g l o s s 1 ; 
 	 f l o a t   g l o s s 2 ; 
 	 f l o a t   r e f l G l o s s ; 
 	 v e c 3     e ; 
 	 v e c 3     d i f f ; 
 	 f l o a t   f r e s n e l ; 
 	 v e c 3     r e f l N o F r e s n e l ; 
 	 v e c 3     r e f l ; 
 	 v e c 3     r e f r ; 
 	 v e c 3     i l l u m ; 
 	 v e c 3     o p a c i t y ; 
 	 f l o a t   r t e r m A ; 
 	 f l o a t   r t e r m B ; 
 	 f l o a t   g t r G a m m a ; 
 	 f l o a t   b l u e N o i s e ;   / /   b l u e   n o i s e   v a l u e   b a s e d   o n   f r a g m e n t 
 	 m a t 3     n m ; 
 	 m a t 3     i n m ; 
 } ; 
 
 f l o a t   i n t e n s i t y ( v e c 3   v ) ; 
 v e c 3     v r a y S a m p l e B R D F ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   i n t   s a m p l e I d x ,   o u t   f l o a t   b r d f C o n t r i b ) ; 
 v e c 3     v r a y S a m p l e R e f r a c t B R D F ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   i n t   s a m p l e I d x ,   o u t   b o o l   t o t a l I n t e r n a l R e f l e c t i o n ) ; 
 
 V R a y M t l C o n t e x t   i n i t V R a y M t l C o n t e x t ( V R a y M t l I n i t P a r a m s   i n i t P a r a m s ) ; 
 
 v e c 3   v r a y C o m p u t e D i r e c t D i f f u s e C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   v e c 3   l i g h t D i r ) ; 
 v e c 3   v r a y C o m p u t e D i r e c t R e f l e c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   v e c 3   l i g h t D i r ) ; 
 
 v e c 3   v r a y C o m p u t e I n d i r e c t D i f f u s e C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ) ; 
 v e c 3   v r a y C o m p u t e I n d i r e c t R e f l e c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ) ; 
 v e c 3   v r a y C o m p u t e I n d i r e c t R e f r a c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   f l o a t   a l p h a ,   v e c 3   a l p h a D i r ,   v e c 3   d i f f u s e I n d i r e c t ) ; 
 
 i n t   d e b u g O u t p u t   =   0 ; 
 
 / /   O u t p u t   v   a s   c o l o u r ,   s u p p r e s s   n o r m a l   s h a d i n g 
 v o i d   v r a y D e b u g ( v e c 3   v )   { 
 	 d e b u g O u t p u t   =   1 ; 
 	 a l b e d o O u t p u t ( v ) ; 
 	 d i f f u s e S h a d i n g O u t p u t ( v e c 3 ( 1 . 0 ) ) ; 
 } 
 
 / /   O u t p u t   f   a s   g r e y   c o l o u r ,   s u p p r e s s   n o r m a l   s h a d i n g 
 v o i d   v r a y D e b u g ( f l o a t   f )   { 
 	 v r a y D e b u g ( v e c 3 ( f ) ) ; 
 } 
 
 # d e f i n e   P I   3 . 1 4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5 
 # d e f i n e   I N V _ P I   ( 1 . 0 / P I ) 
 
 v e c 3   v r a y W h i t e C o m p l e m e n t ( v e c 3   x )   { 
 	 r e t u r n   c l a m p ( 1 . 0   -   x ,   0 . 0 ,   1 . 0 ) ; 
 } 
 
 v o i d   v r a y C o m p u t e T a n g e n t V e c t o r s ( v e c 3   n ,   o u t   v e c 3   u ,   o u t   v e c 3   v )   { 
 	 / /   I t   d o e s n ' t   m a t t e r   w h a t   t h e s e   v e c t o r s   a r e ,   t h e   r e s u l t   v e c t o r s   j u s t   n e e d   t o   b e   p e r p e n d i c u l a r   t o   t h e   n o r m a l   a n d   t o   e a c h   o t h e r 
 	 u   =   c r o s s ( n ,   v e c 3 ( 0 . 6 4 3 7 8 2 ,   0 . 9 8 4 3 2 ,   0 . 3 2 4 6 3 2 ) ) ; 
 	 i f   ( l e n g t h ( u )   <   1 e - 6 ) 
 	 	 u   =   c r o s s ( n ,   v e c 3 ( 0 . 4 3 2 9 0 2 ,   0 . 4 3 2 2 3 ,   0 . 9 0 8 9 5 3 ) ) ; 
 	 u   =   n o r m a l i z e ( u ) ; 
 	 v   =   n o r m a l i z e ( c r o s s ( n ,   u ) ) ; 
 } 
 
 v o i d   v r a y M a k e N o r m a l M a t r i x ( i n   v e c 3   n ,   o u t   m a t 3   m )   { 
 	 v r a y C o m p u t e T a n g e n t V e c t o r s ( n ,   m [ 0 ] ,   m [ 1 ] ) ; 
 	 m [ 2 ]   =   n ; 
 } 
 
 f l o a t   v r a y G e t F r e s n e l C o e f f ( f l o a t   f r e s n e l I O R ,   v e c 3   e ,   v e c 3   n ,   v e c 3   r e f r a c t D i r )   { 
 	 i f   ( a b s ( f r e s n e l I O R   -   1 . 0 )   <   1 e - 6 ) 
 	 	 r e t u r n   0 . 0 ; 
 
 	 f l o a t   c o s I n   =   - d o t ( e ,   n ) ; 
 	 f l o a t   c o s R     =   - d o t ( r e f r a c t D i r ,   n ) ; 
 
 	 i f   ( c o s I n   >   1 . 0   -   1 e - 1 2   | |   c o s R   >   1 . 0   -   1 e - 1 2 )   {   / /   V i e w   d i r e c t i o n   i s   p e r p e n d i c u l a r   t o   t h e   s u r f a c e 
 	 	 f l o a t   f   =   ( f r e s n e l I O R   -   1 . 0 )   /   ( f r e s n e l I O R   +   1 . 0 ) ; 
 	 	 r e t u r n   f   *   f ; 
 	 } 
 
 	 f l o a t   k s     =   ( c o s R   /   c o s I n )   *   f r e s n e l I O R ; 
 	 f l o a t   f s 2   =   ( k s   -   1 . 0 )   /   ( k s   +   1 . 0 ) ; 
 	 f l o a t   F s     =   f s 2   *   f s 2 ; 
 
 	 f l o a t   k p     =   ( c o s I n   /   c o s R )   *   f r e s n e l I O R ; 
 	 f l o a t   f p 2   =   ( k p   -   1 . 0 )   /   ( k p   +   1 . 0 ) ; 
 	 f l o a t   F p     =   f p 2   *   f p 2 ; 
 
 	 r e t u r n   0 . 5   *   ( F s   +   F p ) ; 
 } 
 
 v e c 3   v r a y G e t S p e c u l a r D i r ( f l o a t   u ,   f l o a t   v ,   f l o a t   k )   { 
 	 f l o a t   t h e t a S i n   =   c l a m p ( p o w ( u ,   1 . 0   /   ( k   +   1 . 0 ) ) ,   0 . 0 ,   1 . 0 ) ; 
 	 f l o a t   t h e t a C o s   =   s q r t ( 1 . 0   -   t h e t a S i n   *   t h e t a S i n ) ; 
 	 f l o a t   p h i             =   2 . 0   *   P I   *   v ; 
 	 r e t u r n   v e c 3 ( c o s ( p h i )   *   t h e t a C o s ,   s i n ( p h i )   *   t h e t a C o s ,   t h e t a S i n ) ; 
 } 
 
 v e c 3   v r a y G e t P h o n g D i r ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   g l o s s i n e s s ,   v e c 3   v i e w ,   m a t 3   n m )   { 
 	 v e c 3   r e f l e c t D i r   =   r e f l e c t ( - v i e w ,   n m [ 2 ] ) ; 
 	 v e c 3   s                     =   c r o s s ( v e c 3 ( 0 ,   1 ,   0 ) ,   r e f l e c t D i r ) ; 
 	 v e c 3   s 1                   =   c r o s s ( r e f l e c t D i r ,   s ) ; 
 	 m a t 3   m ; 
 	 m [ 0 ]                       =   n o r m a l i z e ( s ) ; 
 	 m [ 1 ]                       =   n o r m a l i z e ( s 1 ) ; 
 	 m [ 2 ]                       =   n o r m a l i z e ( r e f l e c t D i r ) ; 
 	 v e c 3   s a m p l e D i r   =   v r a y G e t S p e c u l a r D i r ( u c ,   v c ,   g l o s s i n e s s ) ; 
 	 r e t u r n   m   *   s a m p l e D i r ; 
 } 
 
 v e c 3   v r a y G e t B l i n n D i r ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   g l o s s i n e s s ,   v e c 3   v i e w ,   m a t 3   n m )   { 
 	 v e c 3     n n     =   v r a y G e t S p e c u l a r D i r ( u c ,   v c ,   g l o s s i n e s s ) ; 
 	 v e c 3     h       =   n o r m a l i z e ( n m   *   n n ) ; 
 	 f l o a t   c s     =   2 . 0   *   d o t ( h ,   v i e w ) ; 
 	 v e c 3     d i r   =   n o r m a l i z e ( - v i e w   +   c s   *   h ) ; 
 	 r e t u r n   d i r ; 
 } 
 
 v e c 3   v r a y G e t S p h e r e D i r ( f l o a t   u ,   f l o a t   v )   { 
 	 f l o a t   t h e t a S i n   =   u ; 
 	 f l o a t   t h e t a C o s   =   s q r t ( 1 . 0   -   t h e t a S i n   *   t h e t a S i n ) ; 
 	 f l o a t   p h i             =   2 . 0   *   P I   *   v ; 
 	 r e t u r n   v e c 3 ( c o s ( p h i )   *   t h e t a C o s ,   s i n ( p h i )   *   t h e t a C o s ,   t h e t a S i n ) ; 
 } 
 
 v e c 3   v r a y G e t W a r d D i r ( f l o a t   u ,   f l o a t   v ,   f l o a t   g l o s s i n e s s ,   v e c 3   v i e w ,   m a t 3   n m )   { 
 	 i f   ( u   > =   1 . 0 ) 
 	 	 u   - =   1 . 0 ; 
 
 	 f l o a t   k   =   - l o g ( 1 . 0   -   u ) ; 
 	 i f   ( k   <   0 . 0 ) 
 	 	 k   =   0 . 0 ; 
 
 	 f l o a t   t h e t a C o s   =   s q r t ( 1 . 0   /   ( g l o s s i n e s s   *   k   +   1 . 0 ) ) ; 
 	 v e c 3     h n               =   v r a y G e t S p h e r e D i r ( t h e t a C o s ,   v ) ; 
 	 v e c 3     h w               =   n o r m a l i z e ( n m   *   h n ) ; 
 	 v e c 3     d i r             =   r e f l e c t ( - v i e w ,   h w ) ; 
 	 r e t u r n   d i r ; 
 } 
 
 v e c 3   v r a y G e t G T R 1 M i c r o N o r m a l ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   s h a r p n e s s )   { 
 	 f l o a t   s h a r p n e s s 2     =   m i n ( s h a r p n e s s   *   s h a r p n e s s ,   0 . 9 9 9 ) ; 
 	 f l o a t   t h e t a C o s S q r   =   ( 1 . 0   -   p o w ( s h a r p n e s s 2 ,   1 . 0   -   u c ) )   /   ( 1 . 0   -   s h a r p n e s s 2 ) ; 
 	 f l o a t   t h e t a C o s         =   s q r t ( t h e t a C o s S q r ) ; 
 	 f l o a t   t h e t a S i n         =   s q r t ( m a x ( 1 . 0   -   t h e t a C o s S q r ,   0 . 0 ) ) ; 
 
 	 f l o a t   p h i   =   2 . 0   *   P I   *   v c ; 
 	 r e t u r n   v e c 3 ( c o s ( p h i )   *   t h e t a S i n ,   s i n ( p h i )   *   t h e t a S i n ,   t h e t a C o s ) ; 
 } 
 
 / /   S p e c i f i c   i m p l e m e n t a t i o n   w h e n   g a m m a   = =   2 .   S e e   s e c t i o n   B . 2   P h y s i c a l l y - B a s e d   S h a d i n g   a t   D i s n e y   f r o m   S I G G R A P H   2 0 1 2 
 v e c 3   v r a y G e t G T R 2 M i c r o N o r m a l ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   s h a r p n e s s )   { 
         / / v r a y D e b u g ( s h a r p n e s s ) ; 
 	 f l o a t   t h e t a C o s S q r   =   ( 1 . 0   -   u c )   /   ( 1 . 0   +   ( s h a r p n e s s   *   s h a r p n e s s   -   1 . 0 )   *   u c ) ; 
 	 f l o a t   t h e t a C o s         =   s q r t ( t h e t a C o s S q r ) ; 
 	 f l o a t   t h e t a S i n         =   s q r t ( m a x ( 1 . 0   -   t h e t a C o s S q r ,   0 . 0 ) ) ; 
 
 	 f l o a t   p h i   =   2 . 0   *   P I   *   v c ; 
 	 r e t u r n   v e c 3 ( c o s ( p h i )   *   t h e t a S i n ,   s i n ( p h i )   *   t h e t a S i n ,   t h e t a C o s ) ; 
 } 
 
 / /   / /   G e n e r a l   i m p l e m e n t a t i o n     w h e n   g a m m a   ! =   1   a n d   ! =   2 .   S e e   s e c t i o n   B . 2   P h y s i c a l l y - B a s e d   S h a d i n g   a t   D i s n e y   f r o m   S I G G R A P H   2 0 1 2 
 v e c 3   v r a y G e t G T R M i c r o N o r m a l ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 f l o a t   s h a r p n e s s 2     =   m i n ( s h a r p n e s s   *   s h a r p n e s s ,   0 . 9 9 9 ) ; 
 	 f l o a t   t h e t a C o s S q r   =   ( 1 . 0   -   p o w ( p o w ( s h a r p n e s s 2 ,   1 . 0   -   g t r G a m m a )   *   ( 1 . 0   -   u c )   +   u c ,   1 . 0   /   ( 1 . 0   -   g t r G a m m a ) ) )   /   ( 1 . 0   -   s h a r p n e s s 2 ) ; 
 	 f l o a t   t h e t a C o s         =   s q r t ( t h e t a C o s S q r ) ; 
 	 f l o a t   t h e t a S i n         =   s q r t ( m a x ( 1 . 0   -   t h e t a C o s S q r ,   0 . 0 ) ) ; 
 
 	 f l o a t   p h i   =   2 . 0   *   P I   *   v c ; 
 	 r e t u r n   v e c 3 ( c o s ( p h i )   *   t h e t a S i n ,   s i n ( p h i )   *   t h e t a S i n ,   t h e t a C o s ) ; 
 } 
 
 v e c 3   v r a y G e t G G X M i c r o N o r m a l ( f l o a t   u c ,   f l o a t   v c ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 i f   ( a b s ( g t r G a m m a   -   1 . 0 )   <   1 e - 3 ) 
 	 	 r e t u r n   v r a y G e t G T R 1 M i c r o N o r m a l ( u c ,   v c ,   s h a r p n e s s ) ; 
 	 e l s e   i f   ( a b s ( g t r G a m m a   -   2 . 0 )   <   1 e - 3 ) 
 	 	 r e t u r n   v r a y G e t G T R 2 M i c r o N o r m a l ( u c ,   v c ,   s h a r p n e s s ) ; 
 	 e l s e   / /   i f   ( g t r L o w e r L i m i t   < =   g t r G a m m a   & &   g t r G a m m a   < =   g t r U p p e r L i m i t ) 
 	 	 r e t u r n   v r a y G e t G T R M i c r o N o r m a l ( u c ,   v c ,   s h a r p n e s s ,   g t r G a m m a ) ; 
 } 
 
 f l o a t   v r a y G e t G T R 1 M i c r o f a c e t D i s t r i b u t i o n ( f l o a t   m z ,   f l o a t   s h a r p n e s s )   { 
 	 f l o a t   c o s T h e t a M   =   m z ;   / /   d o t f ( m i c r o N o r m a l ,   n o r m a l ) ; 
 	 i f   ( c o s T h e t a M   < =   1 e - 3 ) 
 	 	 r e t u r n   0 . 0 ; 
 
 	 f l o a t   c o s T h e t a M 2   =   v r a y S q r ( c o s T h e t a M ) ; 
 	 f l o a t   t a n T h e t a M 2   =   ( 1 . 0   /   c o s T h e t a M 2 )   -   1 . 0 ; 
 	 f l o a t   s h a r p n e s s 2   =   v r a y S q r ( s h a r p n e s s ) ; 
 	 f l o a t   d i v                 =   P I   *   l o g ( s h a r p n e s s 2 )   *   c o s T h e t a M 2   *   ( s h a r p n e s s 2   +   t a n T h e t a M 2 ) ; 
 	 / /   w h e n   d i v < ( s h a r p n e s s 2 - 1 . 0 f ) * 1 e - 6 f   n o   d i v i s i o n   b y   z e r o   w i l l   o c c u r   ( t h e   d i v i d e n d   a n d   t h e   d i v i s o r   a r e   a l w a y s   n e g a t i v e ) ; 
 	 / /   d i v   c a n   g e t   0   i n   r a r e   s i t u a t i o n   w h e n   t h e   s h a r p n e s s   r e a d   f r o m   t e x t u r e   m a p p e d   i n   r e f l e c t i o n   g l o s s i n e s   i s   0 
 	 / /   a n d   c o s T h e t a M   i s   1   ( a n d   c o n s e q u e n t l y   t a n T h e t a M 2   i s   0 ) ; 
 	 f l o a t   r e s   =   ( d i v   <   ( s h a r p n e s s 2   -   1 . 0 )   *   1 e - 6 )   ?   ( s h a r p n e s s 2   -   1 . 0 )   /   d i v   :   0 . 0 ; 
 
 	 r e t u r n   r e s ; 
 } 
 
 f l o a t   v r a y G e t G T R 2 M i c r o f a c e t D i s t r i b u t i o n ( f l o a t   m z ,   f l o a t   s h a r p n e s s )   { 
 	 f l o a t   c o s T h e t a M   =   m z ;   / /   d o t f ( m i c r o N o r m a l ,   n o r m a l ) ; 
 	 i f   ( c o s T h e t a M   < =   1 e - 3 f ) 
 	 	 r e t u r n   0 . 0 f ; 
 
 	 f l o a t   c o s T h e t a M 2   =   v r a y S q r ( c o s T h e t a M ) ; 
 	 f l o a t   t a n T h e t a M 2   =   ( 1 . 0   /   c o s T h e t a M 2 )   -   1 . 0 ; 
 	 f l o a t   s h a r p n e s s 2   =   v r a y S q r ( s h a r p n e s s ) ; 
 	 f l o a t   d i v                 =   P I   *   v r a y S q r ( c o s T h e t a M 2   *   ( s h a r p n e s s 2   +   t a n T h e t a M 2 ) ) ; 
 	 / /   w h e n   d i v > s h a r p n e s s 2 * 1 e - 6 f   n o   d i v i s i o n   b y   z e r o   w i l l   o c c u r   ( t h e   d i v i d e n d   a n d   t h e   d i v i s o r   a r e   a l w a y s   p o s i t i v e ) ; 
 	 / /   d i v   c a n g e t 0   i n   r a r e   s i t u a t i o n   w h e n   t h e   s h a r p n e s s   r e a d   f r o m   t e x t u r e   m a p p e d   i n   r e f l e c t i o n   g l o s s i n e s   i s   0 
 	 / /   a n d   c o s T h e t a M   i s   1   ( a n d   c o n s e q u e n t l y   t a n T h e t a M 2   i s   0 ) ; 
 	 f l o a t   r e s   =   ( d i v   >   s h a r p n e s s 2   *   1 e - 6 )   ?   s h a r p n e s s 2   /   d i v   :   0 . 0 ; 
 
 	 r e t u r n   r e s ; 
 } 
 
 f l o a t   v r a y G e t G T R M i c r o f a c e t D i s t r i b u t i o n ( f l o a t   m z ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 f l o a t   c o s T h e t a M   =   m z ;   / /   d o t f ( m i c r o N o r m a l ,   n o r m a l ) ; 
 	 i f   ( c o s T h e t a M   < =   1 e - 3 ) 
 	 	 r e t u r n   0 . 0 ; 
 
 	 f l o a t   c o s T h e t a M 2   =   v r a y S q r ( c o s T h e t a M ) ; 
 	 f l o a t   t a n T h e t a M 2   =   ( 1 . 0   /   c o s T h e t a M 2 )   -   1 . 0 ; 
 	 f l o a t   s h a r p n e s s 2   =   v r a y S q r ( s h a r p n e s s ) ; 
 	 f l o a t   d i v i s o r         =   P I   *   ( 1 . 0   -   p o w ( s h a r p n e s s 2 ,   1 . 0   -   g t r G a m m a ) )   *   p o w ( c o s T h e t a M 2   *   ( s h a r p n e s s 2   +   t a n T h e t a M 2 ) ,   g t r G a m m a ) ; 
 	 f l o a t   d i v i d e n d       =   ( g t r G a m m a   -   1 . 0 )   *   ( s h a r p n e s s 2   -   1 . 0 ) ; 
 	 / /   w h e n   f a b s f ( d i v i s o r ) > f a b s f ( d i v i d e n d ) * 1 e - 6 f   n o   d i v i s i o n   b y   z e r o   w i l l   o c c u r 
 	 / /   ( t h e   d i v i d e n d   a n d   t h e   d i v i s o r   a r e   a l w a y s   e i t h e r   b o t h   p o s i t i v e   o r   b o t h   n e g a t i v e ) ; 
 	 / /   d i v i s o r   c a n g e t 0   i n   r a r e   s i t u a t i o n   w h e n   t h e   s h a r p n e s s   r e a d   f r o m   t e x t u r e   m a p p e d   i n   r e f l e c t i o n   g l o s s i n e s   i s   0 
 	 / /   a n d   c o s T h e t a M   i s   1   ( a n d   c o n s e q u e n t l y   t a n T h e t a M 2   i s   0 ) ; 
 	 f l o a t   r e s   =   ( a b s ( d i v i s o r )   >   a b s ( d i v i d e n d )   *   1 e - 6 )   ?   d i v i d e n d   /   d i v i s o r   :   0 . 0 ; 
 
 	 r e t u r n   r e s ; 
 } 
 
 f l o a t   v r a y G e t G G X M i c r o f a c e t D i s t r i b u t i o n ( f l o a t   c o s N H ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 i f   ( a b s ( g t r G a m m a   -   1 . 0 )   <   1 e - 3 ) 
 	 	 r e t u r n   v r a y G e t G T R 1 M i c r o f a c e t D i s t r i b u t i o n ( c o s N H ,   s h a r p n e s s ) ; 
 	 e l s e   i f   ( a b s ( g t r G a m m a   -   2 . 0 )   <   1 e - 3 ) 
 	 	 r e t u r n   v r a y G e t G T R 2 M i c r o f a c e t D i s t r i b u t i o n ( c o s N H ,   s h a r p n e s s ) ; 
 	 e l s e   / /   i f   ( g t r L o w e r L i m i t   < =   g t r G a m m a   & &   g t r G a m m a   < =   g t r U p p e r L i m i t ) 
 	 	 r e t u r n   v r a y G e t G T R M i c r o f a c e t D i s t r i b u t i o n ( c o s N H ,   s h a r p n e s s ,   g t r G a m m a ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 0 ( f l o a t   c o t T h e t a V )   { 
 	 r e t u r n   2 . 0   /   ( 1 . 0   +   s q r t ( 1 . 0   +   1 . 0   /   ( c o t T h e t a V   *   c o t T h e t a V ) ) ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 1 ( f l o a t   s h a r p n e s s ,   f l o a t   c o t T h e t a V )   { 
 	 f l o a t   c o t T h e t a V 2   =   v r a y S q r ( c o t T h e t a V ) ; 
 	 f l o a t   s h a r p n e s s 2   =   m i n ( 0 . 9 9 9 ,   v r a y S q r ( s h a r p n e s s ) ) ; 
 	 f l o a t   a                     =   s q r t ( c o t T h e t a V 2   +   s h a r p n e s s 2 ) ; 
 	 f l o a t   b                     =   s q r t ( c o t T h e t a V 2   +   1 . 0 ) ; 
 	 r e t u r n   c o t T h e t a V   *   l o g ( s h a r p n e s s 2 )   /   ( a   -   b   +   c o t T h e t a V   *   l o g ( s h a r p n e s s 2   *   ( c o t T h e t a V   +   b )   /   ( c o t T h e t a V   +   a ) ) ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 2 ( f l o a t   s h a r p n e s s ,   f l o a t   c o t T h e t a V )   { 
 	 r e t u r n   2 . 0   /   ( 1 . 0   +   s q r t ( 1 . 0   +   v r a y S q r ( s h a r p n e s s   /   c o t T h e t a V ) ) ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 3 ( f l o a t   s h a r p n e s s ,   f l o a t   c o t T h e t a V )   { 
 	 f l o a t   c o t T h e t a V 2   =   v r a y S q r ( c o t T h e t a V ) ; 
 	 f l o a t   s h a r p n e s s 2   =   m i n ( 0 . 9 9 9 ,   v r a y S q r ( s h a r p n e s s ) ) ; 
 	 f l o a t   a                     =   s q r t ( c o t T h e t a V 2   +   s h a r p n e s s 2 ) ; 
 	 f l o a t   b                     =   s h a r p n e s s 2   +   1 . 0 ; 
 	 r e t u r n   4 . 0   *   c o t T h e t a V   *   a   *   b   /   ( 2 . 0   *   c o t T h e t a V   *   b   *   ( c o t T h e t a V   +   a )   +   s h a r p n e s s 2   *   ( 3 . 0   *   s h a r p n e s s 2   +   1 . 0 ) ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 4 ( f l o a t   s h a r p n e s s ,   f l o a t   c o t T h e t a V )   { 
 	 f l o a t   c o t T h e t a V 2   =   c o t T h e t a V   *   c o t T h e t a V ; 
 	 f l o a t   s h a r p n e s s 2   =   m i n ( 0 . 9 9 9 ,   v r a y S q r ( s h a r p n e s s ) ) ; 
 	 f l o a t   s h a r p n e s s 4   =   s h a r p n e s s 2   *   s h a r p n e s s 2 ; 
 	 f l o a t   a                     =   8 . 0   *   ( s h a r p n e s s 4   +   s h a r p n e s s 2   +   1 . 0 ) ; 
 	 f l o a t   b                     =   s q r t ( c o t T h e t a V 2   +   s h a r p n e s s 2 ) ; 
 	 f l o a t   b 3                   =   b   *   ( c o t T h e t a V 2   +   s h a r p n e s s 2 ) ; 
 	 r e t u r n   2 . 0   *   c o t T h e t a V   *   a   *   b 3   /   ( a   *   c o t T h e t a V   *   ( b 3   +   c o t T h e t a V   *   c o t T h e t a V 2 )   +   3 . 0   *   s h a r p n e s s 2   *   ( 4 . 0   *   c o t T h e t a V 2   *   ( 2 . 0   *   s h a r p n e s s 4   +   s h a r p n e s s 2   +   1 . 0 )   +   s h a r p n e s s 2   *   ( 5 . 0   *   s h a r p n e s s 4   +   2 . 0   *   s h a r p n e s s 2   +   1 . 0 ) ) ) ; 
 } 
 
 f l o a t   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g S p l i n e ( f l o a t   g t r G a m m a ,   f l o a t   s h a r p n e s s ,   f l o a t   c o t T h e t a V )   { 
 	 c o n s t   i n t   n u m K n o t s   =   5 ; 
 
 	 f l o a t   k n o t s [ n u m K n o t s ] ; 
 	 k n o t s [ 0 ]   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 0 ( c o t T h e t a V ) ; 
 	 k n o t s [ 1 ]   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 1 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 k n o t s [ 2 ]   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 2 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 k n o t s [ 3 ]   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 3 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 k n o t s [ 4 ]   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 4 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 
 	 f l o a t   m [ n u m K n o t s ] ; 
 	 f l o a t   c [ n u m K n o t s ] ; 
 	 f o r   ( i n t   i   =   1 ;   i   <   n u m K n o t s   -   1 ;   i + + )   { 
 	 	 m [ i ]           =   4 . 0 ; 
 	 	 c [ i   -   1 ]   =   6 . 0   *   ( k n o t s [ i   +   1 ]   -   2 . 0   *   k n o t s [ i ]   +   k n o t s [ i   -   1 ] ) ; 
 	 } 
 
 	 / /   s o l v e   t r i d i a g o n a l 
 	 f o r   ( i n t   i   =   1 ;   i   <   n u m K n o t s   -   2 ;   i + + )   { 
 	 	 f l o a t   x   =   1 . 0   /   m [ i ] ; 
 	 	 m [ i   +   1 ]   - =   x ; 
 	 	 c [ i ]   - =   x   *   c [ i   -   1 ] ; 
 	 } 
 
 	 m [ n u m K n o t s   -   2 ]   =   c [ n u m K n o t s   -   3 ]   /   m [ n u m K n o t s   -   2 ] ; 
 
 	 f o r   ( i n t   i   =   n u m K n o t s   -   4 ;   i   > =   0 ;   i - - )   { 
 	 	 m [ i   +   1 ]   =   ( c [ i ]   -   m [ i   +   2 ] )   /   m [ i   +   1 ] ; 
 	 } 
 
 	 m [ 0 ]                         =   0 . 0 ; 
 	 m [ n u m K n o t s   -   1 ]   =   0 . 0 ; 
 
 	 / /   c o n t s t r u c t   p o l y n o m i a l s 
 	 v e c 4   p o l y s [ n u m K n o t s   -   1 ] ; 
 	 f o r   ( i n t   i   =   0 ;   i   <   n u m K n o t s   -   1 ;   i + + )   { 
 	 	 p o l y s [ i ] . x   =   ( m [ i   +   1 ]   -   m [ i ] )   /   6 . 0 ; 
 	 	 p o l y s [ i ] . y   =   0 . 5   *   m [ i ] ; 
 	 	 p o l y s [ i ] . z   =   ( k n o t s [ i   +   1 ]   -   k n o t s [ i ] )   -   ( 2 . 0   *   m [ i ]   +   m [ i   +   1 ] )   /   6 . 0 ; 
 	 	 p o l y s [ i ] . w   =   k n o t s [ i ] ; 
 	 } 
 
 	 / /   e v a l 
 	 f l o a t   g a m m a   =   c l a m p ( g t r G a m m a ,   0 . 0 ,   4 . 0 ) ; 
 	 i n t       i d x       =   i n t ( f l o o r ( g t r G a m m a ) ) ; 
 	 f l o a t   x           =   g t r G a m m a   -   f l o a t ( i d x ) ; 
 	 f l o a t   v           =   ( ( p o l y s [ i d x ] . x   *   x   +   p o l y s [ i d x ] . y )   *   x   +   p o l y s [ i d x ] . z )   *   x   +   p o l y s [ i d x ] . w ; 
 	 r e t u r n   v ; 
 } 
 
 f l o a t   v r a y G e t G G X M o n o d i r e c t i o n a l S h a d o w i n g ( v e c 3   d i r ,   v e c 3   h w ,   v e c 3   n o r m a l ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 f l o a t   c o s T h e t a V   =   d o t ( d i r ,   n o r m a l ) ; 
 
 	 i f   ( c o s T h e t a V   < =   1 e - 3 ) 
 	 	 r e t u r n   0 . 0 ; 
 
 	 i f   ( d o t ( d i r ,   h w )   *   c o s T h e t a V   < =   0 . 0 )   / /   N o t e :   t e c h n i c a l l y   t h i s   i s   a   d i v i s i o n ,   b u t   s i n c e   w e   a r e   o n l y   i n t e r e s t e d   i n   t h e   s i g n ,   w e   c a n   d o   m u l t i p l i c a t i o n 
 	 	 r e t u r n   0 . 0 ; 
 
 	 / /   w h e n   d i r e c t i o n   i s   c o l l i n e a r   t o   t h e   n o r m a l   t h e r e   i s   n o   s h a d o w i n g 
 	 / /   m o r e o v e r   i f   t h i s   c a s e   i s   n o t   h a n d l e d   a   d i v i s i o n   b y   z e r o   w i l l   h a p p e n   o n   t h e   n e x t   l i n e 
 	 i f   ( c o s T h e t a V   > =   1 . 0   -   1 e - 6 ) 
 	 	 r e t u r n   1 . 0 ; 
 
 	 f l o a t   c o t T h e t a V   =   c o s T h e t a V   /   s q r t ( 1 . 0   -   v r a y S q r ( c o s T h e t a V ) ) ; 
 
 	 f l o a t   r e s   =   0 . 0 ; 
 
 	 / /   w h e n   g a m m a   i s   a n y   o f   t h e   i n t e g e r   v a l u e s   0 ,   1 ,   2 ,   3 ,   4   a p p l y   a n a l y t i c a l   s o l u t i o n 
 	 i f   ( g t r G a m m a   < =   0 . 0 1 ) 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 0 ( c o t T h e t a V ) ; 
 	 e l s e   i f   ( a b s ( g t r G a m m a   -   1 . 0 )   < =   1 e - 2 ) 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 1 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 e l s e   i f   ( a b s ( g t r G a m m a   -   2 . 0 )   < =   1 e - 2 ) 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 2 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 e l s e   i f   ( a b s ( g t r G a m m a   -   3 . 0 )   < =   1 e - 2 ) 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 3 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 e l s e   i f   ( g t r G a m m a   > =   4 . 0   -   1 e - 2 ) 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g 4 ( s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 e l s e   { 
 	 	 / /   g a m m a   i s   n o t   a n   i n t e g e r .   i n t e r p o l a t e 
 	 	 r e s   =   v r a y G e t G T R M o n o d i r e c t i o n a l S h a d o w i n g S p l i n e ( g t r G a m m a ,   s h a r p n e s s ,   c o t T h e t a V ) ; 
 	 } 
 
 	 r e t u r n   c l a m p ( r e s ,   0 . 0 ,   1 . 0 ) ; 
 } 
 
 f l o a t   v r a y G e t G G X B i d i r e c t i o n a l S h a d o w i n g M a s k i n g ( v e c 3   v i e w ,   v e c 3   d i r ,   v e c 3   h w ,   v e c 3   n o r m a l ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a )   { 
 	 r e t u r n   v r a y G e t G G X M o n o d i r e c t i o n a l S h a d o w i n g ( v i e w ,   h w ,   n o r m a l ,   s h a r p n e s s ,   g t r G a m m a )   *   v r a y G e t G G X M o n o d i r e c t i o n a l S h a d o w i n g ( d i r ,   h w ,   n o r m a l ,   s h a r p n e s s ,   g t r G a m m a ) ; 
 } 
 
 f l o a t   v r a y G e t G G X C o n t r i b u t i o n ( v e c 3   v i e w ,   v e c 3   d i r ,   v e c 3   h w ,   v e c 3   h l ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a ,   v e c 3   n o r m a l ,   o u t   f l o a t   p a r t i a l P r o b ,   o u t   f l o a t   D )   { 
 	 f l o a t   c o s I N   =   a b s ( d o t ( v i e w ,   n o r m a l ) ) ; 
 	 f l o a t   c o s O N   =   a b s ( d o t ( d i r ,   n o r m a l ) ) ; 
 
 	 i f   ( c o s I N   < =   1 e - 6   | |   c o s O N   < =   1 e - 6 ) 
 	 	 r e t u r n   0 . 0 ; 
 
 	 f l o a t   p a r t i a l B r d f   =   0 . 0 ; 
 
 	 f l o a t   h n         =   h l . z ; 
 	 D                       =   v r a y G e t G G X M i c r o f a c e t D i s t r i b u t i o n ( h n ,   s h a r p n e s s ,   g t r G a m m a ) ; 
 	 p a r t i a l B r d f   =   0 . 2 5   *   v r a y G e t G G X B i d i r e c t i o n a l S h a d o w i n g M a s k i n g ( v i e w ,   d i r ,   h w ,   n o r m a l ,   s h a r p n e s s ,   g t r G a m m a )   /   c o s I N ;   / /   d i v i s i o n   b y   c o s O N   i s   o m i t t e d   b e c a u s e   w e   w o u l d   h a v e   t o   m u l t i p l y   b y   t h e   s a m e   b e l o w ; 
 
 	 i f   ( h n   >   0 . 0 )   { 
 	 	 p a r t i a l P r o b   =   h n ; 
 
 	 	 f l o a t   h o   =   d o t ( h w ,   d i r ) ; 
 	 	 p a r t i a l P r o b   * =   h o   >   0 . 0   ?   0 . 2 5   /   h o   :   0 . 0 ; 
 	 } 
 
 	 / /   r e d u c e   s o m e   m u l t i p l i c a t i o n s   i n   t h e   f i n a l   v e r s i o n 
 	 / /   p a r t i a l B r d f   * =   c o s O N ;   -   o m i t t e d 
 
 	 r e t u r n   p a r t i a l B r d f ; 
 } 
 
 v e c 3   v r a y G e t G G X D i r ( f l o a t   u ,   f l o a t   v ,   f l o a t   s h a r p n e s s ,   f l o a t   g t r G a m m a ,   v e c 3   v i e w ,   m a t 3   n m ,   o u t   f l o a t   p r o b ,   o u t   f l o a t   b r d f D i v B y P r o b )   { 
 	 v e c 3   m i c r o N o r m a l L o c a l   =   v r a y G e t G G X M i c r o N o r m a l ( u ,   v ,   s h a r p n e s s ,   g t r G a m m a ) ; 
         / / v r a y D e b u g ( m i c r o N o r m a l L o c a l   *   0 . 5   +   v e c 3 ( 0 . 5 ) ) ; 
 	 i f   ( m i c r o N o r m a l L o c a l . z   <   0 . 0 ) 
 	 	 r e t u r n   n m [ 2 ] ; 
 
 	 v e c 3   m i c r o N o r m a l   =   n m   *   m i c r o N o r m a l L o c a l ; 
 
 	 / /   C o m p u t e   a n d   k e e p   t h e   l e n g t h   o f   t h e   h a l f - v e c t o r   i n   l o c a l   s p a c e ;   n e e d e d   f o r   a n i s o t r o p y   c o r r e c t i o n 
 	 f l o a t   L 2   =   d o t ( m i c r o N o r m a l ,   m i c r o N o r m a l ) ; 
 	 f l o a t   L     =   s q r t ( L 2 ) ; 
 	 m i c r o N o r m a l   / =   L ; 
 
 	 v e c 3   d i r   =   r e f l e c t ( - v i e w ,   m i c r o N o r m a l ) ; 
 
 	 f l o a t   D v a l                 =   0 . 0 ; 
 	 f l o a t   p a r t i a l P r o b   =   0 . 0 ; 
 	 f l o a t   p a r t i a l B r d f   =   v r a y G e t G G X C o n t r i b u t i o n ( v i e w ,   d i r ,   m i c r o N o r m a l ,   m i c r o N o r m a l L o c a l ,   s h a r p n e s s ,   g t r G a m m a ,   n m [ 2 ] ,   p a r t i a l P r o b ,   D v a l ) ; 
 	 p a r t i a l P r o b   * =   L   *   L 2 ;                                                                                                   / /   t a k e   a n i s o t r o p y   i n   c o n s i d e r a t i o n 
 	 p r o b                     =   ( D v a l   > =   1 e - 6 )   ?   p a r t i a l P r o b   *   D v a l   :   1 e 1 8 ;   / /   c o m p u t e   f u l l   p r o b a b i l i t y 
 	 / /   n o t e :   i n   t h e   f u l l   V R a y M t l   p r o b   i s   m u l t i p l i e d   b y   2 P I ,   b u t   i n   t h i s   s h a d e r 
 	 / /   i t ' s   u s e d   e x c l u s i v e l y   t o   s a m p l e   t n e   e n v i r o n m e n t   m a p ,   a n d   w e   w o u l d   h a v e 
 	 / /   t o   d i v i d e   b y   2 P I   i n   t h a t   c o m p u t a t i o n . 
 	 b r d f D i v B y P r o b   =   ( p a r t i a l P r o b   > =   1 e - 6 )   ?   p a r t i a l B r d f   /   p a r t i a l P r o b   :   0 . 0 ; 
 	 r e t u r n   d i r ; 
 } 
 
 f l o a t   v r a y R a n d ( v e c 2   c o )   { 
         r e t u r n   f r a c t ( s i n ( d o t ( c o . x y ,   v e c 2 ( 1 2 . 9 8 9 8 ,   7 8 . 2 3 3 ) ) )   *   4 3 7 5 8 . 5 4 5 3 ) ; 
 } 
 
 / / /   G e n e r a t e   a   r a n d o m   v e c 2 ,   u   i n   ( 0 ,   1 ) ,   v   i n   ( B ,   B + 1 )   w h e r e   B   i s   a   f r a g m e n t - d e p e n d e n t   r a n d o m   b l u e   n o i s e   v a l u e . 
 / / /   T h e   r e t u r n e d   v a l u e   i s   s u i t a b l e   t o   b e   u s e d   f o r   s a m p l i n g   a   s p e c u l a r   B R D F .   V   i s 
 / / /   o f f s e t   u s i n g   b l u e   n o i s e ,   s o   i t   c a n   b e   a b o v e   1 ,   b u t   t h a t   s h o u l d   b e   O K   b e c a u s e 
 / / /   i t   i s   e x p e c t e d   t o   b e   u s e d   a s   t h e   a r g u m e n t   t o   a   t r i g o n o m e t r i c   f u n c t i o n . 
 v e c 2   u v R a n d ( V R a y M t l C o n t e x t   c t x ,   i n t   s a m p l e I d x )   { 
 	 / /   p l a s t i c   c o n s t a n t 
 	 / /   g i v e s   s l i g h t l y   b e t t e r   r e s u l t   t h a n   g o l d e n   r a t i o 
 	 f l o a t   p l a s t   =   1 . 3 2 4 7 1 7 9 5 7 2 4 4 7 4 6 ; 
 	 f l o a t   i n v P l a s t   =   1 . 0 / p l a s t ; 
 	 r e t u r n   v e c 2 ( 
 	 	 	 f r a c t ( f l o a t ( s a m p l e I d x   +   1 )   *   i n v P l a s t ) , 
 	 	 	 f l o a t ( s a m p l e I d x )   /   f l o a t ( n b S a m p l e s )   +   c t x . b l u e N o i s e 
 	 	 	 ) ; 
 } 
 
 
 f l o a t   i n t e n s i t y ( v e c 3   v )   { 
 	 r e t u r n   ( v . x   +   v . y   +   v . z )   /   3 . 0 ; 
 } 
 
 v e c 3   v r a y S a m p l e B R D F ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   i n t   s a m p l e I d x ,   o u t   f l o a t   r a y P r o b ,   o u t   f l o a t   b r d f C o n t r i b )   { 
 	 v e c 3     g e o m N o r m a l   =   p a r a m s . g e o m N o r m a l ; 
 	 i n t       b r d f T y p e       =   p a r a m s . b r d f T y p e ; 
 	 v e c 2     u v   =   u v R a n d ( c t x ,   s a m p l e I d x ) ; 
 	 f l o a t   u   =   u v . x ; 
 	 f l o a t   v   =   u v . y ; 
 
 	 v e c 3     d i r           =   v e c 3 ( 0 . 0 ) ; 
 	 r a y P r o b   =   1 . 0 ; 
 	 b r d f C o n t r i b   =   1 . 0 ; 
 
 	 i f   ( b r d f T y p e = = 0 )   {   / /   P h o n g 
 	 	 d i r                   =   v r a y G e t P h o n g D i r ( u ,   v ,   c t x . g l o s s 1 ,   - c t x . e ,   c t x . n m ) ; 
 	 } 
 	 e l s e   i f   ( b r d f T y p e = = 1 )   {   / /   B l i n n 
 	 	 d i r                   =   v r a y G e t B l i n n D i r ( u ,   v ,   c t x . g l o s s 1 ,   - c t x . e ,   c t x . n m ) ; 
 	 } 
 	 e l s e   i f   ( b r d f T y p e = = 2 )   {   / /   W a r d 
 	 	 d i r                   =   v r a y G e t W a r d D i r ( u ,   v ,   c t x . g l o s s 2 ,   - c t x . e ,   c t x . n m ) ; 
 	 } 
 	 e l s e   { 
 	 	 d i r   =   v r a y G e t G G X D i r ( u ,   v ,   c t x . g l o s s 2 ,   c t x . g t r G a m m a ,   - c t x . e ,   c t x . n m ,   r a y P r o b ,   b r d f C o n t r i b ) ; 
 	 } 
 
 	 i f   ( d o t ( d i r ,   g e o m N o r m a l )   <   0 . 0 f )   { 
 	 	 b r d f C o n t r i b   =   0 . 0 ; 
 	 } 
 	 r e t u r n   d i r ; 
 } 
 
 v e c 3   v r a y S a m p l e R e f r a c t B R D F ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   i n t   s a m p l e I d x ,   o u t   b o o l   t o t a l I n t e r n a l R e f l e c t i o n )   { 
 	 v e c 3   g e o m N o r m a l                   =   p a r a m s . g e o m N o r m a l ; 
 	 v e c 3   r e f r a c t D i r                   =   r e f r a c t ( c t x . e ,   g e o m N o r m a l ,   1 . 0   /   p a r a m s . r e f r a c t i o n I O R ) ; 
 	 t o t a l I n t e r n a l R e f l e c t i o n   =   f a l s e ; 
 	 i f   ( r e f r a c t D i r   = =   v e c 3 ( 0 . 0 ) )   { 
 	 	 r e f r a c t D i r                             =   r e f l e c t ( c t x . e ,   g e o m N o r m a l ) ; 
 	 	 t o t a l I n t e r n a l R e f l e c t i o n   =   t r u e ; 
 	 } 
 
 	 v e c 3   s     =   c r o s s ( v e c 3 ( 0 ,   1 ,   0 ) ,   r e f r a c t D i r ) ; 
 	 v e c 3   s 1   =   c r o s s ( r e f r a c t D i r ,   s ) ; 
 	 m a t 3   m ; 
 	 m [ 0 ]   =   n o r m a l i z e ( s ) ; 
 	 m [ 1 ]   =   n o r m a l i z e ( s 1 ) ; 
 	 m [ 2 ]   =   n o r m a l i z e ( r e f r a c t D i r ) ; 
 
 	 v e c 2     u v   =   u v R a n d ( c t x ,   s a m p l e I d x ) ; 
 	 f l o a t   u   =   u v . x ; 
 	 f l o a t   v   =   u v . y ; 
 	 f l o a t   g l o s s           =   1 . 0   /   p o w ( m a x ( 1 . 0   -   p a r a m s . r e f r G l o s s ,   1 e - 4 ) ,   3 . 5 )   -   1 . 0 ; 
 	 v e c 3     s a m p l e D i r   =   v r a y G e t S p e c u l a r D i r ( u ,   v ,   g l o s s ) ; 
 
 	 r e t u r n   m   *   s a m p l e D i r ; 
 } 
 
 f l o a t   p o w 3 5 ( f l o a t   x )   { 
 	 r e t u r n   x   *   x   *   x   *   s q r t ( x ) ; 
 } 
 
 V R a y M t l C o n t e x t   i n i t V R a y M t l C o n t e x t ( V R a y M t l I n i t P a r a m s   i n i t P a r a m s )   { 
 	 f l o a t   r e f l G l o s s                 =   i n i t P a r a m s . r e f l G l o s s ; 
 	 v e c 3     V w                               =   i n i t P a r a m s . V w ; 
 	 v e c 3     g e o m N o r m a l               =   i n i t P a r a m s . g e o m N o r m a l ; 
 	 v e c 3     s e l f I l l u m                 =   i n i t P a r a m s . s e l f I l l u m ; 
 	 v e c 3     d i f f u s e C o l o r           =   i n i t P a r a m s . d i f f u s e C o l o r ; 
 	 f l o a t   d i f f u s e A m o u n t         =   i n i t P a r a m s . d i f f u s e A m o u n t ; 
 	 v e c 3     r e f l C o l o r                 =   i n i t P a r a m s . r e f l C o l o r ; 
 	 f l o a t   r e f l A m o u n t               =   i n i t P a r a m s . r e f l A m o u n t ; 
 	 b o o l     t r a c e R e f l e c t i o n s   =   i n i t P a r a m s . t r a c e R e f l e c t i o n s ; 
 	 f l o a t   m e t a l n e s s                 =   i n i t P a r a m s . m e t a l n e s s ; 
 	 f l o a t   a n i s o                         =   i n i t P a r a m s . a n i s o ; 
 	 f l o a t   a n i s o R o t a t i o n         =   i n i t P a r a m s . a n i s o R o t a t i o n ; 
 	 i n t       a n i s o A x i s                 =   i n i t P a r a m s . a n i s o A x i s ; 
 	 v e c 3     o p a c i t y                     =   i n i t P a r a m s . o p a c i t y ; 
 	 f l o a t   r o u g h n e s s                 =   i n i t P a r a m s . r o u g h n e s s ; 
 	 v e c 3     r e f r a c t i o n C o l o r     =   i n i t P a r a m s . r e f r a c t i o n C o l o r ; 
 	 f l o a t   r e f r a c t i o n A m o u n t   =   i n i t P a r a m s . r e f r a c t i o n A m o u n t ; 
 	 b o o l     t r a c e R e f r a c t i o n s   =   i n i t P a r a m s . t r a c e R e f r a c t i o n s ; 
 	 f l o a t   r e f r a c t i o n I O R         =   i n i t P a r a m s . r e f r a c t i o n I O R ; 
 	 b o o l     u s e F r e s n e l               =   i n i t P a r a m s . u s e F r e s n e l ; 
 	 f l o a t   f r e s n e l I O R               =   i n i t P a r a m s . f r e s n e l I O R ; 
 	 b o o l     l o c k F r e s n e l I O R       =   i n i t P a r a m s . l o c k F r e s n e l I O R ; 
 	 b o o l     d o u b l e S i d e d             =   i n i t P a r a m s . d o u b l e S i d e d ; 
 	 b o o l     u s e R o u g h n e s s           =   i n i t P a r a m s . u s e R o u g h n e s s ; 
 	 f l o a t   g t r G a m m a                   =   i n i t P a r a m s . g t r G a m m a ; 
 	 i n t       b r d f T y p e                   =   i n i t P a r a m s . b r d f T y p e ; 
 
 	 V R a y M t l C o n t e x t   r e s u l t ; 
 	 i f   ( i n i t P a r a m s . l o c k F r e s n e l I O R ) 
 	 	 f r e s n e l I O R   =   i n i t P a r a m s . r e f r a c t i o n I O R ; 
 
 	 r e s u l t . e   =   - n o r m a l i z e ( V w ) ; 
 	 i f   ( u s e R o u g h n e s s ) 
 	 	 r e f l G l o s s   =   1 . 0   -   r e f l G l o s s ;   / /   I n v e r t   g l o s s i n e s s   ( t u r n   i t   i n t o   r o u g h n e s s ) 
 
 	 r e s u l t . r e f l G l o s s   =   r e f l G l o s s ; 
 	 r e s u l t . o p a c i t y       =   o p a c i t y ; 
 	 r e s u l t . d i f f             =   d i f f u s e C o l o r   *   d i f f u s e A m o u n t   *   r e s u l t . o p a c i t y ; 
 	 r e s u l t . i l l u m           =   s e l f I l l u m   *   r e s u l t . o p a c i t y ; 
 	 / /   r o u g h n e s s 
 	 f l o a t   s q r R o u g h   =   r o u g h n e s s   *   r o u g h n e s s ; 
 	 r e s u l t . r t e r m A     =   1 . 0   -   0 . 5   *   ( s q r R o u g h   /   ( s q r R o u g h   +   0 . 3 3 ) ) ; 
 	 r e s u l t . r t e r m B     =   0 . 4 5   *   ( s q r R o u g h   /   ( s q r R o u g h   +   0 . 0 9 ) ) ; 
 
 	 i f   ( d o u b l e S i d e d   & &   d o t ( g e o m N o r m a l ,   r e s u l t . e )   >   0 . 0 ) 
 	 	 g e o m N o r m a l   =   - g e o m N o r m a l ; 
 
 	 v e c 3   r e f l e c t D i r       =   r e f l e c t ( r e s u l t . e ,   g e o m N o r m a l ) ; 
 	 r e s u l t . g e o m N o r m a l   =   g e o m N o r m a l ; 
 
 	 / /   c h e c k   f o r   i n t e r n a l   r e f l e c t i o n 
 	 b o o l     i n t e r n a l R e f l e c t i o n ; 
 	 v e c 3     r e f r a c t D i r ; 
 	 b o o l     o u t T o I n   =   ( d o t ( g e o m N o r m a l ,   r e s u l t . e )   <   0 . 0 ) ; 
 	 f l o a t   i o r           =   ( o u t T o I n   ?   1 . 0   /   r e f r a c t i o n I O R   :   r e f r a c t i o n I O R ) ; 
 	 v e c 3     n o r m a l     =   ( o u t T o I n   ?   g e o m N o r m a l   :   - g e o m N o r m a l ) ; 
 
 	 f l o a t   c o s t         =   - d o t ( r e s u l t . e ,   n o r m a l ) ; 
 	 f l o a t   s i n t S q r   =   1 . 0   -   i o r   *   i o r   *   ( 1 . 0   -   c o s t   *   c o s t ) ; 
 	 i f   ( s i n t S q r   >   1 e - 6 )   { 
 	 	 i n t e r n a l R e f l e c t i o n   =   f a l s e ; 
 	 	 r e f r a c t D i r                   =   i o r   *   r e s u l t . e   +   ( i o r   *   c o s t   -   s q r t ( s i n t S q r ) )   *   n o r m a l ; 
 	 }   e l s e   { 
 	 	 i n t e r n a l R e f l e c t i o n   =   t r u e ; 
 	 	 r e f r a c t D i r                   =   r e f l e c t D i r ; 
 	 } 
 	 r e s u l t . f r e s n e l   =   1 . 0 ; 
 	 i f   ( u s e F r e s n e l   & &   ! i n t e r n a l R e f l e c t i o n ) 
 	 	 r e s u l t . f r e s n e l   =   c l a m p ( v r a y G e t F r e s n e l C o e f f ( f r e s n e l I O R ,   r e s u l t . e ,   n o r m a l ,   r e f r a c t D i r ) ,   0 . 0 ,   1 . 0 ) ; 
 	 / / v r a y D e b u g ( r e s u l t . f r e s n e l ) ; 
 
 	 r e s u l t . r e f l N o F r e s n e l   =   r e f l C o l o r   *   r e f l A m o u n t   *   r e s u l t . o p a c i t y ; 
 	 r e s u l t . r e f l                     =   r e s u l t . r e f l N o F r e s n e l   *   r e s u l t . f r e s n e l ; 
 
 	 / /   R e f l e c t i o n   c a l c u l a t i o n   i n c l u d i n g   m e t a l n e s s .   T a k e n   f r o m   V R a y M t l ' s   o r i g i n a l   i m p l e m e n t a t i o n . 
 	 v e c 3   m e t a l C o l o r   =   r e s u l t . d i f f   *   r e s u l t . f r e s n e l   *   m e t a l n e s s ; 
 
 	 v e c 3   d i e l e c t r i c R e f l e c t i o n T r a n s p a r e n c y   =   t r a c e R e f l e c t i o n s   ?   ( 1 . 0   -   r e s u l t . r e f l )   :   v e c 3 ( 1 . 0 ) ; 
 	 v e c 3   r e f l e c t i o n T r a n s p a r e n c y                       =   ( 1 . 0   -   m e t a l n e s s )   *   d i e l e c t r i c R e f l e c t i o n T r a n s p a r e n c y ; 
 	 i f   ( t r a c e R e f r a c t i o n s )   { 
 	 	 r e s u l t . r e f r   =   r e f r a c t i o n C o l o r   *   r e f r a c t i o n A m o u n t   *   r e s u l t . o p a c i t y   *   r e f l e c t i o n T r a n s p a r e n c y ; 
 	 }   e l s e   { 
 	 	 r e s u l t . r e f r   =   v e c 3 ( 0 . 0 ) ; 
 	 } 
 	 r e s u l t . d i f f   * =   r e f l e c t i o n T r a n s p a r e n c y   -   r e s u l t . r e f r ; 
 
 	 r e s u l t . r e f l   =   m i x ( m e t a l C o l o r ,   r e s u l t . r e f l ,   r e s u l t . f r e s n e l ) ; 
 	 i f   ( r e s u l t . f r e s n e l   >   1 e - 6 )   { 
 	 	 r e s u l t . r e f l   / =   r e s u l t . f r e s n e l ; 
 	 } 
 
 	 r e s u l t . g l o s s 1   =   m a x ( 0 . 0 ,   1 . 0   /   p o w 3 5 ( m a x ( 1 . 0   -   r e f l G l o s s ,   1 e - 4 ) )   -   1 . 0 ) ;   / /   [ 0 ,   1 ]   - >   [ 0 ,   i n f ) 
 	 r e s u l t . g l o s s 2   =   m a x ( 1 . 0   -   r e f l G l o s s ,   1 e - 4 ) ; 
 	 r e s u l t . g l o s s 2   * =   r e s u l t . g l o s s 2 ; 
 	 r e s u l t . g t r G a m m a   =   g t r G a m m a ; 
 	 r e s u l t . b l u e N o i s e   =   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) ; 
 
 	 / /   S e t   u p   t h e   n o r m a l / i n v e r s e   n o r m a l   m a t r i c e s   f o r   B R D F s   t h a t   s u p p o r t   a n i s o t r o p y 
 	 v e c 3   a n i s o D i r e c t i o n   =   v e c 3 ( 0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
 	 i f   ( a n i s o A x i s   = =   0 ) 
 	 	 a n i s o D i r e c t i o n   =   v e c 3 ( 1 . 0 ,   0 . 0 ,   0 . 0 ) ; 
 	 e l s e   i f   ( a n i s o A x i s   = =   1 ) 
 	 	 a n i s o D i r e c t i o n   =   v e c 3 ( 0 . 0 ,   1 . 0 ,   0 . 0 ) ; 
 	 f l o a t   a n i s o A b s   =   a b s ( a n i s o ) ; 
 	 i f   ( a n i s o A b s   <   1 e - 1 2   | |   a n i s o A b s   > =   1 . 0   -   1 e - 6 )   { 
 	 	 v r a y M a k e N o r m a l M a t r i x ( g e o m N o r m a l ,   r e s u l t . n m ) ; 
 	 	 r e s u l t . i n m   =   t r a n s p o s e ( r e s u l t . n m ) ;   / /   i n v e r s e   =   t r a n s p o s e   f o r   o r t h o g o n a l   m a t r i x 
 	 }   e l s e   i f   ( ! i n t e r n a l R e f l e c t i o n )   { 
 	 	 v e c 3   b a s e 0 ,   b a s e 1 ; 
 	 	 b a s e 0                 =   n o r m a l i z e ( c r o s s ( g e o m N o r m a l ,   a n i s o D i r e c t i o n ) ) ; 
 	 	 b a s e 1                 =   n o r m a l i z e ( c r o s s ( b a s e 0 ,   g e o m N o r m a l ) ) ; 
 	 	 f l o a t   a n i s o r   =   a n i s o R o t a t i o n   *   6 . 2 8 3 1 8 5 3 ; 
 	 	 i f   ( a b s ( a n i s o r )   >   1 e - 6 )   { 
 	 	 	 f l o a t   c s   =   c o s ( a n i s o r ) ; 
 	 	 	 f l o a t   s n   =   s i n ( a n i s o r ) ; 
 	 	 	 v e c 3     n u   =   b a s e 0   *   c s   -   b a s e 1   *   s n ; 
 	 	 	 v e c 3     n v   =   b a s e 0   *   s n   +   b a s e 1   *   c s ; 
 	 	 	 b a s e 0         =   n u ; 
 	 	 	 b a s e 1         =   n v ; 
 	 	 } 
 
 	 	 i f   ( l e n g t h ( c r o s s ( b a s e 0 ,   b a s e 1 ) )   <   1 e - 6 ) 
 	 	 	 v r a y C o m p u t e T a n g e n t V e c t o r s ( g e o m N o r m a l ,   b a s e 0 ,   b a s e 1 ) ; 
 	 	 i f   ( a n i s o   >   0 . 0 )   { 
 	 	 	 f l o a t   a   =   1 . 0   /   ( 1 . 0   -   a n i s o ) ; 
 	 	 	 b a s e 0   * =   a ; 
 	 	 	 b a s e 1   / =   a ; 
 	 	 }   e l s e   { 
 	 	 	 f l o a t   a   =   1 . 0   /   ( 1 . 0   +   a n i s o ) ; 
 	 	 	 b a s e 0   / =   a ; 
 	 	 	 b a s e 1   * =   a ; 
 	 	 } 
 	 	 r e s u l t . n m [ 0 ]   =   b a s e 0 ; 
 	 	 r e s u l t . n m [ 1 ]   =   b a s e 1 ; 
 	 	 r e s u l t . n m [ 2 ]   =   g e o m N o r m a l ; 
 	 	 r e s u l t . i n m       =   i n v e r s e ( r e s u l t . n m ) ; 
 	 } 
 
 	 r e t u r n   r e s u l t ; 
 } 
 
 v e c 3   v r a y M t l D i f f u s e ( v e c 3   l i g h t D i r ,   v e c 3   n o r m a l )   { 
 	 r e t u r n   v e c 3 ( m a x ( 0 . 0 ,   d o t ( l i g h t D i r ,   n o r m a l ) ) ) ; 
 } 
 
 v e c 3   v r a y M t l D i f f u s e R o u g h n e s s ( v e c 3   l i g h t D i r ,   V R a y M t l C o n t e x t   c t x )   { 
 	 f l o a t   l i g h t N d o t L   =   m a x ( 0 . 0 ,   d o t ( l i g h t D i r ,   c t x . g e o m N o r m a l ) ) ; 
 	 f l o a t   r m u l t             =   1 . 0 ; 
 	 v e c 3     v e c V               =   - c t x . e ; 
 	 f l o a t   N V                   =   c l a m p ( d o t ( c t x . g e o m N o r m a l ,   v e c V ) ,   0 . 0 ,   1 . 0 ) ; 
 	 f l o a t   t h e t a _ i         =   a c o s ( l i g h t N d o t L ) ; 
 	 f l o a t   t h e t a _ r         =   a c o s ( N V ) ; 
 	 f l o a t   a l p h a             =   m a x ( t h e t a _ i ,   t h e t a _ r ) ; 
 	 i f   ( a l p h a   >   1 . 5 7 1 )   {   / /   1 . 5 7 1 = = p i / 2 
 	 	 r m u l t   =   0 . 0 ; 
 	 }   e l s e   { 
 	 	 f l o a t   b e t a                 =   m i n ( t h e t a _ i ,   t h e t a _ r ) ; 
 	 	 v e c 3     v e c V t a n           =   v e c V   -   c t x . g e o m N o r m a l   *   N V ; 
 	 	 v e c 3     v e c L t a n           =   l i g h t D i r   -   c t x . g e o m N o r m a l   *   l i g h t N d o t L ; 
 	 	 f l o a t   f M u l t               =   l e n g t h ( v e c V t a n )   *   l e n g t h ( v e c L t a n ) ; 
 	 	 f l o a t   c o s D e l t a P h i   =   f M u l t   <   0 . 0 0 0 0 0 1   ?   1 . 0   :   d o t ( v e c V t a n ,   v e c L t a n )   /   f M u l t ; 
 	 	 r m u l t                           =   ( c t x . r t e r m A   +   c t x . r t e r m B   *   s i n ( a l p h a )   *   t a n ( b e t a )   *   m a x ( 0 . 0 ,   c o s D e l t a P h i ) ) ; 
 	 } 
 	 r e t u r n   v e c 3 ( l i g h t N d o t L   *   r m u l t ) ; 
 } 
 
 v e c 3   v r a y M t l B l i n n ( v e c 3   l i g h t D i r ,   V R a y M t l C o n t e x t   c t x )   { 
 	 f l o a t   k       =   m a x ( 0 . 0 ,   c t x . g l o s s 1 ) ; 
 	 v e c 3     h w     =   l i g h t D i r   -   c t x . e ; 
 	 v e c 3     h n     =   n o r m a l i z e ( c t x . i n m   *   h w ) ; 
 	 f l o a t   c s 1   =   h n . z ; 
 	 i f   ( c s 1   >   1 e - 6 )   { 
 	 	 f l o a t   l i g h t N d o t L   =   d o t ( c t x . g e o m N o r m a l ,   l i g h t D i r ) ; 
 	 	 i f   ( c s 1   >   1 . 0 ) 
 	 	 	 c s 1   =   1 . 0 ; 
 	 	 f l o a t   c s   =   - d o t ( n o r m a l i z e ( h w ) ,   c t x . e ) ; 
 	 	 k                 =   c s   <   1 e - 6   ?   0 . 0   :   p o w ( c s 1 ,   k )   *   ( k   +   1 . 0 )   *   0 . 1 2 5   /   c s ; 
 	 	 k   * =   l i g h t N d o t L ; 
 	 	 i f   ( k   >   0 . 0 ) 
 	 	 	 r e t u r n   v e c 3 ( k ) ; 
 	 } 
 	 r e t u r n   v e c 3 ( 0 . 0 ) ; 
 } 
 
 v e c 3   v r a y M t l P h o n g ( v e c 3   l i g h t D i r ,   V R a y M t l C o n t e x t   c t x )   { 
 	 v e c 3     r e f l e c t D i r   =   r e f l e c t ( c t x . e ,   c t x . g e o m N o r m a l ) ; 
 	 f l o a t   c s 1                 =   d o t ( l i g h t D i r ,   r e f l e c t D i r ) ; 
 	 i f   ( c s 1   >   0 . 0 )   { 
 	 	 f l o a t   l i g h t N d o t L   =   d o t ( c t x . g e o m N o r m a l ,   l i g h t D i r ) ; 
 	 	 i f   ( c s 1   >   1 . 0 ) 
 	 	 	 c s 1   =   1 . 0 ; 
 	 	 f l o a t   k   =   p o w ( c s 1 ,   c t x . g l o s s 1 )   *   ( c t x . g l o s s 1   +   1 . 0 )   *   0 . 5 ;   / /   p h o n g   k 
 	 	 k   * =   l i g h t N d o t L ; 
 	 	 i f   ( k   >   0 . 0 ) 
 	 	 	 r e t u r n   v e c 3 ( k ) ; 
 	 } 
 	 r e t u r n   v e c 3 ( 0 . 0 ) ; 
 } 
 
 v e c 3   v r a y M t l W a r d ( v e c 3   l i g h t D i r ,   V R a y M t l C o n t e x t   c t x )   { 
 	 f l o a t   c s 1                 =   - d o t ( c t x . e ,   c t x . g e o m N o r m a l ) ; 
 	 f l o a t   l i g h t N d o t L   =   d o t ( c t x . g e o m N o r m a l ,   l i g h t D i r ) ; 
 	 i f   ( l i g h t N d o t L   >   1 e - 6   & &   c s 1   >   1 e - 6 )   { 
 	 	 v e c 3   h w   =   l i g h t D i r   -   c t x . e ; 
 	 	 v e c 3   h n   =   n o r m a l i z e ( c t x . i n m   *   h w ) ; 
 	 	 i f   ( h n . z   >   1 e - 3 )   { 
 	 	 	 f l o a t   t a n h S q r   =   ( 1 . 0   /   ( h n . z   *   h n . z )   -   1 . 0 ) ; 
 	 	 	 f l o a t   d i v d         =   c s 1   *   c t x . g l o s s 2 ; 
 	 	 	 f l o a t   k               =   e x p ( - t a n h S q r   /   c t x . g l o s s 2 )   /   d i v d ; 
 	 	 	 k   * =   l i g h t N d o t L ; 
 	 	 	 i f   ( k   >   0 . 0 ) 
 	 	 	 	 r e t u r n   v e c 3 ( k ) ; 
 	 	 } 
 	 } 
 	 r e t u r n   v e c 3 ( 0 . 0 ) ; 
 } 
 
 v e c 3   v r a y M t l G G X ( v e c 3   l i g h t D i r ,   V R a y M t l C o n t e x t   c t x )   { 
 	 f l o a t   c s 1                 =   - d o t ( c t x . e ,   c t x . g e o m N o r m a l ) ; 
 	 f l o a t   l i g h t N d o t L   =   d o t ( c t x . g e o m N o r m a l ,   l i g h t D i r ) ; 
 	 i f   ( l i g h t N d o t L   >   1 e - 6   & &   c s 1   >   1 e - 6 )   { 
 	 	 v e c 3   h w   =   n o r m a l i z e ( l i g h t D i r   -   c t x . e ) ; 
 	 	 v e c 3   h n   =   n o r m a l i z e ( c t x . i n m   *   h w ) ; 
 	 	 i f   ( h n . z   >   1 e - 3 )   { 
 	 	 	 f l o a t   D                                         =   v r a y G e t G G X M i c r o f a c e t D i s t r i b u t i o n ( h n . z ,   c t x . g l o s s 2 ,   c t x . g t r G a m m a ) ; 
 	 	 	 f l o a t   G                                         =   v r a y G e t G G X B i d i r e c t i o n a l S h a d o w i n g M a s k i n g ( - c t x . e ,   l i g h t D i r ,   h w ,   c t x . g e o m N o r m a l ,   c t x . g l o s s 2 ,   c t x . g t r G a m m a ) ; 
 	 	 	 f l o a t   c s 2                                     =   m a x ( d o t ( h w ,   l i g h t D i r ) ,   0 . 0 0 0 1 ) ; 
 	 	 	 v e c 3     m i c r o n                               =   c t x . n m   *   h n ; 
 	 	 	 f l o a t   L 2                                       =   d o t ( m i c r o n ,   m i c r o n ) ; 
 	 	 	 f l o a t   a n i s o t r o p y C o r r e c t i o n   =   L 2   *   s q r t ( L 2 ) ; 
 	 	 	 f l o a t   k                                         =   0 . 2 5   *   D   *   G   *   a n i s o t r o p y C o r r e c t i o n   /   c s 1 ;   / /   a n i s o t r o p y   c o r r e c t i o n 
 	 	 	 i f   ( k   >   0 . 0 ) 
 	 	 	 	 r e t u r n   v e c 3 ( k ) ; 
 	 	 } 
 	 } 
 	 r e t u r n   v e c 3 ( 0 . 0 ) ; 
 } 
 
 v e c 3   v r a y C o m p u t e D i r e c t D i f f u s e C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   v e c 3   l i g h t D i r )   { 
 	 v e c 3   r e s   =   v e c 3 ( 0 . 0 ) ; 
 	 i f   ( p a r a m s . r o u g h n e s s   <   1 e - 6 f )   { 
 	 	 r e s   =   v r a y M t l D i f f u s e ( l i g h t D i r ,   c t x . g e o m N o r m a l ) ; 
 	 }   e l s e   { 
 	 	 r e s   =   v r a y M t l D i f f u s e R o u g h n e s s ( l i g h t D i r ,   c t x ) ; 
 	 } 
 
 	 r e t u r n   r e s ; 
 } 
 
 v e c 3   v r a y C o m p u t e D i r e c t R e f l e c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   v e c 3   l i g h t D i r )   { 
 	 v e c 3   r e s   =   v e c 3 ( 0 . 0 ) ; 
 
 	 i f   ( p a r a m s . b r d f T y p e = = 0 )   { 
 	 	 r e s   =   v r a y M t l P h o n g ( l i g h t D i r ,   c t x ) ; 
 	 } 
 	 e l s e   i f   ( p a r a m s . b r d f T y p e = = 1 )   { 
 	 	 r e s   =   v r a y M t l B l i n n ( l i g h t D i r ,   c t x ) ; 
 	 } 
 	 e l s e   i f   ( p a r a m s . b r d f T y p e = = 2 )   { 
 	 	 r e s   =   v r a y M t l W a r d ( l i g h t D i r ,   c t x ) ; 
 	 } 
 	 e l s e   i f   ( p a r a m s . b r d f T y p e = = 3 )   { 
 	 	 r e s   =   v r a y M t l G G X ( l i g h t D i r ,   c t x ) ; 
 	 } 
 
 	 r e t u r n   r e s ; 
 } 
 
 v e c 3   v r a y C o m p u t e I n d i r e c t D i f f u s e C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x )   { 
 	 v e c 3   r e s   =   v e c 3 ( 0 . 0 ) ; 
 	 r e s             =   e n v I r r a d i a n c e ( p a r a m s . g e o m N o r m a l ) ; 
 	 r e t u r n   r e s ; 
 } 
 
 v e c 3   v r a y C o m p u t e I n d i r e c t R e f l e c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x )   { 
 	 v e c 3   r e s   =   v e c 3 ( 0 . 0 ) ; 
 
 	 i f   ( ! p a r a m s . t r a c e R e f l e c t i o n s ) 
 	 	 r e t u r n   r e s ; 
 
 	 f l o a t   i n v N u m S a m p l e s   =   1 . 0 f   /   f l o a t ( n b S a m p l e s ) ; 
 	 v e c 3   e n v S u m   =   v e c 3 ( 0 . 0 ) ; 
 	 f o r   ( i n t   i   =   0 ;   i   <   n b S a m p l e s ;   + + i )   { 
 	 	 f l o a t   b r d f C o n t r i b   =   0 . 0 f ; 
 	 	 f l o a t   r a y P r o b           =   0 . 0 f ; 
 	 	 v e c 3     d i r                   =   v r a y S a m p l e B R D F ( p a r a m s ,   c t x ,   i ,   r a y P r o b ,   b r d f C o n t r i b ) ; 
 	 	 i f   ( b r d f C o n t r i b   <   1 e - 6 f ) 
 	 	 	 c o n t i n u e ; 
 	 	 f l o a t   l o d   =   c o m p u t e L O D ( d i r ,   r a y P r o b ,   n b S a m p l e s ) ; 
 	 	 e n v S u m   + =   e n v S a m p l e L O D ( d i r ,   l o d )   *   b r d f C o n t r i b ; 
 	 } 
 	 r e s   + =   e n v S u m   *   i n v N u m S a m p l e s ; 
 
 	 r e t u r n   r e s ; 
 } 
 
 v e c 3   v r a y C o m p u t e I n d i r e c t R e f r a c t i o n C o n t r i b u t i o n ( V R a y M t l I n i t P a r a m s   p a r a m s ,   V R a y M t l C o n t e x t   c t x ,   f l o a t   a l p h a ,   v e c 3   a l p h a D i r ,   v e c 3   d i f f u s e I n d i r e c t )   { 
 	 v e c 3   r e s   =   v e c 3 ( 0 . 0 ) ; 
 
 	 i f   ( ! p a r a m s . t r a c e R e f r a c t i o n s ) 
 	 	 r e t u r n   r e s ; 
 
 	 f l o a t   i n v N u m S a m p l e s   =   1 . 0 f   /   f l o a t ( n b S a m p l e s ) ; 
 	 v e c 3     v i e w                     =   - p a r a m s . V w ; 
 
 	 i f   ( a l p h a   < =   0 . 9 9 9 )   { 
 	 	 r e s   + =   e n v S a m p l e L O D ( a l p h a D i r ,   0 . 0 ) ; 
 	 }   e l s e   { 
 	 	 v e c 3   e n v S u m   =   v e c 3 ( 0 . 0 ) ; 
 	 	 f o r   ( i n t   i   =   0 ;   i   <   n b S a m p l e s ;   + + i )   { 
 	 	 	 b o o l   t o t a l I n t e r n a l R e f l e c t i o n ; 
 	 	 	 v e c 3   d i r   =   v r a y S a m p l e R e f r a c t B R D F ( p a r a m s ,   c t x ,   i ,   t o t a l I n t e r n a l R e f l e c t i o n ) ; 
 	 	 	 i f   ( t o t a l I n t e r n a l R e f l e c t i o n )   { 
 	 	 	 	 e n v S u m   + =   e n v S a m p l e L O D ( d i r ,   0 . 0 ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 e n v S u m   + =   e n v S a m p l e L O D ( d i r ,   0 . 0 ) ; 
 	 	 	 } 
 	 	 } 
 	 	 r e s   + =   e n v S u m   *   i n v N u m S a m p l e s ; 
 	 } 
 
 	 r e t u r n   r e s ; 
 } 
 
 / / /   S a m p l e   t e x t u r e   a n d   b l e n d   w i t h   d e f a u l t   c o l o r   w h e r e   n o   d a t a   e x i s t s . 
 v e c 3   t e x t u r e W i t h D e f a u l t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 3   d e f a u l t C o l o r )   { 
 	 v e c 4   s a m p l e d C o l o r   =   t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ; 
 	 r e t u r n   s a m p l e d C o l o r . r g b   +   ( 1 . 0   -   s a m p l e d C o l o r . a )   *   d e f a u l t C o l o r ; 
 } 
 
 / / /   S a m p l e   t e x t u r e   a n d   b l e n d   w i t h   d e f a u l t   v a l u e ,   t r e a t i n g   g r e e n   a s   a l p h a . 
 f l o a t   t e x t u r e W i t h D e f a u l t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   f l o a t   d e f a u l t V a l u e )   { 
 	 v e c 4   s a m p l e d V a l u e   =   t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ; 
 	 r e t u r n   s a m p l e d V a l u e . r   +   ( 1 . 0   -   s a m p l e d V a l u e . g )   *   d e f a u l t V a l u e ; 
 } 
 
 / / /   I m p l e m e n t e d   i n   s p e c u l a r / m e t a l l i c 
 / / /   i n i t P a r a m s   w i l l   b e   s e t   u p   w i t h   g e o m e t r y   d a t a   p r i o r   t o   t h i s   c a l l 
 v o i d   s e t u p I n i t P a r a m s ( i n o u t   V R a y M t l I n i t P a r a m s   i n i t P a r a m s ,   S p a r s e C o o r d   t e x C o o r d ) ; 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
 	 / /   N o r m a l   w i t h   b u m p / n o r m a l   m a p   a p p l i e d 
 	 v e c 3   b u m p N o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
 
 	 / /   I n i t   V R a y M t l 
 	 V R a y M t l I n i t P a r a m s   i n i t P a r a m s ; 
 
 	 / /   s e t u p   g e o m e t r i c   d a t a 
 	 / /   f o r   2 D   p u t   v i e w   v e c t o r   a l o n g   n o r m a l   ( s e e   l i b - v e c t o r s ) 
 	 i n i t P a r a m s . V w   =   i s 2 D V i e w   ?   b u m p N o r m a l   :   g e t E y e V e c ( i n p u t s . p o s i t i o n ) ; 
 	 i n i t P a r a m s . g e o m N o r m a l   =   b u m p N o r m a l ; 
 	 i n i t P a r a m s . a p p r o x E n v   =   f a l s e ; 
 
 	 / /   s e t u p   c o m m o n   p a r a m e t e r s 
 	 i n i t P a r a m s . d i f f u s e A m o u n t   =   u n i f o r m _ d i f f u s e _ a m o u n t ; 
 	 i n i t P a r a m s . r e f l A m o u n t   =   u n i f o r m _ r e f l e c t i o n _ a m o u n t ; 
 	 i n i t P a r a m s . t r a c e R e f l e c t i o n s   =   u n i f o r m _ t r a c e _ r e f l e c t i o n s ; 
 	 i n i t P a r a m s . a n i s o   =   0 . 0 ; 
 	 i n i t P a r a m s . a n i s o R o t a t i o n   =   0 . 0 ; 
 	 i n i t P a r a m s . a n i s o A x i s   =   u n i f o r m _ a n i s o t r o p y _ a x i s ; 
 	 i n i t P a r a m s . r e f r a c t i o n A m o u n t   =   u n i f o r m _ r e f r a c t i o n _ a m o u n t ; 
 	 i n i t P a r a m s . r e f r a c t i o n I O R   =   u n i f o r m _ r e f r a c t i o n _ i o r ; 
 	 i n i t P a r a m s . r e f r G l o s s   =   u n i f o r m _ r e f r a c t i o n _ g l o s s i n e s s ; 
 	 i n i t P a r a m s . t r a c e R e f r a c t i o n s   =   u n i f o r m _ t r a c e _ r e f r a c t i o n s ; 
 	 i n i t P a r a m s . u s e F r e s n e l   =   u n i f o r m _ u s e _ f r e s n e l ; 
 	 i n i t P a r a m s . f r e s n e l I O R   =   u n i f o r m _ f r e s n e l _ i o r ; 
 	 i n i t P a r a m s . l o c k F r e s n e l I O R   =   u n i f o r m _ l o c k _ f r e s n e l _ i o r ; 
 	 i n i t P a r a m s . d o u b l e S i d e d   =   u n i f o r m _ d o u b l e _ s i d e d ; 
 	 i n i t P a r a m s . u s e R o u g h n e s s   =   f a l s e ; 
 	 i n i t P a r a m s . g t r G a m m a   =   u n i f o r m _ g t r _ g a m m a ; 
 	 i n i t P a r a m s . b r d f T y p e   =   u n i f o r m _ b r d f _ t y p e ; 
 	 i n i t P a r a m s . o p a c i t y   =   v e c 3 ( 1 . 0 ) ; 
 
 	 / /   f l a v o u r - s p e c i f i c   s e t u p 
 	 s e t u p I n i t P a r a m s ( i n i t P a r a m s ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 
 	 / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
 	 f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 	 f l o a t   s p e c O c c l u s i o n   =   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( o c c l u s i o n ,   i n i t P a r a m s . m e t a l n e s s ,   i n i t P a r a m s . u s e R o u g h n e s s   ?   1 . 0   -   i n i t P a r a m s . r e f l G l o s s   :   i n i t P a r a m s . r e f l G l o s s ) ; 
 
 	 / /   I n i t   c o n t e x t   a n d   s a m p l e   m a t e r i a l 
 	 V R a y M t l C o n t e x t   c t x   =   i n i t V R a y M t l C o n t e x t ( i n i t P a r a m s ) ; 
 	 v e c 3   l i g h t D i r   =   u n i f o r m _ m a i n _ l i g h t . x y z   -   i n p u t s . p o s i t i o n   *   u n i f o r m _ m a i n _ l i g h t . w ; 
 	 v e c 3   d i f f u s e D i r e c t   =   v r a y C o m p u t e D i r e c t D i f f u s e C o n t r i b u t i o n ( i n i t P a r a m s ,   c t x ,   l i g h t D i r ) ; 
 	 v e c 3   d i f f u s e I n d i r e c t   =   v r a y C o m p u t e I n d i r e c t D i f f u s e C o n t r i b u t i o n ( i n i t P a r a m s ,   c t x ) ; 
 	 v e c 3   d i f f u s e   =   d i f f u s e D i r e c t   +   d i f f u s e I n d i r e c t ; 
 	 v e c 3   r e f l e c t i o n   = 
 	 	 	 v r a y C o m p u t e D i r e c t R e f l e c t i o n C o n t r i b u t i o n ( i n i t P a r a m s ,   c t x ,   l i g h t D i r )   + 
 	 	 	 v r a y C o m p u t e I n d i r e c t R e f l e c t i o n C o n t r i b u t i o n ( i n i t P a r a m s ,   c t x ) ; 
 	 f l o a t   a l p h a   =   i n t e n s i t y ( c t x . o p a c i t y ) ; 
 	 v e c 3   r e f r a c t i o n   = 
 	 	 v r a y C o m p u t e I n d i r e c t R e f r a c t i o n C o n t r i b u t i o n ( i n i t P a r a m s ,   c t x ,   a l p h a ,   - i n i t P a r a m s . V w ,   d i f f u s e I n d i r e c t ) ; 
 
 	 / /   O u t p u t   v a l u e s 
 	 i f   ( d e b u g O u t p u t   = =   0 )   { 
 	 	 a l b e d o O u t p u t ( c t x . d i f f ) ; 
 	 	 d i f f u s e S h a d i n g O u t p u t ( o c c l u s i o n   *   d i f f u s e ) ; 
 	 	 s p e c u l a r S h a d i n g O u t p u t ( s p e c O c c l u s i o n   *   r e f l e c t i o n   *   c t x . r e f l ) ; 
 	 	 / /   o u t p u t   r e f r a c t i o n   w i t h   e m i s s i v e   a s   i t   c a n ' t   r e a l l y   g o   e l s e w h e r e 
 	 	 e m i s s i v e C o l o r O u t p u t ( c t x . i l l u m   +   r e f r a c t i o n   *   c t x . r e f r ) ; 
 	 } 
 } 
 
 
 v o i d   s e t u p I n i t P a r a m s ( i n o u t   V R a y M t l I n i t P a r a m s   i n i t P a r a m s ,   S p a r s e C o o r d   t e x C o o r d )   { 
 	 / /   F e t c h   m a t e r i a l   p a r a m e t e r s 
 	 v e c 3   b a s e C o l o r   =   t e x t u r e W i t h D e f a u l t ( b a s e c o l o r _ t e x ,   t e x C o o r d ,   v e c 3 ( 0 . 5 ) ) ; 
 	 f l o a t   r o u g h n e s s   =   t e x t u r e W i t h D e f a u l t ( r o u g h n e s s _ t e x ,   t e x C o o r d ,   0 . 0 ) ; 
 	 f l o a t   m e t a l l i c   =   t e x t u r e W i t h D e f a u l t ( m e t a l l i c _ t e x ,   t e x C o o r d ,   0 . 0 ) ; 
 	 v e c 3   r e f r a c t i o n C o l o r   =   t e x t u r e W i t h D e f a u l t ( t r a n s m i s s i v e _ t e x ,   t e x C o o r d ,   v e c 3 ( 0 . 0 ) ) ; 
         v e c 3   s e l f I l l u m C o l o r   =   t e x t u r e W i t h D e f a u l t ( e m i s s i v e _ t e x ,   t e x C o o r d ,   v e c 3 ( 0 . 0 ) ) ; 
         f l o a t   a n i s o t r o p y   =   t e x t u r e W i t h D e f a u l t ( a n i s o t r o p y l e v e l _ t e x ,   t e x C o o r d ,   0 . 0 ) ; 
         f l o a t   a n i s o t r o p y A n g l e   =   t e x t u r e W i t h D e f a u l t ( a n i s o t r o p y a n g l e _ t e x ,   t e x C o o r d ,   0 . 0 ) ; 
 
         i n i t P a r a m s . d i f f u s e C o l o r   =   b a s e C o l o r ; 
         i n i t P a r a m s . r o u g h n e s s   =   r o u g h n e s s ; 
         i n i t P a r a m s . s e l f I l l u m   =   s e l f I l l u m C o l o r ; 
         i n i t P a r a m s . r e f l C o l o r   =   v e c 3 ( 1 . 0 ) ; 
         i n i t P a r a m s . r e f l G l o s s   =   r o u g h n e s s ; 
         i n i t P a r a m s . r e f r a c t i o n C o l o r   =   r e f r a c t i o n C o l o r ; 
         i n i t P a r a m s . m e t a l n e s s   =   m e t a l l i c ; 
         i n i t P a r a m s . a n i s o   =   a n i s o t r o p y ; 
         i n i t P a r a m s . a n i s o R o t a t i o n   =   a n i s o t r o p y A n g l e ; 
         i n i t P a r a m s . u s e R o u g h n e s s   =   t r u e ; 
 } 
 
 # l i n e   3 1   0 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 V 2 F   i n p u t s ; 
 	 f i l l V 2 F ( i n p u t s ) ; 
 
 	 f i l l D e f a u l t O u t p u t s ( ) ; 
 
 	 / /   C a l l   u s e r   d e f i n e d   s h a d i n g   m e t h o d 
 	 s h a d e ( i n p u t s ) ; 
 	 o c o l o r 0 . r g b   =   o u t p u t s _ . e m i s s i v e C o l o r   +   o u t p u t s _ . a l b e d o   *   o u t p u t s _ . d i f f u s e S h a d i n g   +   o u t p u t s _ . s p e c u l a r S h a d i n g ; 
 	 o c o l o r 0 . a   =   o u t p u t s _ . a l p h a ; 
 
 	 i f   ( a l g _ a l p h a _ t e s t   & &   o c o l o r 0 . a   <   1 . 0 )   d i s c a r d ; 
 
 	 / /   Q u i c k   m a s k i n g 
 	 i f   ( a l g _ h a s _ s e l e c t i o n ) 
 	 { 
 	 	 f l o a t   s e l e c t i o n M a s k   =   1 . 0   -   t e x t u r e ( a l g _ s e l e c t i o n _ t e x ,   i n p u t s . t e x _ c o o r d ) . r ; 
 
 	 	 i f   ( a l g _ s e l e c t i o n _ i s _ e d i t e d ) 
 	 	 { 
 	 	 	 v e c 2   g r i d _ c o o r d   =   s t e p ( f r a c t ( i n p u t s . t e x _ c o o r d * 3 2 . 0 ) , v e c 2 ( 0 . 5 ) ) ; 
 	 	 	 v e c 3   c h e c k b o a r d   =   v e c 3 ( a b s ( g r i d _ c o o r d . y - g r i d _ c o o r d . x ) * 0 . 4 + 0 . 3 ) ; 
 	 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   c h e c k b o a r d ,   0 . 1 5 ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s e l e c t i o n M a s k   * =   Q U I C K _ M A S K _ C O L O R . a ; 
 	 	 } 
 
 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   Q U I C K _ M A S K _ C O L O R . r g b ,   s e l e c t i o n M a s k ) ; 
 	 } 
 
 	 i f   ( a l g _ d i t h e r )   o c o l o r 0   =   d i t h e r P r e S R G B ( o c o l o r 0 ) ; 
 # i f   ! d e f i n e d ( D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ) 
 	 o c o l o r 0   =   l i n e a r 2 s R G B O p t ( o c o l o r 0 ) ; 
 # e n d i f 
 } 
