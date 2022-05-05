        r e s o u r c e _ v e r s i o n       /00f81ea21f7a579bd5bdded1f4cf57663553a016.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
   � # v e r s i o n   3 3 0 
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
   � # v e r s i o n   4 5 0 
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
   g� # v e r s i o n   4 5 0 
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
  �� # v e r s i o n   4 5 0 
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
 / / -   R o t a t e   x y   c o m p o n e n t s   c o u t e r - c l o c k w i s e 
 v e c 2   r o t a t e ( v e c 2   v e c t o r ,   f l o a t   a n g l e ) 
 { 
     f l o a t   c r o t   =   c o s ( a n g l e ) ; 
     f l o a t   s r o t   =   s i n ( a n g l e ) ; 
     r e t u r n   m a t 2 ( c r o t ,   - s r o t ,   s r o t ,   c r o t )   *   v e c t o r ; 
 } 
 
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
 # l i n e   1 3 0   4 
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
 # l i n e   0   7 
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
 # l i n e   2 5   7 
 # l i n e   2 6   7 
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
 # l i n e   1   6 
 # l i n e   0   9 
 / / -   l i b - p b r . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l _ d i s t r i b ` 
 / / -   ` f r e s n e l ` 
 / / -   ` G 1 ` 
 / / -   ` v i s i b i l i t y ` 
 / / -   ` h o r i z o n F a d i n g ` 
 / / -   ` p b r C o m p u t e D i f f u s e ` 
 / / -   ` p b r C o m p u t e S p e c u l a r ` 
 / / -   ` p b r C o m p u t e B R D F ` 
 / / - 
 / / - 
 / / -   N u m b e r   o f   m i p l e v e l s   i n   t h e   e n v m a p . 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ m a x _ l o d 
 u n i f o r m   f l o a t   m a x L o d ; 
 
 / / -   A n   i n t   r e p r e s e n t i n g   t h e   n u m b e r   o f   s a m p l e s   m a d e   f o r   s p e c u l a r   c o n t r i b u t i o n 
 / / -   c o m p u t a t i o n .   T h e   m o r e   t h e   h i g h e r   q u a l i t y   a n d   t h e   p e r f o r m a n c e   i m p a c t . 
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
 / / -   V a l u e   u s e d   t o   c o n t r o l   s p e c u l a r   r e f l e c t i o n   l e a k i n g   t h r o u g h   t h e   s u r f a c e . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 3 , 
 / / :       " l a b e l " :   " H o r i z o n   F a d i n g " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   2 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   h o r i z o n F a d e ; 
 
 / / -   I m p o r t   f r o m   l i b r a r y ,   o t h e r   p a r a m e t e r s 
 # l i n e   0   1 0 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 0 
 # l i n e   1 0   1 0 
 
 / / -   E n g i n e   p r o v i d e d   p a r a m e t e r s 
 / / :   p a r a m   a u t o   t e x t u r e _ e n v i r o n m e n t 
 u n i f o r m   s a m p l e r C u b e   e n v i r o n m e n t _ t e x t u r e ; 
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
 / / -   a c c o u n t . 
 v e c 3   e n v S a m p l e L O D ( v e c 3   d i r ,   f l o a t   l o d ) 
 { 
     d i r . x z   =   r o t a t e ( d i r . x z ,   e n v i r o n m e n t _ r o t a t i o n   *   - M _ 2 P I ) ; 
     r e t u r n   t e x t u r e L o d ( e n v i r o n m e n t _ t e x t u r e ,   d i r ,   l o d ) . r g b   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 
 / / -   R e t u r n   t h e   i r r a d i a n c e   f o r   a   g i v e n   d i r e c t i o n .   T h e   c o m p u t a t i o n   i s   b a s e d   o n 
 / / -   e n v i r o n m e n t ' s   s p h e r i c a l   h a r m o n i c s   p r o j e c t i o n . 
 v e c 3   e n v I r r a d i a n c e ( v e c 3   d i r ) 
 { 
     d i r . x z   =   r o t a t e ( d i r . x z ,   e n v i r o n m e n t _ r o t a t i o n   *   - M _ 2 P I ) ; 
     v e c 4   s h D i r   =   v e c 4 ( d i r . x z y ,   1 . 0 ) ; 
     r e t u r n   m a x ( v e c 3 ( 0 . 0 ) ,   v e c 3 ( 
             d o t ( s h D i r ,   i r r a d _ m a t _ r e d   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ g r e e n   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ b l u e   *   s h D i r ) 
         ) )   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 # l i n e   4 8   9 
 # l i n e   0   1 1 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 1 
 
 / / -   T h e   e m i s s i v e   c h a n n e l   t e x t u r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ e m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   e m i s s i v e _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   e m i s s i v e   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 0 , 
 / / :       " l a b e l " :   " E m i s s i v e   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 0 0 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   e m i s s i v e _ i n t e n s i t y ; 
 
 / / -   C o m p u t e   t h e   e m i s s i v e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e S p a r s e ( e m i s s i v e ,   c o o r d ) . r g b ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 3   p b r C o m p u t e E m i s s i v e ( s a m p l e r 2 D   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e ( e m i s s i v e _ t e x ,   t e x _ c o o r d ) . r g b ; 
 } 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x . t e x ,   t e x _ c o o r d ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   4 9   9 
 # l i n e   0   1 2 
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
 # l i n e   1 2   1 2 
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
 u n i f o r m   i n t   a l g _ r a n d o m _ s e e d   =   0 ; 
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
 # l i n e   5 0   9 
 # l i n e   0   1 3 
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
 # l i n e   0   1 4 
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
 # l i n e   1 7   1 4 
 # l i n e   1 8   1 4 
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
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
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
 / / -   [ D O C - O N ] 
 # l i n e   1 1   1 3 
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
 / / -   W o r l d   s p a c e   l o c a l   f r a m e 
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
 # l i n e   5 1   9 
 
 
 / / -   B R D F   r e l a t e d   f u n c t i o n s 
 
 f l o a t   n o r m a l _ d i s t r i b ( 
     f l o a t   n d h , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   u s e   G G X   /   T r o w b r i d g e - R e i t z ,   s a m e   a s   D i s n e y   a n d   U n r e a l   4 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   a l p h a   =   R o u g h n e s s   *   R o u g h n e s s ; 
     f l o a t   t m p   =   a l p h a   /   m a x ( 1 e - 8 , ( n d h * n d h * ( a l p h a * a l p h a - 1 . 0 ) + 1 . 0 ) ) ; 
     r e t u r n   t m p   *   t m p   *   M _ I N V _ P I ; 
 } 
 
 v e c 3   f r e s n e l ( 
     f l o a t   v d h , 
     v e c 3   F 0 ) 
 { 
     / /   S c h l i c k   w i t h   S p h e r i c a l   G a u s s i a n   a p p r o x i m a t i o n 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   s p h g   =   e x p 2 ( ( - 5 . 5 5 4 7 3 * v d h   -   6 . 9 8 3 1 6 )   *   v d h ) ; 
     r e t u r n   F 0   +   ( v e c 3 ( 1 . 0 )   -   F 0 )   *   s p h g ; 
 } 
 
 f l o a t   G 1 ( 
     f l o a t   n d w ,   / /   w   i s   e i t h e r   L n   o r   V n 
     f l o a t   k ) 
 { 
     / /   O n e   g e n e r i c   f a c t o r   o f   t h e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   n d w 
     / /   N B   :   W e   s h o u l d   h a v e   k   >   0 
     r e t u r n   1 . 0   /   (   n d w * ( 1 . 0 - k )   +     k   ) ; 
 } 
 
 f l o a t   v i s i b i l i t y ( 
     f l o a t   n d l , 
     f l o a t   n d v , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   S c h l i c k   w i t h   S m i t h - l i k e   c h o i c e   o f   k 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     / /   v i s i b i l i t y   i s   a   C o o k - T o r r a n c e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   ( n . l ) * ( n . v ) 
     f l o a t   k   =   m a x ( R o u g h n e s s   *   R o u g h n e s s   *   0 . 5 ,   1 e - 5 ) ; 
     r e t u r n   G 1 ( n d l , k ) * G 1 ( n d v , k ) ; 
 } 
 
 v e c 3   c o o k _ t o r r a n c e _ c o n t r i b ( 
     f l o a t   v d h , 
     f l o a t   n d h , 
     f l o a t   n d l , 
     f l o a t   n d v , 
     v e c 3   K s , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   T h i s   i s   t h e   c o n t r i b u t i o n   w h e n   u s i n g   i m p o r t a n c e   s a m p l i n g   w i t h   t h e   G G X   b a s e d 
     / /   s a m p l e   d i s t r i b u t i o n .   T h i s   m e a n s   c t _ c o n t r i b   =   c t _ b r d f   /   g g x _ p r o b a b i l i t y 
     r e t u r n   f r e s n e l ( v d h , K s )   *   ( v i s i b i l i t y ( n d l , n d v , R o u g h n e s s )   *   v d h   *   n d l   /   n d h   ) ; 
 } 
 
 v e c 3   i m p o r t a n c e S a m p l e G G X ( v e c 2   X i ,   v e c 3   T ,   v e c 3   B ,   v e c 3   N ,   f l o a t   r o u g h n e s s ) 
 { 
     f l o a t   a   =   r o u g h n e s s * r o u g h n e s s ; 
     f l o a t   c o s T   =   s q r t ( ( 1 . 0 - X i . y ) / ( 1 . 0 + ( a * a - 1 . 0 ) * X i . y ) ) ; 
     f l o a t   s i n T   =   s q r t ( 1 . 0 - c o s T * c o s T ) ; 
     f l o a t   p h i   =   2 . 0 * M _ P I * X i . x ; 
     r e t u r n 
         T   *   ( s i n T * c o s ( p h i ) )   + 
         B   *   ( s i n T * s i n ( p h i ) )   + 
         N   *     c o s T ; 
 } 
 
 f l o a t   p r o b a b i l i t y G G X ( f l o a t   n d h ,   f l o a t   v d h ,   f l o a t   R o u g h n e s s ) 
 { 
     r e t u r n   n o r m a l _ d i s t r i b ( n d h ,   R o u g h n e s s )   *   n d h   /   ( 4 . 0 * v d h ) ; 
 } 
 
 f l o a t   d i s t o r t i o n ( v e c 3   W n ) 
 { 
     / /   C o m p u t e s   t h e   i n v e r s e   o f   t h e   s o l i d   a n g l e   o f   t h e   ( d i f f e r e n t i a l )   p i x e l   i n 
     / /   t h e   c u b e   m a p   p o i n t e d   a t   b y   W n 
     W n   =   a b s ( W n ) ; 
     W n   / =   m a x ( W n . x ,   m a x ( W n . y ,   W n . z ) ) ; 
     r e t u r n   p o w ( d o t ( W n ,   W n ) ,   - 1 . 5 ) ; 
 } 
 
 f l o a t   c o m p u t e L O D ( v e c 3   L n ,   f l o a t   p ) 
 { 
     r e t u r n   m a x ( 0 . 0 ,   m a x L o d   -   0 . 5   -   0 . 5   *   l o g 2 ( f l o a t ( n b S a m p l e s )   *   p   *   d i s t o r t i o n ( L n ) ) ) ; 
 } 
 
 / / -   H o r i z o n   f a d i n g   t r i c k   f r o m   [ h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ] ( h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ) 
 f l o a t   h o r i z o n F a d i n g ( f l o a t   n d l ,   f l o a t   h o r i z o n F a d e ) 
 { 
     f l o a t   h o r i z   =   c l a m p ( 1 . 0   +   h o r i z o n F a d e   *   n d l ,   0 . 0 ,   1 . 0 ) ; 
     r e t u r n   h o r i z   *   h o r i z ; 
 } 
 
 / / -   C o m p u t e   t h e   l a m b e r t i a n   d i f f u s e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e D i f f u s e ( v e c 3   n o r m a l ,   v e c 3   d i f f C o l o r ) 
 { 
     r e t u r n   e n v I r r a d i a n c e ( n o r m a l )   *   d i f f C o l o r ; 
 } 
 
 / / -   C o m p u t e   t h e   m i c r o f a c e t s   s p e c u l a r   r e f l e c t i o n   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e S p e c u l a r ( L o c a l V e c t o r s   v e c t o r s ,   v e c 3   s p e c C o l o r ,   f l o a t   r o u g h n e s s ) 
 { 
     v e c 3   r a d i a n c e   =   v e c 3 ( 0 . 0 ) ; 
     f l o a t   n d v   =   d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
 
     f o r ( i n t   i = 0 ;   i < n b S a m p l e s ;   + + i ) 
     { 
         v e c 2   X i   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
         v e c 3   H n   =   i m p o r t a n c e S a m p l e G G X ( 
             X i ,   v e c t o r s . t a n g e n t ,   v e c t o r s . b i t a n g e n t ,   v e c t o r s . n o r m a l ,   r o u g h n e s s ) ; 
         v e c 3   L n   =   - r e f l e c t ( v e c t o r s . e y e , H n ) ; 
 
         f l o a t   f a d e   =   h o r i z o n F a d i n g ( d o t ( v e c t o r s . v e r t e x N o r m a l ,   L n ) ,   h o r i z o n F a d e ) ; 
 
         f l o a t   n d l   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . n o r m a l ,   L n ) ) ; 
         f l o a t   v d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . e y e ,   H n ) ) ; 
         f l o a t   n d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . n o r m a l ,   H n ) ) ; 
         f l o a t   l o d S   =   r o u g h n e s s   <   0 . 0 1   ?   0 . 0   :   c o m p u t e L O D ( L n ,   p r o b a b i l i t y G G X ( n d h ,   v d h ,   r o u g h n e s s ) ) ; 
         r a d i a n c e   + =   f a d e   *   e n v S a m p l e L O D ( L n ,   l o d S )   * 
             c o o k _ t o r r a n c e _ c o n t r i b ( v d h ,   n d h ,   n d l ,   n d v ,   s p e c C o l o r ,   r o u g h n e s s ) ; 
     } 
     / /   R e m o v e   o c c l u s i o n s   o n   s h i n y   r e f l e c t i o n s 
     r a d i a n c e   / =   f l o a t ( n b S a m p l e s ) ; 
 
     r e t u r n   r a d i a n c e ; 
 } 
 # l i n e   2   6 
 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 
 / / - - - - - - - - E X T E R N A L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   " f l a k e s " ,   " l a b e l " :   " F l a k e s   T e x t u r e " ,   " u s a g e " :   " t e x t u r e "   } 
 u n i f o r m   s a m p l e r 2 D   f l a k e s _ t e x ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   2 5 ,   " l a b e l " :   " F l a k e s   S c a l e " ,   " m i n " :   1 . 0 ,   " m a x " :   1 0 0 . 0   } 
 u n i f o r m   f l o a t   f l a k e s _ s c a l e ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   0 . 7 5 ,   " l a b e l " :   " F l a k e s   I n t e n s i t y " ,   " m i n " :   0 . 0 ,   " m a x " :   1 . 0   } 
 u n i f o r m   f l o a t   n o r m a l P e r t u r b a t i o n ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   [ 0 . 3 , 0 . 3 , 0 ] ,   " l a b e l " :   " F l a k e   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   f l a k e L a y e r C o l o r ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   [ 0 . 2 , 0 . 0 , 0 . 2 ] ,   " l a b e l " :   " S e c o n d a r y   P a i n t   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   p a i n t C o l o r M i d ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   [ 0 . 3 , 0 . 2 , 0 . 0 ] ,   " l a b e l " :   " T e r t i a r y   P a i n t   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   p a i n t C o l o r 2 ; 
 
 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   d i f f C o l o r   =   g e n e r a t e D i f f u s e C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
     / / F l a k e s 
     v e c 3   v F l a k e s N o r m a l   =   t e x t u r e ( f l a k e s _ t e x ,   i n p u t s . t e x _ c o o r d   *   f l a k e s _ s c a l e ) . r g b ; 
     v e c 3   v N p 1   =   n o r m a l i z e ( v e c t o r s . n o r m a l   +   0 . 2   *   v F l a k e s N o r m a l ) ; 
     v e c 3   v N p 2   =   n o r m a l i z e ( v e c t o r s . n o r m a l   +   n o r m a l P e r t u r b a t i o n   *   v F l a k e s N o r m a l ) ; 
 
     v e c 3   v N p 1 W o r l d   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   v N p 1 ) ; 
     f l o a t   f F r e s n e l 1   =   m a x ( 0 . 0 ,   d o t ( v N p 1 W o r l d ,   v e c t o r s . e y e ) ) ; 
 
     v e c 3   v N p 2 W o r l d   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   v N p 2 ) ; 
     f l o a t   f F r e s n e l 2   =   m a x ( 0 . 0 ,   d o t ( v N p 2 W o r l d ,   v e c t o r s . e y e ) ) ; 
 
     f l o a t   f F r e s n e l 1 S q   =   f F r e s n e l 1   *   f F r e s n e l 1 ; 
     v e c 3   p a i n t C o l o r   = 
         f F r e s n e l 1   *   b a s e C o l o r   + 
         f F r e s n e l 1 S q   *   p a i n t C o l o r M i d   + 
         f F r e s n e l 1 S q   *   f F r e s n e l 1 S q   *   p a i n t C o l o r 2   + 
         p o w ( f F r e s n e l 2 ,   1 6 . 0 )   *   f l a k e L a y e r C o l o r ; 
     d i f f C o l o r   =   m i x ( d i f f C o l o r ,   p a i n t C o l o r ,   m e t a l l i c ) ; 
 
     d i f f u s e S h a d i n g O u t p u t ( o c c l u s i o n   *   p b r C o m p u t e D i f f u s e ( v e c t o r s . n o r m a l ,   d i f f C o l o r ) ) ; 
 } 
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
    c u s t o m - p r e v i e w   F    �PNG

   IHDR         �x��   	pHYs  %  %IR$�    IDATx��ksd�q-�2��眪��M�������(�a�lI��_�o�/p�o�O���abfb&bn؎���w���޲L���T�s�Μ���B��DY��X@�(���+�Z	4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444|���hhhx_�9o~�o���[�{���󱆆��C���᷇��}���}��y���?*(�.�r涳M�yM�~s�����A����7�{t�r������mU#p��/{���ُ�_�_��0444����������E;������y㽏�s>�ٯ���l��/�w7��E�s�� 444�;�5 �:�+�gv8�v�������m�z�,���쉿6 �"��>��{9�4�����	�hh����? �g.����������|�M�Y*�P�{��~�{��o���?��m
�������hh�7~ق����ۻ�ι_�g��oλ�l�?�UG �����^/�ʕ+���[��݅�l����_�3���|���7����uc>�����N��/���u�����f��._=RH�jTA#�j"A|�ӯ<r��G��GPU��S�t�v� PT���(�v������"����+y�@�	�V��P���}��["2��E0��n��q�����Ek~E��ᓎ�{U`�����e�w�j��O<�죪U5*�h4\�ti���}�)YJ�.W� 3AE!j� Q]ʾ�>F�'��$�߉@F��� �k(��^y������w������7T���(�������4ma�p���MA�}�����5��������o��o�s߆��Z��I�Y^��T�>����t�~���E+�뽷WϾ��g�.]Vh�(�.�Ǟz�!Rj����^�v�cE�`DYO5�1��<2{S  "d�̪��*!� �z �6T��}����% �`��`���=ff�W��k?y띷�>&�(0��_���9߁��6[���f`�A�0�ّ�4�5 w�G�����
���������ڻ��C�̼Q�����k�\�p �.�wVS�q�BŮE�"�"bEU��ZC����YT�{�I�8]@�(v�G$����Q�u�HV��	$����*����`���P`�Ĉ���9 �� ș�۷޻3�\ ������x��7���v���8mNpwc�Q5�CИ���3Z��qÇ�㟧��p�	�^V8��o���׮?c<P��_���7��@D`�P��S���*�\
� �ٹ|X�/�X� FQAG���s�c�PE�@U��(Ej���
D�_������8�l��B
fF�
E!�f��- ��`� �����0`�*�4�/������y�S��������̥6�~ՑAk>Qh@���G�g�;���?�p���/ �O}�/r+V��/}�1f6��V4�;�b={a�$CV�E��
�d V�� x�fD�,��N�lKqj��U"f@	E�]��*�U@ ��P`���}|�&FU����`/�Y�
+�L� 0�s��G�!������D
)����q�q.��[���})�m|��`�r^C�o?<�%���{6�h���5 ��8?�?���/��������&�x��o��/p�t��k��8a�x1�'|�,��svx�7:_�[��@�JȚ1� �<=���;�@��)�2?"oT��6r�����\U`b=��	���/=���aA`cֱ�N
��v�`"�B3cRA B

���Pr#l� jD`��01b�`��}�޻��2�
����������g �a��1~����m�6����2޷ ��4���5 ��8��ߋ����-� ���?p��~�/|�k_�t�@@��DJ��8�ԋdD"D0v�Q��ab=��ܱd�X�c�]�Z�P�XWA.=0l�
V��E�P�*&0�0IA��ً��.�UE`��)�XftH! ���@)�i���Vg���c�k 88��A���������6��E�*r T�{bB��� Q|�o��{���'?#��o��3�M���z9OlX��:.8oLpO4V����h�}�~�ߧ��+����'֫כz}�����y��0�6O?��c)��9C�ho�񭰊:�;�Ct���ӳ1�\��,�D�I��g5
=(Yц	�K�(���� ���^�+ B+�YG�	��	� bL�1J�A��qk� Gt���& & T(
L�P��^����
�!!w�c��Tm����RD��t 肍 �k	2LB�&����12��	��������ڻ�~��������zV�kS����Q¾a_KP�� Z3����� 4�>��_O�g)�*�[8��T�]���O?��Ï>~$8�t����`�>�'2�Jȥ��o],y&�3
_��'L�F�q{�.3w�qH ��j*��#T����(*Xqĝ<a���;u����Pd0��MH��`Wf�Z�(b��E~���ً�N�	��p'��|�Us0��$���M# ��70Jj�+�� 0[�E��� �&���.&�>ؾN���ec���{����޺ ���w�����߇�;~9p{��z[m
������U'����{���w�*��3�Z�7���w}��K���H���/��̍��GD臡�!���U;��姒�A^\U�bߢvDRA�� ��M��I�)��vo¾�|s�'{0��@6Z(j4p:<��-���`E��`�l��|��YV1p�,��<�_=�'��dd-�|T`�K"��d$
 ���-3z&*t:���;� f�!��
t	*P?��%�� ��)�̀.�&D !�0�bGB
1XV!�,''ǣ@����������'"=��vo��ݛ n�]jSp�Sm��~��>�`���w�h�]C��<��W�|��;��a�r�^�g����_x���+Ž�6����n�xE.����`���"Į�W�O������,����vX#`���>kA��@-��=�5���z�'
P�`��L�-��?x#�(`[&!-O��59���L8f"ܞF()�����2{^�iz� Cؖ�l����1���$Fvq`E� �~[V�*vƌP����1.]��H��L+���DH�&���1�ؐ0�
v{ ����[o����ǿ��?����#�w�.����f`�ep�8/}�\4F��w�h�]�YE�~���}����/���냃k�|�s�%E|�'"��	6���mk�+�DJH)ȣ^��BW��u��y�g�zWW���^کw���������O�,���c�!��ح�ޞN���p�GDb����1�bB� %���F)�)z��!�b҂"�};�ϒ-�=G0;����� ��"�aچ!&;�(Pa�	�Y #��P�ނG�B��hC��`F�s,ԟ'�&�1�> ����. �@�C k�lBbˏ��7~�ڿ��_��7��w�R���7���>T# 4�@�o�h�m����T������/8p�_��◿��+W�^�l�E��?/U�O�=q���\
�O����b\�?IF��k"1�+��K���UA��+��	��G
t�iFO��m�,�ו�v?�X2�u� ���,%�A�J��c�|���!���C�6'g"���`/G� ��XE�
LR��3�ŅJ�\2k�\�7JƤ��9@�5������  ��^�'S�S�Mct��%���q�(e/Y�F�Ƙ�PP9 �ec8F�+�N��4�	Y
T��Ν���O?㍟����"�Ο���O�g�?��[�[+p�=�K#���Fk ~[�W�ߏ�'����/��+>��\{��^~��<�lY�ѽ  J���I��>��cb�<�H��N�MHWg������'��]T0K��S�.�(��.ś
�$3��*$L9C�[�d���L:����{Lr���1��Ew�%���C~f)�xpXN��� Yh�����c�FD& ��+;�b�!ᤌ��'+������ ��X��
�+[01V�[G� ���C@�d�E&�F����ŋ��@$^�T�3B�#�
"DfP�Ƃ\� "k
��~��7����;��ο�3~���@�g�?8+l�@��4�o�4|�p/Q_��B_O�W�� �<�����3/��Ͽ��/~���ׯ0Y�<Y~�+���\�D �`7��"P1�ߢvA��M|fn
+��9`�>��+����2۬_�Mτ�����u�.O8�G�9a�g�eF)6�'9M�#�B���L%#c��]� `iD����\2Gd�&�;�	9��(p;o�"����
�V�b���ч�	�ʅ��]�qzLe�,�����<C�`�g�h ��a�p��E�q'�����Db�,����e��P�P@DP�79bϋ���+��,rY(�Ԁ�9����?�������.]z��7��m�5S��M�/�:Mh��������ꫯ��������nh�����/��Ŀ���乀�F�6G�}_��o~�����zs�b���sk�����*��b���-�>���<�f�c"O�S�B��^���2�
�,=EDf��ө__�=%�q{޹�{(Њ;(���
 ���o���I0KA��B��X<�6��5���檢?�`[&��.��Q�0�`,��flb�Č�<����y���"�BB Ɖ7;sɾ�����<#r@�2�w� |�"0L2C��C�$b��3�;� E�6�d�&D��FD�H���i1W�LU�h��"b�P6;!�-.�)ڂ����<��@��\�|���������{����q���S��m#��	|hF����h@�o���Z������o_طP�/]�ٯV��|䑛O=��;�mʃ���T^Ċ=���}R;����3�5�6.�'媌�(�	�N��o0D�S���yF��]�m���7+ݘm��SB!qĮ����Egp'��9�g��w!�ؠ̘�`���H~�5r��JƶL����hZ��*�o��H̶��e^|��d0]���MLEЇ�����B�D�e�;dl� U�6O 6��q1�[o��p+�r�� H1ʌ>&K/�!Xc��Y-�80/:��'�o5$$@`�3���*XB@����`����\�k����|���;%�w^��O����}��y:�_z4���Fk ~��'�j�;��_��}ڿ�Rz���{��g�}���`5��?av����Is6����@��q1-y����+=�%<'�)�ja:�j�?/D���F��8)z���5P�u�	CH��E��Q2���b+�_{h��)#\��d��'�����"����Y0�	ŕ��2[̰��'y�bH<����m�p�ֈ��R���Qf���-�e�H݃x ��i�qR�EPx�3��Xf0��9�Z���
f�B��)/�#w�B�S;l2`�YCL&-4��5�%�c�2�!��`AG)D����<�����������o��?�5o�nV�#i#��D� 4�&�?�¾��~-��a���a��� p����_��g^z���Z��1�i�T}���"(�@rF����:)�U�窵��d��B�ԻX��b}#ى{,��� ��=o>�w��i(b�����Y���mˈ�<BD�q�;����ߘ'�Oݧ��iD��M엵��L �8.�y�*t�0�y�a��(~J�$�&�S5�w�-V��&�v[�́S���(���6�:����X�ɛ���Y
֡�t��(x��1+5{a,y]V�-5D�b(ve^fK�.9�`W&[��H}�œ�S�S=�x \7`k��O$B|�+7~�Ƶ7��w�w�Y�@��@#PuM#��@k >J�W����Sz�2Lܷ_�o>����+_��Wn�|��z���*Hj�. � Ŷ�m��h�_����F����VZm�V>!�|{��9��yD#���C1!��|W�� !��lB��'?�{�^ Fk*:��p{:��90�?�0������89�_�`�!
�lt}���U�fw���W�qe8�q�ڨ�$��BD�b��m4`nF.�<!kƮؘc�	]0�$z�OmUDua&ֱ�X��f�`)���<oaW&�ʄ����2W�l��3)=Gl�"f�8��K�(�F#�5�ހ�Hf�5��Z("�خk4��(5�	�}�|ty��K/=ytt���;����$�4��#mZ��Q�5 �+��������h�^?��c�}��_��<��׆a�&�c�����-
0�v��%�N'g)������UY/.̻��9���_�7��k
�!(�uU�Oj��{��s��`�b��d�g���3e���<��:�bD
����������F�G�Э0�U`;��c�@���xa�
.vk�*nO'�1
}0Q�,�4d,@�	�<�~R�`�]�*�(D2�.ʔ�<XVB�b��c���(��H<f��'̥��=7����1"��(Y,��S驝�~
B1�I������������/>)E.���o�"|č@+�5Z�����
�~h��+8-����|��o���+/<���77�MP=}�5����f��u��o"V �(Y6~�S;^ -Ky*ͻ��̉��`��3�Ț�p<�H�	��h;��v�@8����%۩]�\�X����d������D�- 07��~�V��_���yB`F���b̚������-�*V�C ��lDbc@��a�����x�=��<����� ���M���撗| @�����xv���� u�a���E�V�;X��͇��A�&@Ԝ �1��7�k;����N�韜1**("H0g��i	Tl���=����r�ߧ���nܸ��c�߸������M����# ��@ï�� 4�*�0��N��/���_�����/=��c�m���y�Y�Y̗_O�RZ�19����fڬ�<��OO�,���cEF���W������� �Q@����m�-�^��w�`��sg8�����9c�f3L!R0���/��R�8A�(:�m�Iޢ�����xl	|�f��G��<Ąu엜����@"�\,yoɖ!y��n�c����hAP��.�%U$6�~$�@����3E�d��}�b����	N�T&�6m��?�n`�+C6��(��V&����X!Q���',��aߛ�![�5��!�ڠ�8�����PY���bG�/<��s�>p���?��2�c���H��4�:h@�/�[�/�������/?���/|�3�>{�9L:CJ˦<R�� �,�WO.��<�w��_�M�U�k� -j�}�ƻ觽R��U��	 ���)^�\���-R��(�8>���<�U�õ��+�)�N�ś����4�T�eݻ��N��Ȧ�?�G�%c�u8�V %�R��{{�΅�`w��R��GKD��cg�S�r�ȶ��t+����;��}f���	��+    IDAT�U�0�'�&2� ���<!���,.y��W#�s`y��"�*8��B���h�l�_����SD��cwU�f�w��٬���3=���u��W�nW�ͥo��. e�����\9|���<M�E
���{�}����&��f���_�h�0�U����>����K�~���=��Uթ��T��,�=�A>�w�g!��ۋ�͗����3��2/&6�:�lu~��)"���G߀�`:�M�@�M0xj���N&��g?1�b�u{O�S1��vڙ_�L�레`���mn?��N�!�X�Y
R�H��/��.��?0�)`��%�8�x!#����?�t=�qЭL	kv����V����œ �uŅ�uᑭNX��){n���:��2H�:��B��z��������>|bg�"�QO:5[c��R��6r�8,�OU���	/��@���	A��&�L� ��Hӥ�k'�7�:L/ݍ!
dU�޸q��'��yt��7�s�>������f�n�������~�?k������]�=����?���O=s���Wb\7�.�#�ħ5�G�p�1 ���t	�Q�N��*�?�@L_綀��(⎢�{;�O٨�1O8��h>w�Me��?��5�x�utl� ��i����N� �53�5���w(�x��)��ϐ��Eŷ�Y�͜󲠇�����@z:N�X�a�%#��U�&�X���{�������\^opk<^4L�!u���zkX��
��x��-O��BL~B�����>{<r��}(�I�2Q؛��d�R�u��(�1��%f���`̎ ��'dL�iq������Ӣ?a�����������A}WCMV����i�1�ի�]|�ɧn>�裏��G?K�g55$�����Z�p/���8��ט��快�_���KO>�̫_��7>���`��TĲ���ʚAP-^��b�{��!`�ͫ@o�����X��z�U��,ܦ*�k�.N��<)�����(,#��0�R?���D�~B�0����ɰ�= �=oȚ�!tH�NF��(�L;O$�l�!k����a;�9���sl�ξ�1��1��h�R�&��{}�6��}m/��d��n@��@����,)��j��X�{�ИgLŴ}�`��]G�XE��M["r)Fɻ`P��[������C0m���(��92��2B�eƬ��D�f��&I�������,�%� �.t���2��&�!�br6�]�"m��b?3ˢ�E+��]�n^���N)]��G��g���_J$���Ah@�y ���+ݿ�{/�����+Ͻ���������/�hgg]�x��>���sζ Gm�.D�P-�Z�f�����Oζ�w���.�2k�,�w ȊiB@.F�w-_�Bq|a/�PL����
�=��B_mt)�am,3�Nܢ�C=��8�FTA�A�0�������7KF)1��`�g�)-���lѸ)X��Q�F�g!b;OXE�7�]�b��=(�s؅���-�R�˶�=��S�]c L����uף8�Ѕ��˓�78����%��@��P�
�~��\�7P�/��Hd^�1�9E�V',d��
�<�� ����-����b^7&��c�`"���A���n�2w�CB�&�b���}\;z���[��+��؟�a���V���	>��l�G=]�g�����n�k��}��?�������f�<S]E �����₱b�j*=L�5K�KD %�tFT{��ѲU�?����V�m�jy�F�a�o����,�����<!�0�5m�W\Lkܞ��C�*$�7���F�'����!&k@��Pt1��1��PE��u�+��&!���x���E�dM���c���g�T�'��b�x��6�`�y�v:t ����a.��'tNտ����͊(��zlR����Hn��b2������y�u�V@�<P�<D�‧�Y�LH [�t'�X�sζ_ �,j��@ `�(�ߓ!t`bg�APw�;�m�1�`��>$(�kv�D(�e�Pv�����3J5��
��9)B��au�#ƴ�no�w�������."o �9�7���눏q��x�i�p�nh�Ph@C�y����/�U�����w��Ͻ��|���KGG���O���jz_vQ�"VY���!���[����ӃP Xy	 M�f�����j�/5֡���(�y�.X0����Em��Y߂S�F�G��Ϳ.&
�0{��)g����c b�|U��m�*&��}F>+ʑv�d/�d���ɷ�y��.O����EM0���R�2(��7�;c;���:�m}�^�+�����?$�2�����
ɿ��(>-�5�{�"%s6Q�P-�����ȅt�7:�� �� 6���<b��5
f!̰���E�u�٬�Sx�H�HA�� `�.6u�S��k"������0�d�%0�K=�  5�KYc�̦�PE1\��y��_x��K��]�}���	� �x���W;�5|(�������� �J�������ˏ=�ԫ_��W�p���K1Ff&p�0-V�����c�L��JjR�����͓�߈.�,Uٿ�ŶL>�`��Y�E�w��4�H�..���*$��l# ��;+ ��
�RT��P���]�8�R��$�i�S�~E�d/��8�G+�E0ʌ˫�}"�h�DY�N���SB"^N�g	"Ɲi��s�>X��y�*��S�4ۘ��֍�'�g�f�x�a�)���cL�+��'�ȣ�����m~_��Q����}���̸8آ�;���`k��ء��P�;���m����r���� ��)�B5pb��mvo㚃dM5
�s�.<Z{ S]�|���:xL���#�$�����*�g�z�w-@��#�hI�E��;����G/}�SO߾��x��	�88�&�N��Z���Y{�����S�� n���7��?<����]�kL���M�RC�=�O;5�(�����G�Pg���+(v7U��MKd��%���g�����v�N}*�&(��+3�XQ�z��kV�s��/ց��ek6��q�G5{�G X�r�ό���-^|��73F�9C|qM���>a	ű�/�xS��cB
��?�U��B���:�Ħ_��Ͼ�jJ�j\��bz9`��̒#;�o����'��E%o����;���o�	��h6:���zrg���f�1�K��\Ě�����NcQ:�)(3zN&^\����[c�0~�0���q�G\��P�9/��5�����LJ���g�	JgK�,��펞Z�&`��fX�$!�o��/rz��g�?x㡇�}�]�s�v�iP�v�Z[#����O.ޏ�Su���u�_��?�O�?���cd���h/\V�ͷ�K� �,��9_g;��Ó<Y��R�=�ƙ�d�bj�H���HM'P���y��<�z]s�C���z��8A`�e#�n�y�s�8"�8�G���r���TfH��lb4�g}*�i�a��;�arM�5H]�F/k�a�F#N�.�+W������K��n��^0�u�BX��NfkF�,�0��ݚ�g^{x��n�!��������M׹���(���:+�^(��ɋ����%ԭq]�H.HT�
�3m�Prm|��	n}�S��G
�ԣ��ʹ���ddt1a�E3��A�nN$L�5ՕS�Q{�cS�"����[5�(��Pe�7���*FUUD�G��E�@	%(��9�R���+�g��������ů�а�� |2qV�O�Wk�r���S�>��W>��W._�|	 g��ٮbK{�`�������H���3�D���}���-o)N�V+�ѩ��yg�:+����d��+���%�VBQ��u����?¼��h¿����~���w����g-�Яm�,F_���W�C
�2�T�L�ůE� $f�h'ps��h�)F+r���v���S���\2�7CJV0Sg�E�6����(�\�F7т���]o"N��ԇ���<*��W���]�B����\�(��Ѕd, [�����l���G��b���0�B�|�]��5����ɺ��!r@�o�� ���n@@�T,'�&VTG2�Cm,���yR�֡�\��[!Y�b�,+�����狚�![�\�D`��=�&/���CsΛ۷n�<������Y46��h�'g�}�R�G0���x��_��7�y��gV��
~J�1���jJ.~�/ȹ�
���7�l
t:]�K �f`	�A�a�t���w.�}�T��2/E��"���SZ���c�]����z�r����
�{��K[��t��pg�(��aa���N+w1YQ",�x�y	��%cv��>G�������8���ʷ$'���lQ�c�����3)�&�Դջ�kƒ����,�M7,Jv�F��1f�F�Ǹ%���1�Ϟ �X�9]�dZēq��\Z,a@C�F��1�}�0���<��oo��`�&��'�>D �NV��G��ECH����������=d�'�J�������(�j,D]mVƼ��j�Urk"-�����(�b
X/�p0�%
O<����?�������%"��!p�o�5�5 ��Ҕ�j�~�_��~��5a��ъ?��3PԨ�bJ� @��8�(k� �,�s�� �����=q{1[����ܟ_�����w�f[t9]�[��NV�����v!:e�&xa*6�=�WN�F�э}��lŁN��\,z��Eԕ����N����1���@�u���x����h�!�l_��e�'�[�!bH��}��g�l\��3�������j^��I�� s9̹�}b�6OH! ���A���xg��@��;P`;�8�v��� j�C� n���5"'�d��`9u�5��j�G����7&�6����~���D��	  ��c�:+�~���b��n������N�5�����2�.F�֨ ���V�k�/��&��6�q�-Y*K�i�rfHĖ>��
�ٳ�;��j=|�Wy������������g��V��� |2p�������}�/��7����.]` �2���Y�mk��֋�S,��s��m�bX�]��ưE5�*X�m�FcW�? ��߭[�Ӏ\�dM�X�� m�%F���"̞�O��\��Țq2����-w�:9�w}�[Ӊ�4mܠ*�Sg���-�w曷��8��l����$��3���~��mCa�laD!,�����b�Sv��0��P��%>�):����M��(v�Z�4-s��i��amI}"�tݢ���#����Y��E�1Z�!<�A�裹O�HT�߲ NY���Øg\X�����t���1̋E���
��}3����:O��\�ƭ�<8ɣ�GZ3A~z�C2�%E�5�����:vK�`��	���a��8�*d�q���� ;�}Ld���
"c��(�C���.^�z���|�۷q� �;�Ck����򿂻)��O?���?��/2LݞbB�̇]ʌqΐl��\
��"������6o/n�����#R�����gwU금����y��_����چe��(����*��Ī|���
���0y����]�e[��Op��p�"J�oe3�̼��l�����]�9��M�\@�q�'����M�B.'�)�Euo�����.Elzk0 +(���S�n����Z/+�� OH�B�n���z�V�|��8ս�{�n���N�}�B��3cm6�d��%�{Q����}��5/u�a�u f�=f�n�=[����-&2{�<��S��8�,=P��bs�㼃��hX���GE ��ݢ��t�m2̓-r
	�O�G�
�X�c�,�Ͽ���S������k_�Ę��+��B+�x�� ���q���.\�~����W^{�������l@-�m$а�5 _�-�5g�R�G ��i����]{��_��7~챇 P=��dE��\����_d��[l/�r�+u�]L�$�!�%��LN���)�|�u���	�}�1�v�f���w�W�3�n�,7��s�6ؤ�N�jM�*��}�&[���<��ϒ��й�ނ��,_�f�]�x���������,�����"n{���
��w�e����v�Y�X�ؠO��n.諾�;��y��Ű
;�p0��=!+����N����b����[j��yD�R�:���� 
�8v��*��tyO`������+��Y'c��I[D�w�I�]�̈́���G0a�+�ЯQ����	�Ł�	��U̢�d��v�+3ve�qޡ�F\�\��X#���G3ܭ�Xt ��L��Y�F-�a�X� @�>����E��KY�s��K�{�k%������hſaAk >�� ��
N�� 7��wߋ���᫫aX1�RL�n�����]���}��g�	��>[�c'��<6(a��^a�&Q���Wܝ����s)��LA�/�u�����;R�.O�����1�xq<���ź�KyA��-�ɥ�r=X�QD��VL���������)Z�M���m! 1[��<��g�-���ǓY����殫R���l���8g���z v�@�*uH1�d8P�q̄�4���	T���"��`�w؎�E�8�����<�+AQ�O�ia���}H�7o������9,@H����5ا2 ��*D��i<�	�[�}UX�0,g�δ�@�I�/"�GjQ��̕Pp���K�V)�@�%�!r��hY5���	+6�@-�E�~ߢ���FU�3i��5!l�Z,H�(B�<���9�T�;w��EB�� |��A�����:������^|�K/���)��?ň����d��v�/E���Q�u��|�O l�3o4�0�51�#v�*�m�G�FW�O2��?;aٲ+2=�̙&)�5�$O�$cɗ���!��#�ة�akj��a*3�]���C2ex�t�$�ci��v�����O�W����.��2��\�/�����
 g�B��hA:s��.�X`	�b\F��O����]8=T����L� `;O�̨.��Rd)�}���j�_�
ې�� ,�^�W]�>&'/!0V]�M����1��������(|aL`�=(j�v��4`S)Xu���.���( �>��m�qiu b���\CL�9�^�~?I}A�*�[�Rp�[�M��f]I\5�WO%c�z��C�2SQˌ�����
	m'�5��3�����{Kd,�����L����|䑫Ͻ�£o������3~����r���� ||�A*�#����'���o����c
!0�Ψd��f�5�G	�Y��� �,���7e}pe�,�|&��	��Q%���T���������*�خ� ��S�,r�K���i ��_�-r̾�� Rĉ�
&�q2MX'[��L��h��9�n~�D����m@�Y�8�8wN��Cpa���q�̫�y^T�DV�DG뵝 �񟌣S���m���@��*0t	)2���Z�����/����'�m�l;�r�U���t1��	V]������f��Ё�~XXSƅ1'��Ȁ`��6^�8 Ā��eB^4�Ԣ�EL�aJ+�C�m�C�X;#�vF�\�P*������8�Fc6<2��'�$�.��	�<.J�\;�p�[Y�/��&�Ō�4�� �!!���+0��5��6:�|��g��,��\�y��ؓO\����֭[�L��F`m4�	Dk >x?ʿf���=�̏��?��/^8<`f��%�GA�d�u{��"
�c@�c;��� -�&�2��Zܝ��)a:Kۃ����o�S����_,Z��5�?;%��b��p�6�e71�7V�V�[^��:��[���v`�4����Ȍ�a�7c3�;�hL9��j�ˎ
�	���Z�kN���ѧ�y.H!`�Kq" ]���.F��1�鎽Pg)\><��3:��    IDATz�0�fX��ʓ;	r�X��"+H��ױ���u��@Q�.g����<���j>��<a�� (R��W�F����n!0��:�����|��"
O�;V�����{�غ;��+�n�Rc����\�"�s��#ǜq�>@��\\)0A��b\�I c�R�C�C�撱JzN�5�XC��A�Wy������'�0>�����a�?tY|d(M�H�DԿQ
O>����_z��}��w�i�	�7�ſ5� ���v`6�?�(�5�����&�G��+_�����g^컮�RB�<�G$��Q )j'b�d�*��/@�S!��a����X��;t���b��'������ؤ`��u�����= `���x	��D8L+S�{��8 ���vw��j'L",Z�M�c���UO����ΖԨ�Z�TW���g�̾|�f� �Ċe�Q�)� &�ڞ`��;��eŰ�	V���r����,���>ƒp����%L�`�q2MKQ'2��x�md�j_�bz�ۡ��K�� �"Fk�:���baE�y��Q��S��8b�I��  )� ��-�p�d����'��Y��GJ�2NӢ	>�:,A���u�c���<-l����Ο�.&\�Z�l+�g1z�bzes��<;�b�U��X�����m���1	�
�%��ŭ���(,�;�0ʌ k�Ȼ��욱T�`=�8��>�7�����G}������^P���w�hM�'���F-��俯���` �|�+_�ڃ7n\g&���*
[�[
to��?���hW%�X(	�����bp��޴�D~&z:�wH|���5-�ąs)X��'�s�B��vyt
���(f���[�-�t���2왬P�6VD�${2��� �;5˚���`E�򜪿�;��U�3d��Jw)���N�lVn���c�J��n���V`��qY�?G���{�&I��Js���GDV�� �lH�ۆ$xѴ��<��͟���1S��I�Kf����<�}N$@����t�b�UY�����{�oix�Ǆ-EL�#fB���J^[J�1�R�s����}�1��[�6s��"� �wP�Ϗ3{θ�}8����b���Ĝ�����Ҋ����p�3w�Κ��#��8�i��a��x\1�ʪ�#�1�%�Z�5�	Q�����o���k4d`�Ɩ"�Ţ70��W�)�"��h��oa�x ճ��J�N�#��؊|m%��b-q������֕M�Q��Jy~�L��j>�F\���᷾��o|����W�
�*~��?4�������_�����������o�������?~�ɓ�<�{xk82�D�sB�o)T���>/(�����I��#}���Jot߿W��Κ���XT:8��M9��[S��=��e/�
��i��e�-|Z�&	t�x<q�j�D�ɚ��TހE�����̹�����o�!�U\���e?��B7���'�@{:� x
�h�"N�4
�*��3��0��ȥb/Q� ��0M��^Ɋ�
���J�WPPkxr:�w��}0�8~�+��6��q`�`D�ȓ:�y�Y�����Vî� 0� )��֑/��D@Dq/��e��q��=��Xӎ_�oq�f�:�í���qUc�w��`r~hY )���C?  {��s�u�FWA��P����B�e8M7�R
[e3�5,N2(��Y��ZJF�za`�VZr� �l�:�߷�e�]T�U��!����G��γ�?�e޶��	��:xh����������|�����~�/>��w>q�[k,�����Gk-��Kz_J�z��~*F�:�dI�à���1���\_�jMHڰ��p�~b穈�I9���A�y�X��p^  G?��n���q����U���/h�ح�	�g}�yM.��=��`���D���]�%Lk�R%�S��( 	o�MA�G�(�'�'���R8L�:A��vր�1p�]��%��s�r\��j�֊7���N
�Ey�^�=S��cɘ==��F`Fhs H��xk�DL�E,��"cKA,E�0���U �c��Lϝ�)~	�:�Z�HHS���g-�0*:�1��W���,>0�P&9=a���1L�R��D��6��8Y�',j���Yˬ�L[dnN¬��S����4A��j9� �ql�j� E�M=�9��h����-�\n=>�����/�1���x�/O �W~��?�����~]��b�/�����?z�O~���ɟ|������H�*�r��P�����1ýT��U������Ԙ�g��ﴁW�f8���^Y��o
N)�kWz�l)�a,hl&��A�����d���S��B��ݿ߭��TI�3�<4�I����y��b�C�Wu}����#�(Y�R�o�#ϓ��v�i�ƿ��.��o4W)J,�$�؝#OSTYZ����ra�E�]E_j�⩠��b�A�B���4���-^].lRdU�KF�5�F�\�4��E���ES@)<1�1����{�@�^)�,h�$k����� gR�s�>ߓ��Rk���TZ���ئ(2dA6���(�L�"Z���_�Ͷ�j�s]�z�/3�5WN? ^{oy��/�?#�g?�%�XK�bJe.��IU�?�c�ft�,UQejP%��)#����zp������H��(pUZ))�|�={���Z��g������[��g�C��u�Kſ��?|��?��G���[o���ȍ�X#1�2���]~�JDWNiZ�ĦWK�D�*�x��k�d�p�!�]�P'����8X\rDm����]�k,���wtTǯi��6-J���� �۸b�^�Yw�Z�����o]\��V8cqɑ��x�xD)g��xc��F7�JA�<)�1�t���k�J�[n���/>����7�{�1�x�kHu+��׊����&��IH�MN�FVV+\�H(�1x�x �p��]_6H�}Bp��B�����9�(�NV
��]�Ѡ������{,��!�v]��H-�B�˕z�.n�y���7;�
��'��0m)AK�_cDk�h#���b
�S����=.���0ar~4uJ&8Pj8(�����v����1q��&�Y��dJ8	�K ���`��9�~�$A0��J�hm�Y]�� FiĖ���	��.Xb��r�|�)�99��[ ���f�����ރ�ǟ�t4�W M���� ��\�����gϟ}�������-�&ڷ��d�E!��k[�>I^.D��5�*�д،�&w߁�S� �,P�$�\q7�P����4��xw��4b�k�1Y?BW�q����3��Nq$�z���:�x
�Z�n_����=��3�n (̖�����H"�E�6,�=E�Ơ�%P��E
�z���R�-�q�U
���9,��|��"�3����`�|_l�R���sƉ�Y��Ox4�Pxs�q�6,��Y�IN̳wȥb�	�w�Ƚ<sL>y��4݃�h�<�y*���8�N�<���X��Ct�%b�;7�W��5D6dq2� ��"ǟ��4!�,��u}^j���/�g$qc�Z3aBN��Z$��g�AI�)��o��\�����qĎָr�BnW���«�Z+L��~�\�@)�4>��\�)E��V2�b��f�FCj������v�V��nȠ�F�F�_���՜�) �>x�>��O�7�� M���� �~\�\�����>��~���X㴒Ql� h�q�j��vA�<�5A��
A�r�9i{%�IO��?ϵ����J�<�Z)[
���j��k3&�B56	�T<������wx��m*I�S�~u�/��0�ԫ<ƾ��b�Ajy���4����Ӌ%�֥5�����}ˑ�9����]r�;Տ_3g��Jk�]W��9��,�=��h5
��
�mk,��Z��<�yk��"���j��{��ٛ��A8�,��7\j����IHe!�l�T
b�0F��/8YQtx�i�p,qp������F��V�.�@�b�׾碑����j�┠��p�0^Y��^g�M~&
|�N��BLǙM�V
1g���EL���9zk��(�q�_Z��u�l(N�%��U���m�];5$a^	}�X�jqàQ����&�/j�K��2�����������Uv�R(�EY&#�V�+p����,4������o����g���5�<xh������������������|��9���_s�\+w��4�ҐR�P�k���)s`�n�_�))��q��7<������Ϸ4#vb�l2D]�������)�)��+�J�xڙ��WK�S��j�k�?8/��"���zrv��n�Un��-a�Âf�a{S���ï��&\b���i�LB�a�09(`�L���6�����@i$ ~r'��q
�Yb��MPjC)�Ŷ6�\�}�p��S�2YWO�ë3����)�Z���}�n�3�^Jź�≙:�
�Q�;4�8{�=��x�
Rص�
&g1j��Y���\�9�)��� ��p"$�T�1��CW\o�,�JἭ\�H�����K�q3/�@U9
k���ĩ�Oc,���r�޹�z����g�(.�4��*Yz��8��U���(5�V�UL7lP�qm��{e�e%��{Mx��yQb�m��J�x���(��?��O��	�ws=4 _��_=�����~����;o����;#�p� �J���)b�����xxA���[ @�~��\�x��j~����)�`H��6��#~��<R��5ﴂ��(�Rȥ�>���� �\9�W�R$9����T�L.&Q�����1�9ϴ?���V�V0*�1=�������(ٿ����~Lk�RFpk$��H��rz,���5b.�������uR��D�����6� L������<�H�{jo������ %���e|�5-��ǀ5���tka/4�)�8��)XkD�'N���H>��C�β�9�Ѽ0u/ҩ�A��ݺ#-�Z+�m;&���rŝ�P+aHV��[�8�3�f���DXN�Q�i���'��4�|n��}�0�S�db����|-��}��8BR�x�^F*"�ĝJ�ё9��}�SYm%�uԯ�%�̖�FdѮ�/����]�<og@V	�t6T<��(~�0	�ws=4 _����5ͯ��9���|����:�����]˛>���p�R�&��evS)��E[��x]�4i
�R-�O�^�A����ob�"��֨�@nTU� /��`i$�M��ĈI��}Z�nz����1��u�0�ܫ���cy߬�5|Ĕ����=����Z��"�H�J���@�Ǟ2�ێ,�|{��_'ِ�-����*~��i�s�cp�6@k�=e
6�P
���s�£0˾r,J]����yۥЋW��;<y�er���8�6Z�n۱F�$S�W��X�8�=��B),�U~Ns��!&b�g�ذ6.�9y�R�Z�ݺ�Qv��<�������j���&�QdR`����VX5�U���0��=����n)�	� �,b&1����L���z�v_�Z#6Y����^�Ɂ�J#5jRZkT�k5��\_ߥ����E 	;��� ����7�*�{�������I�����z^
W���D��>�1��ާ���9o�����j�����6d��9���!��觖z�]_�s�@�W0M!֌��p�Wj���K�^&c�պۚoJ�X��ώ�(Y�	�9Zʬq]-�r�J���/��@����by����f���4��Wp���]�[���]��jX(���sc�޳쵢��0���t־�$����Ύ� 2�Υ�8���I�w+	��d}�7���A��<ZfY��"���>&nXc�2�A%T *��{ �F@�����ް�lPrjga�ar1^b��ݘX�)�U x��uǞ2^�ϸY�ACt��4ϸl;N��l�G�Ӌ5��Hq`��5���M)�Ͷ�:�n�Z��A�L��k���>��E�&y�~�D���(�@�Qu��aT��Ϲ�v�����Zr�(���/���u,We��.﨨��C��\@l�Ҵ5B�@'t�:�	��P��Bx���;����I���� |�.�x�ʯ^��+����O���?����X͛�2Z��f$š5��saI�4_ ��U���� ��Hw�������3s�?}�^�meVQ�oѥ�V�$���^�.�P�!/^iZ�za�bǪ��Ը���ړ�q��zc�����DP1Y��<Ɏ���&�;2�� U8�f�yk����o��@�KN O�������r�V�����5�\p��x|\��(�Tr�6Fa���;�	
5s+8� |\��r���۾��͈b*�4@)eL�̄-&~���^���&�ޭN"ik#{�s7�r�<y�	[L��,�
�v�R�:�H�{�H���FCS����N��$���=%�������"�˾_2�7t݅�ƒ_�vg�`z��`x����D <^��='4p��E��u�RBA �>FT�N�͵�ы�(_�G -�'�5Bie4�F���e4�Z���q{�r��X3Ty�u��{O�?Q
��?��a�|=4 _���'��-��}{���ӧO���?�3�v��3k���)PK%CW���=%�4�6bC��d@�.p͜7���y��n����o/	���o��<�bI��U%E��r�cy+;v�%K �������]/�[Q��w�D#���yxg�s�%F��kl1xp�u8�)vJ�/o�,"3EMa�3��^��f�.�� �=�ʰ�8ZkhSl�c��mW��Bm����9�oE��m�K@N�].�7k�|>�����IF�|}4(A�6��\� �LV���)(�a�� ����ǃ$�x�'oP�@�y�e�_J勉#�ހ�07�&�y���њ�S��y'�M*�^��:�e��.�<���d/c0Y��p�|�Rq�&<^������I�V�\
�5X&�uO�ZcOYF�t<i�Rx��"4�&�f�Q����F&���U���r�=���9E�!^ۑ��h�H�54�%��pJ+bc�@F��51b��{ϟ����:��zh �>W/�����?�����~���7%6?-V?%HR%{�='��1h�	�i(z�3}z$���r�I}2�D#�<&�uz��d�Y[�d��4�]`��I4p�UΘ�������#H^�5��z�5n�kșo -��i��v�R�	��.Y��`-n�b�J��ls��&�:���M=F�Kk�a���[�z!�s��­���3�new=G��Fս38N�T)
Z3�S��V8���C/�\iԂ'���yE��cn@kL$���"�INܴ�A��@-���s����_���[GA�9Lxu^�0y7��<rf8��>X#�FV��<��P����;�L��3\��Ir���pZ&�f���ѡJ�����yLo�L!�49j���e�����!X=Wa
����T��Za���<R��R1.�5Gj$��"N���
�sV�A"tʢ�"6��L`U���3pB��GH6��F��l8d�PW
U�����` �{��<L�`����q���?��~o�^���٧�����ɹ`�1��x�	�U9��
U] ]�ן4ǭ�d	��:�f��U�V�ے;�XxӴ�b'�.i�����C*<!��ۓ��h��Г=S�g���`I`�S�1�x4-XS$@v��ɍ7���j�z�|�8?�skc�,��,<1g�\���aȥPH�8f?�� J��w���T��w\-,ލ�`	Dؾ�;C)�W��7��d́k
+�F���Nޣ�� �x9�m�i���I ?��Ns@�� �"� [N�ӈ)���J�x�����ɤBi5N�MN����C'u]^�ś�g4G��'�^h8d�Ik&熝Λ���g���I<y;~�|����[I�݀�(�㊍6X��Ϸ8L��!���;�`���h�{J���"#��\�e�p�'�sw��    IDAT��)��y4��t�D�E�Z0�)������DY��܊*�[c�{���O]��LQ�MS��A>�6 ���F����6�{��}�|���_����j������k����8߿�����;���9h�;eP+O�(�)�\�JE)
Za(�����$��Vq�V��S~���~i�#Ծ{�}Tl,w��&:Ҋ�K��#w�2�8�	�0cv<�Q���FYq�f�p
3Eo��B��HRS����=e�1Kd�ƃ�2F����&�W��|�6����os�i���$�!x+��:��bj_L�mGm��o1�8�VžX;���ؾf�r�u<�M\d��T�V^]V��8�ƀ4H�=f>�ڐף��H��{X����3_j���3`�R|p��*(8KAZw`PT����(>Fk(	R���]7��	M1jVQ��R�D�B�2횗��F��oK��S����k�趆��@#_#sg(
{��3�������'��bh ��T�u�)������Y�V�{��
[�Cg��c:�4����킀B0n$�:jA0NY��6~>��IF]U��_W
4q��=����]Ѕ�@�����_���zh ~�ׯ+�3���]0�� >���G�>}��me����Z+6%��u�	��
%^�=%���h7<�A�8�J$ol��<E�S�ZnFi�ơֆ�2���X�֔�0=/(����kpf|��R� �����kI2A0n���"|�睂��y��i�4���ckUNa�|yc�%���Z�$�uE��P��J�#ΎS��h"$l��$x٢���x��ێ�3���Z3�f�q�y!)�Ia̅AgD� �h�q�.���u�I��;�9x怜�����x|\�"p�x�Rۢ���=0�p���|ʕE[^��ǅV��'��y�H�ȴE����/�
-<���\
C�����'Њ?+4�-e
,���*�,����B�JA-�z�R�ƙ�ׇ�i���<
���r�xh�Iȑ[L����\
�����: ������[kl%#��ܴ�,�X3��=��
�I�aEE�~p���]+�"�]~�m%!5��@q��4E�A]:^3��*#E���q�?ASx���w���l�Z��� M���zh ~w�?W��O��������w��Q�NiK�1Z��5�̓��@�-��*w�N��ca�a�hM�GT���Ou��)��B�_P^�����5�/��|�*p�Ӹ�9��p���P�r�㸕{t���#����qO쌤��חOѪI|����6D|�����r�\�x���N�����C��q�DM.�~g�h"�`�B��&�A�u=Vv�3�s�9^���Ek� �ր98������E{����	+��"�a>���f�Pk�IM�?G�Q��sxsY�)����B��m�q��bA)sp�R"�T�=��G�92�� �$Ju��$9
�3��1J!g������cf����h���Y<�9J3�	%�x���
����Ɖ�21ͯ
�98�g�bWD)��)PZ]�%E<Z2�o#.��l�ie�
hMi����k�L� ��C��O�
��?��T3O�P�L^�3Vi&B�B!�����áߡ��g^ὧ��QJ���^�:	�x��^^�������WO��ǋo�#ch��pk��h{�G���4e���jm2�g�X{ASL�>��Q
��u�i�=3��n�S�rl���|c�~�)����nď�k�%�8��������P��`�w�jg�k�Ys�D�
�
��	�Q�Yf��L��|��L��WE�G�cW#³-eCm@����OX��ZG���(�s*ji�rB�u�0����>�*R���ל��q�xS�������n�	����u7����3��.L��;E�@ ���=Rd(yH���LS�������7���^b~o (��yCL<�Y�C�Z�Ev�{�c�C+~��Ǉ��UJ���ss�i�F Z�"i�kd� q´V��R��5&�푰"�J�n��hY�{�3v�����PR뫃Fk�]�RP�k-/9��s�f�i��,K>�	��]�㫽�3�C����aȎ�r�5˧��z:���yJ�(`3c��ԸI���+ħ���*���g�p]����?	x����C�ۿ������?y��z���|ld�w��Qw3ȧ�,��������w��R"�"�3���*���翟�K-�q<e�y�dxC3��I��$"&�5GXQ;{c�f_G�O3�^R��SB�k�QZA��#���췹?�XY'#ᘥ���.�-E�L3&�ŏ���'�0�0�
 xu>�S�������r� ;��חu��޾9�Ԟ+��o-n�L.
G�BDðrRam\ᅔW�u'K
�>�ଠ���?9�g�ZIp���҂�Aҹl� �=a�\�ި�p$�q�Q6Y �JW�6c�߹9
�5��:5V' E~N
/�Fk4�4&1�"�u"��]
'E�Z�1c P�����	��o����ژ8Y�l��s-�[w:H&/Sp'���%����i�Q������2 r�w�H�Dku��c�LXt~�5��\��i�}Qđ��
��2�AH���cbe�to� n5�	؄��hl���"7�g��Q��N�7�� �����zh ~���_W��	��d�o����_|�����t�ΎS��j��%pE������}���h٩� 
��x��fX) ޸��o��j?2�SL0kh��c��X5dﮮi��UC�i�C�$�@�u8�(��3�����ũ�"����ZQ�+ �')�7o�(�����Vmps������e!��o��f^Fz��Fv���B+`K)O���6t o�)gL� ���o���0���	��b��a�q�ଆs�EE�iB'�Ŝ#�G�	�6@5����
�1	��:��n���}���*A
נ���y�D;��&�;�S��<�U�u�h���bi���2�֊˞��B�=-sN4 P
�-2�!x�p�Exa��UA ��yې3���h�>�<�jj&��9�+¸O� ��@��>2�u�V��!��;	��(���(����	�3$� ����*�~����<\tw����P腼�e�MpmZb���~_�%Y��Z0?P�2��xM�{#��\�&| Y�q�C� ��={��2j�������گ�<����C�۽h��^�;��K�����ǟ�x�GpLT�@����o�BW���ւ�$e�����ʩ�^�0�z=�Ԉ�y�7~�H��6����*U�rr�ǿ��g�ї�f�q�Wa��n�B��
�-��,O@Z�2Yǻ���!P襙q?nڕa0�~8���@o	L�˥�3����~�z��#; ���+���]��_) �c�>���J��f��b*#aO)2�1���v�� Y,�]ׁ5�p��4���ӄIB��=�y��#��|��eXÖ�����+����!�Ӡ���q� ���,^ޝ�^a�3�����0{(pt�nl�nfhM����H9#g*��m��l:�V���r�R|n�ָs�f:^eFB�=0���" #��&��*��0��и篕MG�l�����דKm���=g��j#)P��遭5����@�K�W����-*��L�BS��+Q��$z��$��e=�EVu����.���*���4����`P�N��\q¼o�����^~������[�j�￀�&�ky=4 �����-���w��X���ŷ?yaE鯴�wy�rǟ�0�K�i,���T��裟\�������	]7}�9S<d@��Q,�k�D�G��9
��8�1e�Z��qr���)���h<�x	�)��X�5�q0��o8�[#���ȫ`|�ZWX�S��!�!���'I�0Ja������x����f��pN�1p���Yq�F�����8�x}^@&�w#�g
�e
~�� ��C����d<�E�V��
��2��E8����C��wX�{�x�t@��&5&w[Ļo4\b�<�.;.{dQZfX���	F��h,��l��V�g4������c4�󺋠U�� ((R�!x�&-'v�Ǉ��=g# 8m��6`���<(�p�����9�s�.����^����ݺ�1�ڒ�����`��QE��|&�J
�A��}�E�	�}�d� �=JS&�)�㥷����|����)9�J(R��fY�h{v�G*�44l�L�`,r�ȴ㿕h�:4ȭ�)�F��FSp�7ݝ��_	����� �v�^���s?�� ��/��O^�������k����nU�JA]���r2���o��!�hX��SU��ąV���_3�B��i������PA�2z�k���k@�������d=r+��7�k�Ѡ��A|׻�=�^v����
�H����V�Tk�W\}8Nj����(��
n���S_Z�Cu�Cpw�k4n�����v��{K	wk�ݶ����r��+vif��F����Ǉ��Ri	���<Z�����7[�������!�/���0�)�;-�$�q�q�b�X���?�� +�*��.��2�X&&����s�n���@������������]D�O��$VDn��!ɹ��R��0���b�s����f0�"@NN.[D�e{!��*����<��ӭ�HN��$��R�U�GP���i����'Uj���O�i�,�0�)�}���h:\5����M��P��8�%�!�0�Z�1m+��;Q�����n����z|z�佷�������Ӏ�u���zh ~�W_�w���d����Ï^��ˏ^|���N|��X4��Sa*1�{��H��=z��:�~>(�u_Z+��kaDX��ʄ�1��{T7Mb[StLF��j{�V�Cų6+H!^�.�>z��D��Qq+�\eR���l+��\J�OL��M5NK��zc4G��P�W�{Ó"�P+0y�uO �+��ɢ���n�dO,*�*`��`���{�9�aik"ʛ'bm����ӗ
�d�������^��h��`����e��-�cSq��8�;�X���et �HA���-��PkY��꣋o�VE�����Ff����+m��Y������w9]7�4
����Ԥ�Mk���~��B�xJN�u��')�Lb����a��ݶcrVl�d�R���-�qg�WL�Z��8l����{\b�5|��>Tj���X���<�dLyLV("�_��QԵ4yE��$��.���.Hn%�{/П��b��J�d�5!	Jz�p?�R���.B�j�C.���H��X-���n=>>~��;���y�M��$�M ��|-���7u��}����~����>��?��'�1��^�R��,��xS��U���\U�[P����( C�B� �k� c��l5������wp?MĒD�OАUJ����Z���4�����d�L��Ӯ�R���:� �
C9ݕ�d�k�QE}���3O~����!���y}}��'����S�J#= ُ�;���� �4��3	j���3q�ZӖ�	-��/��ve�ݶKSB�P́��-fz���0� �Gf/L��b�#�5�����Bh��M���w(%	||F+)�����3��S��1u���q	�Ǧc���1h@�P�����q�a�o_o5.[b1^�sl~Z厺[_k����-��5Ce_K¸j�j��#�%P��EuC�(_�0�7���H�K����ְ��ח��#8�"'|gl�J�{�C���֒ S<���o�|�G�b-̪��r�۸rT�u�i�Śv�F��{�_k@A�:�ѩ0�zN+��6�2
�^JcF@�%dr�AFaqг��`-� �������㷞��w�?�	���������� �f��������W������ŋ?u��H�+S�;�R�LX� �]����'NQY�%}�#�®����5�ls��������8mᵁ�BT�Vl  ������C����O���۝?N4N�����=%�^/�%����
n�*�>k4fxj��G���5Flb%s�4L�"x/)y�i3,���g�� od,ۧ�9ˠ,zʃ��<Ej�9j6!�T�t�YCbD�5���{��uC��<���3W[�r��}s���@�\+�E���$��\�8&>��6�,�q��k�7c�����c�@6�|{����1;k|wtH����s
ݾ�u��e�Ǣ����ǘ��{�1���쩯��0JaKl8���|�ȫxrs�(��.�2ap�5r��Kk𞩐�ۆ�R�׹6x,�����ڄ�(8Y�X�1+����3� (%��s�`���0�e`͕	����=�5K���9!
>�I���3��b��C=�F��J���d�8:�{w8� �`��ѣ��O�y���?~�k��~�J���^�o��׈�����������rVF�F�PN���-�7,�{A��V:� v�2�{����4������B)s����k]�j�	Z�q/�;����C`䍕'G��0�1�	7�g.q�1Lb��r�k��[�)L�� k,�w#�,�!{� ����8Y�Zˍ�b���<#��\��<9��Y�e(�ke�n'�M�a���(fO��x|b˞2��Z�`o-�� �	���\q\��r� �8��0�6�tt߻�H�Z)�;.K ��;:��X�Ģ���}_M!5&)I���2��Ѹ9���w��B�����9Z�q�������a�wl8:��L��P[�P��r�K�zD^7E<�=�78K�QXc&�B�7Dĩd���]�S@��!�ݵ�h��?�Y&((j6d�ϑ=��2/�E ��Â�2�n�۷�Ҹ�L��LH������b�qe`�ABY��s�6˥���ۊ�pŐjF���Uq5�C~������<����y���A���(��0E0~F��CFCU�^p�SAk��
hASc<z���֓w�������ZJ���}w���;�����E�*�{�}��O�˻����vx�9�����Uf|7ۦ�K�jѷ>�+����Sx�
As�Gw�A����K���}�0xE=@����z�|���(�P�w�k�x{9B+��8�	K ��I���o�CM�	�'(�0N��^��aej�o���UJ��y��i� 4<Z�)�n#`H�)�֊�oπ��o/cko/�["x;��ǻ'*�[�Ȱ�( ���h0�ؓ0ȵ��i	8L{*L���xk���鉵�0�vΘ
jmx|b��y��#sz#�u
�������%؎�ȅž2�@GFk���� �w8.)U�]vL��ӂu�H4׊��%���`{�;6�N�}|O���qº�!�d�$F�\0�b{���o~����	��:�xw�T�Jc{s�1{�����q��!x�x!S�u%_��X�*��{넗�δ�Fa�� W{o�,g6k�xt m��;z,1�uI �(Ho�aAwq��<֜0I�F/�
z�ߤ�5k�ݻ7c�W!-*=,�����L�����5)<z��M����g��l ���4<L~��C����~���� �����G������k!�)��iy��7]��k
�48Я�jc�ok"�"��T5Z����؀�)��A���JQ�^(*����!7
ŬbЎ3�uX�Ǟ3n�f�ǩeK�ȭ�&� q�Zn6)g��$RWa	��$��tHK϶WR�km�=Ëw)��'�ڪR"�~
T�g�n1򕂼�39+���(Lk�E���!P[C���/�ī��P�3��D��X0:���$��ތ�RÞH�p�pΌǠ큵�	�r�IHP��ƀS��%r=29��1̓�z�5֍zk���l�,����U�)K�t����O�{�(�˿!&f:4 ����*��ښ��&/ѿZa��x&i�J��C���
+׊,p���oO������a���+�S�.�7�	�-���    IDATq�N^w����$酴���go٠Y�t�L�2�M�[g�g���P�vN��ј��;
0��E�8jg���B�5'�'���6tFDk�l�*x�?�	kNX��7�X	�f���_�D�SS��D��a��pu���n����ݫ���O"������|=4 ��ׯ��J��~����޳gk�"\k�x�R��Z�r��dq��4x��xm��%޳�	 �f�5ET�e�i�HF�V(l�b�o�Zk��6�@���4I{mp�;G��Ƚ�%���:j���6���9�ļ=' �뚯�ᾓ�L�s�����@�zc�Ȇ�XV��_�WR�^}�8�5��;y��8T����	(�+�SkY��fgp�=~~-)�{,8LD"�,Y}�!F��{��w1�L�a$$v�{�<�ƀ�Q|��9ڟ��SA- �-V\��`9�O�x��A�Z���
�=�9w�T\"#{�w�F��Դ�C� �m���J��l�~���;�-�kp*�$�����=f�N��]'�������p��_߮#�wKyX�z���.
IFԚ��%��s�� ���L0F��A��i�V�T�~0��d�5�����i"�O0�=�)��	�"K���f�j�n�V#�T���D��~.�4x.q|��-�ź��*(`���2�@�6%�KpJ�K�V
�L|��o����������U���zh ���� t��WIߘ���?��ş:\��u����Xk��S�n���p_h��4�uR+XKD7�i����iJ������Do�G7A�&��2�{^��,
�av�PǺXhOS���s�� �&�~�?�s�m�1ִVBxd{J�֞�'@Gn�1�x"l�X���[kHB�{��P��ư�A�~�i/��o�yy{��������T�5��I���\�tZ���	ىUN+���}r
Vk|q{@v~�U�5
���T,�C�a6�'������a�T#�<
��!��q&�0g�J�`�wkD����4��*x��k�.�:6�1�@1����ү�s��F�6A,�S���0��ǥ�X*F�i�2	Qb�� ����� �%|����A,����ﲾ�ǭ[�%"9�)Z3K�7����>I�p�^��V�����1�0WGWR��k�-�rΈR�S-8-��G(P��]�c4�]p؉��������v����|C��z�猶(h"�0�1P̟cB�?��/���l v���&�a
�;�������U��,��N��|�?�o777�~��ne�k��j���hRk���~4@U
���h"�F~���7��2�f@0�VE��d��~:m�d��79��F��4�œ�b5�#8�ε&/�.�P�5�qֿ#�Nv�V�"�h���,�W�B�V���>?U�������7�@7�	V�DI[�#�R{�J�I�TN^ޞIPs��iOIם��e��e���2,h��pV�uE���rZq<���@J�j� kUuM����<ra�]w>6��:��#�ýВة|�1i��Z�a?J)���__���35*�X���G�>O^�N5��{ʸ[#��E(x�I����$@�����0y�n8���`�FL�m�aN�͂_΅��=e��,��2�R�# �u�#!�J�6�J�ۓGGYd��	Ւ1�
$�m1!e��;	���Jk�[��R�hBd3��5�Q+�ks=Z�df	Q���SP��D���F���� 'F<�s��E{�5,��i�U��"��\ N5��gj��Vrp���(�

��W}���������ի�`p_��
�^���u�?�:�2������돿e��5����2���
�x��0|���ۣU����4Zߩ�$K"��6�Y)��*0[�,��@'KR`md���&͵�7bq��@wϹ��cH�\
��p
���^����&�w�|qw�(�~]�\E���4���K|+OVΒ���\�K#��*#cy��ϩ9P�W�L��)U�T�;��Ԋ ��&��o�/V*���~�!K�CS2:�v�V��V�F[̸9L8�-�nc��Įi�|kc��c�<�a��d:j�����}3a��vV(�]���8�%!6�3�(���ݤ�J�)�s��eS�r�q! ��I���t��0�*sA����s{��1�,����ښ�5���s���T-������}�^k��a�ц9��;p����y��dEt�h�y�����R(��0���P��u���傘٬c��֘��ѽ�p"x�4(�as�����!3���BX'V�q�J�Q	����F'��U��ɔ}к%���*gm�����ۿ�8��� >��o�zh ����¿�����Ɠ'O�����d�մ��u5.��o���J�NP�fĜ��N��!r��WR���Rm��J��	y[�s X/Ol��`ւ�}�b��y=�0Ƶ�1Pio��Ĝ0Y��3.;�v��ׅmK���H��֔���1�{�Z}(��DCxO��O0�LN�b�҆P��w��&�X9jn<E��� j���4A {;���Lɿ�b�<-qP���[�"�38o1eg?
��
{�c��%�����[!�Eۏ�]_;�1a��Y��<֘q�b�Of��4ȋ�:X����7�%�����3�������!HA� (R��������R��"�A����*3�������/�� ��z����]����e%���Kp�: O�_��s�P�aC���Z�n���N�"�=���1҅'|�xE-m��V�+���@˥�9yǙ�7I�Α9p�"Jk8-�^�c̕�Б��a��@��E���a��d+�L��5w�7�]� ����E�L|b���¼���2QqZ�e��~Di5VQZw�W`^tt�X�� ��1�)a+Y�4��[MĐ�����+A;d/�rp���tkqIt���1E>�N&�m �����
w������'?���֋��z��)���K�~��﫪����/���:MS�24ҝN��ϵ��B��T� J*��c�o4?\N�l�!��V
۞u�A;x�ށ?$�Ŝ��N���h�<��i��jf`�)���15w���/�È�&�����S�l��=)nE@-��0�:	`�]iR��x<x���@?�;"v�D�g N��`	��g�p�~�d�^D��F!Q�X������*V�"�y��nH��5��t@��ꆂ�Z��o b,#��93��F����5�v�_�;�Ә����NB�{�gr��:R�R�2���"PZy�4�0;�Uu�Z��?][�t�l1��ODA���naE�S�,`'N<*�.�[�E�=�|�aq�E�%�ᆈ��o�<r�8����QPrAWNE��{��ٛ'�'���KefJ�'۞D���z��>\���B#��ȴ�9�&�O�ۯP�ל�i��Rq�9-K��k��e,��DK�֨P�)�"����|���8�� <n+55. �g�ΡG^P�����+�?(묱	_ 2�w����K�۠�éXh������ÿ�[�& �h���r�֯��7suϿ×�?�@��o~�[�����}�Z�927h�#L��V
�tS@�0�s��U^��h^;�v.�Zƌ�ܹ�t.��2���I_h�w��Q���̐ �I����ڒ`&�k[N�!
�d�O����a�d�R�z���J��U��<t�a��E� 랆:^���
�5��n��u�K�Μ<�����/�2�jm������-1	08�_�awU
-a�Z��,_�eb���QuﲫL&x�9��Jq�(,�����i���i �X�}��
1W8�.L��v��&o��Oe$�UK0����6���='?�3���蘽�~C��H�W�;�,�<��=��i�C�R��w�Y^ch����te���#�
����e'Vz�Ɯ�!��z08�� �Lo�т�f���^��.��Y@\c��a��Wqb���DM���T������ַ�DY����*.)�JhDg  ���p7����y��]�
m/	���m����<,�����Ѡ5�[C�L/DO�EL�u/]#�аO���?×� 	_��*���m_/�?�����>����������O�S��uV|���V�V��B���a�}�ס>���V��8�E����IL�#����a���Q9g�F����%���o���> ���xrn����8�	�fBY���r?/�H&� g�
���?h2	p�J��v�KӖ"��+w䒒X[��/.W�R�A;�hoK$��<z���;��c������'��?����[&%��.�jM	��?S���Y���b-�A�[cF){d'ǰ -�ݎ��_NfՐ��׍���;L�#��n!2�cor�Ͼ
|-����ړLP8����xZi����X���s�̂�
4g�$AB��L]��a��`�+W5t?`X)�6���(����Yn����c6F'i�13ۡ����O��Vc��E��謐x�y��ʂ�j
6I��tVHa��O�8��V�@��[��u�¯�8�i��kJ$J!�Ƀ�� q�Z+<m+��q�7�LWL����Z<�+T���~����Z\��=���&k?
 �ZR͘\@,��R�� W�u���(�����%�H��[�k{�qG���Rx�ꭻeZ�?������$� ��x� ��뫣���ѿq����?�w�~����������$��ji|Cd<���P ��(��U���a�0,(��а�, 
tr.Ȣ�?z��%7���xmd�]���-%,�K�Z��,~��E�]j����4ࡷ�p��6�	jQ2�X��A+�m.o͘3R�Q��~�ǫ゜9�/�����:DpE7;;���U2�o�r��3�<��1>�N�� ������[C�v�͜�h��hhC� ����9w��u��18_�8�Zň�=.^R���V�]k
S0 �qs7]`%l���&���?k5ޜ7�\������h�`��Z��1�x�q\<W8�b��[!�a���f�����;;VO�GF��l�#���"�y��FJ�쒽3��������$�d�\�tG������+��p�Bqb�ch=��[�.[d��J-H�Ά�S�~��઻e�Ӻ��D���n� ٟ_�]�ub��h��k�>*�,!N](�I�=����g:&I����e��%�8�	Q�1�(��F���d�(�rE�~�*I�u���"�?�ۿySr^� /z���K�ϻ�:�?�+��y�����~�O��<|��]8w�]��m�F��#�F�(�Ck8�0�F)��]%�N'˾r֞v��`cGs��pZ#'�g�dJ���&hQY-��J���cJx}<��"@,l��(�5x�d2���)��a�~�@;�u���җΰ�Ir乓����ɹ�J���lN��/��0M�Id�����w��J0�7���aM�Q���������+>�����]�'w�T�+q����v�)�8�3���d> e�Y�fqE(qt��a�Lgt�+�d �L��/��=��C�H3��\�08�V�*d�*�?�nQ�4�j���q<���Ej�21��%/��fQ�P
�ug,t��m�8\4%��p\<>}s�~������n��-:�`<��v�=�n�[�8.�y�x��"x:_�-�*銥�Rhd�Kk��;8�bK+�kL�Ryݘ���v��B	���=2���Y�,EZ�7�Fn9cv~h��.K1�?�k$ˡ��"�lV D
G?�)n�K-C�gJѝ4 ?�y!V��
�J�_Aq#�{u��́Ф������������g9�����^&��� ������|����s����?���2OZk(}ckk`��je�][�5� -� -��������*&m�Al\8�"E�b2�QA�����S\��x�E�F �4@;��K���/�at�e�P+���i�8MF��f�x?�_-67kָ��a���I�.��
[o;��:i���y�

��a�D��r��J���EBP�P��
�]V	$��Aϵ24FI��x֭�T��/��[L�#Ҏ������J��c�!�Zs��%�g�t�r;p�K{�$S0C��D��!����)�4`��� g4b�P���o�6L��{+��gB�r8�,����qx2�R���#ezΓ�!��Ǻ%�9o�b��e���IM����P?���5&�����s�Qf�-h�[�É]tA�$�Q�GC���5
G ?.�g԰g����)��"�L)����b������"z	;h�=�� ��-"��LS�[�#W[�y��Dy�[�B.@��0aK�� ��b�!��O�������t����K#��6>������0d�	�U��Pc�pX������u ���|U�r�����׻~���58�� �����������)��w�Ns䬔�l �
��ݯ)�{I8���*r��F�k�_���j�L*��?��&㸛OIsLX�F��
/j���5H˳JT��uҚ�s��Ʒ�8bz�����a,���$�|-�*ux�/�@k���G'�Y��{�{�2&刱O(p�GZ��Z�b��3[=�;����]����Z]7�,�d�(ɻ��{���yrB��'��SB���h���\k�W��% x��F���e��o����U�|�h�xq�VD�F
�ۮ�� �sZe��A����y}"�`π��K��Ir�E&}ܧ�٣��s������4�gl{�����w_�e���r�BHJe!��:Sk�C4�8��QZ�9�0�}���JHnD5Z[�ش����>����8_�K���� ��;�VoG�Q�Vї�g_?�i �Jx�N˄�uC)'I�����m�5�z.Aj�}����'�)�ɺ��z"w�LK��Q?c���er89N��(�K����\jA�
��s���RM7;.��o|���G��z���O^
����R �z�/�w��G�^}�w~�ߜBp�ó'f) �i!P�WjA+�ף���PZ��l���y��ZGLp�[eh�Wf�}�-48¯�j>���%S��;i��Y��1��酷���L�`,�E�Z0v���q�Mj`���iX�Zkȭ�ǹ��w�N*��_��wXkIqNBJiͳ=��0fkL�#髬j���k�&0�D��x}���slD�߻��-���(�E��ǄG�����|�qX�QH��D;�����i�ZO�C&�o��s&vl�4\$g	, ���N��%�L�< \�Č���ξO����9,~�z���F,S�w||XI��"d�nIb��3u�b�����"����w�Ip����\*��é
�V�,��b��Z���0P�ݮWj�e���򞚜@}�$��h�UR&�KK�x��a�e���ք�ކ{�NB�b"�)���1K�U[��,���2��rj&�_�P�k@�;��)-�
� z��5��ه���b=N�"5ާ������DL����
�!�(w{SR@8i �����5'�ZI���]+� g�y��o|���������	{��-_/��~�����,�������,�Q�cn�q�3o�����C_U��l%�V�^Q4�z�k%��+����=��q�A���ö5H^��1L��� `���&F����KMA���K�}�æ�
B���Nz���0�n/�V,%B�Tݛ�S��䭄�Pw��m�(pbb`��*<f́.k������u߱n�sx8N����co����,��Fk\7�����H��?�����0��0����nh�r�5��ܼ��5���ѭM���F���*�cZ=�<����HVk5J�Bڃ$���}��j�kL��,��R�b}Kx�����E[�� �Ԙ��f���GR�I���0��rb�E&�=�fы�~�-�[��ܘ�    IDAT�uO��I�zQ���,��@�K�`	N�m���$G��Y��
h�H���]b�x<����$�kk�����Pl�
w�9����ȶ��%?�����T�i�����p�"؝��8l��J���'��h<n-�������>�
h/iP+�V�r���`vV1�;N�z_�ZEQj�Q��Y)f*hC���sv�^�O�ۏ>����/�o�z) ~���������}���~��G�mF��2�Δ�6UbNH� (G�^kXK$��3��A���B��l�|���d!h��jez� z#�i#�3o-)zJ!VrũM L��l��ˌO�O��Sg���A̎�#vX�&v�=������K��~𲞐�LT���V|	�v�9�!D��eD/G�KIՆ˺x��J��1<�;�wM	1�P�{嘋�J�㜑�5�FBw��p�i7���V]�I���,.[��@!r�n��~δs9g��H]m���=�{�{�x� �Ȧ���Z��ˆ=���kh�9��;,��.#��Y(u��<��\e�W)���^&
涘17,!�����n43��w�R�L���A�5�V��%�9��t�`Ddzݒ̒f�+�Sg;>�q�UB���s%�8FZ</םt���6�(p��1Z��J�������e��aK��0:�	��L�	�(a_��A%Z��y�Q
kJPZa�P�m�R縋E��ƠI�D��а�L`�4#�PYɎ�kNPP���@���DѴ�3T@́WF�V����o�/���;�=lۆO?��g��5�e�[�^
�_����������~����Q���T_�Z���D��*zY�aR�q��Q�����a�ѠK�(��R3�qb�h��
k��v�L�ȸ���䝗&�6E??}�kJ��5V��
U~�A9{�H�Dߧטp�L��AK�
a2��d�0�4Ӟ�E �n�?�>�k-x�n����������X��]Qq���"�R�@�g�-�jsY�O�;Lx�ly	���Ǎ��
z�0&����b�=�=#X�i��v"��al��u�!� �D��n��V�~PTJ��8q� Z��L]n��.��#�Ry���LA�x��{pY<;^����!m�)�78p�,��ĕF�0�F���$S�&�#;�ٻA��Z�����󧕬����0f�����?��v����1�³fV�����Z��/����w�^B� ZC��xˤD����i�wc�_et��������Œњ�qC�Xd���7o���� \b+��MqM\I4�L��#<��g��
���ex���{
)
���x`��JÓ�Fq��Fiu0��z����������C����:� �_/�?���F��B�?���?�7����c�àh��s-T��]�{V����
%L���R��=v�{IH�`Ѥ{鮰�k�)<��ս����0YK�`uc�1��T�V�$'BA�fր"�F�RWrs7(c�L�]S�=���ӄ��@�����el�	��]Mk��Ȏ�g��p������e����l�z��u�ȵJ���VEŉ�q
�i�Fv���WJ���o.+�4�) �]��ܭXZ+l[��5Bk���y�B�?yٷf��:֗��BҢ�����	J׍�1�,���a�W0t`��]�����9g�.��P�=]�����w�PL$����!�m']��5�)�`���$�୬(��Za�� ��=uM�.�+�;��տ=@C�|�x������ԏ��%��e��S�H[lW�C�%��a��� jX!��q�v�ug��2�{�g��r�왊�x�˾��F������CM�o�W~-a��9aK	o�N�s�⧑ �4�Vk!��cy��MKIi�V�Zp?�Ƶ������+"�m���,��*��)N�4%˼�~�������^V��� ��]�l���1����������yF�`8
�Z�M�������"�S���q���AD����*�I;( [��[��@�NE�NP��w���3y�%#KUrI���#���g��ƽeW�Dx�7v�b	<N=pF����Nk5&k�������[bЏ��`.�)�;N6��(����ax�TQhǤ8'Lx!��c�Զ$hX�L�����	�q��y9|z@S�̬{�3v�z �*�z��X����{���ԗe߬���u�y�D�������됞����3đw�I`9�r��Dt�!�z�c������&�C�(�`k4�e�f��0�4��8�0;���U� ��f�p$������@��u ��hb #�G	s���|~�1<�=3Q���d��U��X�T`L �:��L��-O��u��^?|�{/���a�D/�*����M�x�t�D��<X:Q��Ht2��ʑ�W�������#���0�"&bM��4cp����=mpK;���5⒲V��'g4\"Á������$ѭ�`3�`�<ͻ( �6�w�y������'�� �h�r�����v������÷���JkeE�ZP��!#`޷���{��8�+O�v��?g�q�;Nv��fT�t�
܇V�V����8,.�=
���h���=�7�~}h셣�  -;�=eF�Z#
~x��zē�>8��	�3=ӭQ)�D	��(ZkN��T�q
pF�n	DɊp��Ƽv��� ���;KZ��0���o�Y��l�@�@�T�kũ�ww���"]�h��l'��;�=����r�}��8
�-����!�LN�A�3(��_�y�8�qwb0L-��X)�x�b��c*8̎#��c����uV��xc�袵Vx8�CX�i�$�+�����dq]�zwS�o;'Z]���Q�C�#o:ZS�,T>�ޜ7���8��@f��5�=� B>=\IP��d-1+��5&\����@)�[�aF:�Z��b�r��=\���'9�g�T4Β�xݢ�������Tƪ`�s�����\�M����]��| І`��#v�,�����(�}���:��Ǩ��b'��`��ux�+֔0Y:Q��]���kٹ��K����.P4P����Ƚ�F5�?��Ok��ab��+�7|� ���������G�~������'_ ���@F��Q��N.��@EE���ߵ�j���8z�k��"f��E*�2˻�����s%�@�V�؎N~��?��.KT���P��;�b��T�k-�}��l��4��:x���Rq��+�O=fWk=�
}$�6G��p��2�Z:>8���:Xz��������|Q2��`�c�I�f�^W�`����TS�68�sX���P&s�	��s�Ō�
���7�6����;�,:��;='W�h�l���Zƨ�����4�s�j��ܿ�,MU�����*�e׮�.��m��1�{1���	|9�1Aȥa��((b�I��ˎ�k�ݑyh�t)0���D!��¨��p��?�����7��ƕ�ѤN�`QSDOK�³rʢHs�cF�I~��.fW��m����)~��2������t��8A�@F�{Ό���0j����>����^�
��Y/",�-��.�!\_;���A�7;t������Ѹ�E�~B0��!6��5)��*i���B$���N.0�F
���~y�������_~�Z���U�o�z) ��뗎�|���g���[�������?X�w�z�FJ @A[(Y7�@���Z��HI��`�H��a*^\��ѵ���r��{�~�L���VQ�����X��E'���>���i��d,!p�'b�	�qn�j��E5�PxZ#����y�UF�h�p�uAO݋�`��1�8�ֆV�s��\�c]Pj�~��ך{�)P�H���u�ws �e����t�JQ[��\1On nv)F�58͞�7�G<�V
��x�\�쌖Β����Z1���59������*�+@������P
�O�\�*����QrPrdM��N\俣`�;z՝�X�'Ӎ&�Fó��T�i�Z+l{��=��n�$��{�/�VL��Y��;-= Ji�����[����rj�d�F�k���%�ڧJ�nz�k�ѿ�fO���E�_q<4�'fD����`��49hYi��l�_\�a������t���u�P���P�Rܣ�~KX�b�Z�b�E��H{��3&�"����1yoYx�JAcoV֔x�6.����(6�TY(k�C��<��Z�˂aJ|YI{/��>Y*"TP� �������|�~�?��������z�oq��} Y�����t��׿��p�[�w��FA��K0�d�����Re�/1���J(�W��N�!���X��&�x�"��!ƺ��]��N���k�4���"�,���T���wV{=��3�^"��c�^
�J��=0�n���<�H�wI�`A��t��Է�񥒟����=bX\b�$�o	,pH%��ҩ&/���V��P�RzD�B��w���G����-!%>\��� m��s.#Q�.����/5��8o��5��۰��1c� �&\6zg0b��V����FhO�U�fU����}u�C�k�N�du����ߟV�G۞i��ڨn/���g6P�t'@k����kD��d��Ϯ�b���bK)q.ȸ���A��Ï�a�+)����;�L^���t���"J�H��/�ۨ��1�h] NPX#9�N� 9�`
��\���2a�-��R&G��Yם��m�8o��"|����g�<�$��C�Y*W�V\cĞ�h���/��\I���cW���&D9�̉�.��To����^9�Mr=�PX�ˤ��)H'�+ˏ~�w��쓟�/��#�瓀�x) ~�K����� ��߁��{ �����;�'�Ӽ��X A*ߠ��8���"('���(�I� V�*Cf�^��6J!(+�,i��o�1���p:m��FC�izX�Jk8��`EO�Ұ�RF���]d�ݺ��=#�Ҹ��)b1�A|�WJt=�n�QW>���5&l��D�E�V;m4T��_���;�>ͨ���`u�$�u�Ӎ)0'��uX��%���F��_�"fN��>���-&<��z	m��������� ����BF�����ǂ�Q�%��0����g�cQ��|�F��`��N�'���T�6NH�PgsŶ&�4�:8� T%���Z��/�e��(��&�
c������>L���>m{�ݱ�.>{\eN�1,^ �
��9��]D�F�%����3X�Wwb�(���4a����0y��.e\��q�����c�2�k��?러���ȊNk
Z�n�X�n���ߍ���G�Ti�w,�K��^D"G��\��j�T@�Ft�!��U���}����v��#5F)݃k7���~2�BÕ��ܘ7�Dh�AKѓ;'e��A��G����@�|��R�3���_���`p�W��������)�Xtw��.>w�4,��� H�ؚB�	���5	�T�:e`D��w�O��^[	
af<@�M�Gǎ,�¿�[!�Ɏ��F���s)���c.� ���C�d�2Z�K��r]�,EN�=��b	�޾��$��%x��_U�}�����>^�ݟ�Do["��[\VF���GP�Q����ZYv��P�W[\����ם�ǉc������$�������"B�uஹ�d�]�%�(˟�$���;vzVޣ}/8,n����P�a��5�kN��E���]U��-c���l;Q���"�V�Ѓxo`��uV��/�c�2Y&��ˮ8K�s�eM����Dl�݁�p�y�kd����x�S�ȃ"x�9��J4:>�B�b�y"�x��L/���4��)�zNE�����Ͽ���e������"��jPG��5�r�Y�h�[2&���Q��h�Q��[6܊*��
��K���8����-,n8�kr��s�JA��
�rh*7�_ ����I�Ɓ"�Ԋ��x�l���FD�B+����B��ڢ�JQ@��r<N��Z�|����'>�\���R �����?���.�{��������|�{JQp��S�p�VE�R�2_+�Ba��+�ha�K/��{�0�;���e���X2��S�S+N~�7<P!���8Ĝ8^*^[�[7J����obѣ���w�rHq��E�n1�������:Ŏ�>�h�p�(�jP¨�@Ȋo���b����bU���`v��s����}D�H�y�Lȅ*��w�ם(fk������)��-�	 BpК�i	x}���i��u�5z<�����ا��I���s�x:� xpƔ��Z�+�F�Z
�:}���-˟Rj$(��@��هeO�QgY�Z���Ja����G�P��oVfϨ�V�2�Ϙ��o���+���|d�s�|Z��.�׈�5���ƕAm��@�@,\ �q��2��i�#�jݸ������	�"�G?}�)�^t��h5	v!�Qxu7#�O�\D����8J-���dF�sa�^�-$� �u7H�����Ԋ��s,�@Ly�\bD�eLg�e Nk*]�e�j���FJQ�3����#��)np��{��b�{a�{��P�Ȩȭ�i+�MN�*�����Riy} 8��7~�[�����Uk�
`ŗ��简��׸^
��=��gp������O�՟�/�:k�A��{6v�j9Rf�O�^����ڸxͤ�*�a:fB*�v [N�%��f~�ڸV0Nqoڻ���N�a��:�� ��%�KxHm��aEH��⑟���#g4rm8�a������0y�>�X���EO�Q������xA�!�12e�zė_e��e�~]w�g��79s�8L�Т�.��]���Éa,=�\a
,ʒLF��FxM*�6I!�u�bO/��ʄ�.��2�P(�b<9�I�k���)��4sm�H��$���[�@Q�<Yh�q�&�Z9�Xh���n���ZN��/�&�"ˁa��A�Ś��e���[����O����a԰B�\M��s�*a\W�*z7�Ev�o=,x����	�Y���[x�{�#C4(�~�SE`�.���Mf�*1����,N�<�}~5RZ�kk�E�D�����kBSq'�jk4�DwGg���L_�(���0�#f��E2.&�^���Bk�ӺaOYb�-���h\�9�`����K�S �� �$�Ⱦ�f��'���Zk��(Qړ�Y?v�H��iY�H1] Y ��[��7SC8��;����c�
�����5�?�z) ����u������[���իw��ZK��|��7�Wld�H��^��u�1�aA���@\�.�V7�4-�F#*u�-�+���%�<�% �(��v��T0Zc���-EP$ʋ1����Ɲ�5����=e̞z��u�P*`/�k�C(��2�����z��JR8a��R$nV�)Bp_\vy�fL��,�C��<1M��6�`T�s|�|xfݏT�Z1OL웃A�@n�R����N���=�@d�c�	�ڄ��w�Ty���#ijrx(P9������G)��ׄ"w��Č�u��l� ���ӄ�)�청����>p���a@���G*���r!�j��a�wB�aD�h�B�2	��^P�mW?�rū�S ��{��p]�`
@A�T���ӊ98Ĝs�2q⡍��Y
����F Z� ��pz`sb��l;�`1��
b�J%eAѪY[��]��}-���t�d���������~Ȣu�<V	��,��<�EZd�K�c�#�f��I�]�R���f�ٕ���3�\0O�I��y��ו�ݹ%�#���L(��{��-Y ��$pZ��߈n����*�|�N
�����������MV܊��Z���W�^
�x=����������o}�;����x��#,���R�Jv�1��fL�gv|�ʇzuW    IDATP�}Պ S *�)؋5��_k2~(����x�k����_J��&XM=�S��o]��v����O)��2����,��¡5EDA��l�˚$��[�7ו�p�U��_)����p��ҟ%&H�H�.�uOx8.��ȩ��9S7�`y�y��0SPF|��;CyJ��"�#i����L��TBYj��iN> H�<�рPKë�y�Z��E����O�����%b�3��j!K@,`��F�R��[���,��S,X�#���@��4��]fb��N1�>�r�@��� d�J�O�v�~��%@�*~�	5���R@���.[�a�t|8��@N8r��{��K�V
s���W��m~8�	s����)Ѷ4,��2�r:y}��/	���3���� R��"I+EwJ��=�Tg�e��O��-��}<o#�t�RU�)�=a���%J�O�\p^wI¬X�(	����{i-,�*�p��[���.�Nܬ%Ш�T�����cˉ�e��# :��O�B�pr������c��*R+X�gR��c�_qU�)�P���7����������� ��V �<J���+\/�������­��������>��7d�(�>+��T)J�?�V�쳕4��N��ۋ��*�ּc�614�H�m�!��0��$����m=1'\����N%s?�IlF{�0���!b��P)5bHc.���BBIc��D�W0I6zp��� a&u�ye���e�*�Z+q�+UJ�����e�c�EQ�����ˆ[� �]�F�>�ӵV\#)�y���tZ����V\��K#]#��P���IF˗���b�n�Kr�o@���NL���&m#� ���Op�2t�n�.����*@���=f��SX�B����h����<�.���q`vP�6\�h�c$B�
Ӛ+�m���55�]�4��א$B ��-�zn鑣F�a��LV��o���qk�n+�HmHS�jj�w��go�x��?	&ba���Za
O�(�Cܯk�j��� �"��<F�6������tLK�D{v���p��Y�U��xXc�{�R�]��G��D�a�@/k�X�&��3��4�w�$k9�J0� �7Y)TD��7�"?�N@`@7G�Ane@���}�}�R���?�����
�竀����W�^
�/__����� L���������·���ֶ?ؾ4�'��@�-�����4��D!Ե!�rDj����v��p�yI���E�O����}��$'8&�1�x ��S�g�՚�~HΎ�w'>d�J)�[ߕ�6I�k���-��J�4O�d���]�d쎬�ں]N)z�)�����0�\=�**�b��7"M/� �d�HO9Ǳ�^�NB}������!,�΄��c.Z����8���p�]�4�Q8�1�ΰs��h4�9v��[,=Ʒ��N�hɝ�X�����8�8���Z�k�������0�)	'j����3��b���s恺,|�C�p���n��EW�y�/+(��C�t�Al,����P��9����0{8�Nu7tq��k�q���-�Or�c� �L��OWr3�������p<������p�����O�-a����v��q�Q~�������:����2�U4*ෘ���=!�z�����5����
����{�����ۧRɸ�o�}�)@}u8��pF �� ��"
 ��9�+C������%H��9�0J!���J#��)j2��:V�3Tk��~�ݛ7��O�o>�Wϧ /��_�z) n������������~���mP�CL�$���+�T�}ς�u��ܬ�!΂�T 	�)��Y���r�洁�r��8���i�dY�+�.�bq~����b�i҅k\��
����)��
�)`K�;<���!� ������AT�Pjɺ�zjk�ȡ�����:�tzgػ��$�@�LXf'�f`�t��uw�D��x�X�\ɘ��$�"IqN\�I$��B�"3〟�[+�:Z+�f/�-�K��T#S����E,��H�����N�{+vÆe��`��P�;g`d��3�ǃc���eB,,�[!�G�E�}{�4k
N�>x�*oȹd��Mh��9�V*b����a����1M^t�f��� ��<��V
 ��
.���� 6Zy�f`�����R�o6���q����H��|�?�:ȝ{*<Н1��Iޗ[ı���] U�L �=�S�t�aL~ ���OK 3Ak��[�4�vD;׆����"��%)I4xZW�i�4�V��l�2xڶ��.�a�y���D�!Z�I�bf�fcb1㩖��(���,ρjh���7��5zn*$NC�s��^����'?k���eG@���׺^
���U���v� �������YB�54R�bۻ�4�n�)M��b磄onD4k���w-�KF�V�+���@�#�մ���&����������}��������Ӿ��� g��i����"�gP�
�5]A���z��9gq^<��O>�L� �4���\o^��aY걧�/�4���v��x�
�F�����=e|��\+� �c��;]{�8�~u@.�� ���et| �~����JmΈ��:�}�ș�γ���ԣ�M��J%>���p�� u�� Қ��*.�p�z5J��)���t�X7Zƶ�c�;S�ps2�L�i�[�D~��ԫ����Sħ_\�4p���p,��.�������b��}� \7�x�,J���Z��Mc;Z�w�ú+�c�¥����=Kȑ�KNK^A:��@K���>�0�1YTqM�ְLzZI�|:�L�)�a�����[F��4!YjGKL�6�c���;�D��5X����,�s|�(;�e�XSd���sو.���\
�>��o�ƖX`y |�iE�O�%|-��5�V�Y��6:'����Ȑ����g0 D)n��t�(��w��������K)=�e
��^
��e���w�}��������{��mg��W�RU���p����4=V�Vih��S��)�&�Z5��Jv���)b/�� %�>)4����ON9���TvA}<����y\�"_{�n�XcQ�s�(A8����*b:��:z�w��g
� ı*;۾w�尊@�w9W4�g;y�u߱�N�I'��mR�g���0�r]#᝕��^��d��.kD��	>��A����\h}r����3��m����)X�+��مfy��{�zB�rF}V���q$����Y�I�5>���O��HͶg����&Z6�Z�LN8 �D��#{�u�@m�g�fbx�V��A= p�$8�����=Q@�9�)W��1U�~�Jc�B0#�R/(�X��Pr�_��M���!!�R�oJwo=�#��G)~�LK��=��g+֍��uOط2l�)�p�ݹs}��m�~����V�6|�xŞ
��6CZt_�͸��@��q�R���,',I2"b�$���refH޼?LH��.�-2���:��
��"����y��^�1 �I��7R�3�%�䎼>,(�:�&ɉ�@K@C'?�u��$�BT�_
sI �����0P�3���	����p<����#�
��Z��)��x� ������v��� �7��ο�����i>�]�f4�0��b��d����R�����9F��2�2����*�,bMЍ
�-g���.�q�3&�p�W,ֳ��u�!�K�7��8�;���ܜ6�S�-G�Z�
N�ۼ�;��a5�?��q��;EG�6���Sո����5�Ƞ��=N�'�=]��dZ��R�ء�t-טPJ��i���2��_�-�ݮ#eS�X&�98Xq�x�IHʸ;N�	nx��erPJH��FlcZq%��I�<����Pb�}C��+E������F��U�{��9UL��4�������x����mt�Ɇ>��j�O�,A��į�$���b�Lfd�o��3Z�/���)X)04��J&�x��I��0�Z+�tI�g��%ªmL��2[0�kBC��	9�qwx<�$ ���,����w��Q֣�����.�0��ZLtpg/k)X
zc4�Ӹ�	�[���#�}E4�T½ x4��Q£�Ăt2��c�9#�R%�
���{D���uG���y��{f��=�u���Jc������SB�tH#�>�K����953��@�$���B@Ve�����l
�!��I3��(ƐC��8a����h������W��������\t.�KF��p� �����v�������������w�60�î^���Tؒ��	�^d�F~�U��T$�Z�5yݵU��J��
�q4��")^��N���`��� �fA:Vk�Se��1�KpP���n+�<�m
A������"B����=/�%�Q��ƈ�#�՗�",g����'���3���\��k߳lS*}�\V�vM�Ø� �yo�jp�������@q�O����D����09�H�KWp_�<lz��eL_p�F�űs��"�������p�O�w��uhM��4ɤ�;�F�2���5�A�5�v8��?���I���;ww���̪��nt���p��� ��F҃d��%�D��!�F��h���X���z8߽Q��+�¬�������r��LZQ��]�5\�^@;�CE����	�a�,r*���L/ �Z��(�w1��yv���-.ׄ=�3��d�s"ЧS�h��=�g�3&Yt����Ziٴ�[�����L�^>-�0;_���N������%1�i�2���5���i!Y|.S��wN�zqt�9�������>̌j��״5zm�׍U�i(O���� Y�P����ĊY��5m������n��Fk��,��Y�^
�uXK	�|M e����`��"����/����_��w-�G<�?�� ���{��?���4�?����o�㋉l��e�ƚT+�[���,w�5c��ap�������F�/d�� =�,��Þr+���7�!�xN�Y9֝�Ǟ!��
\���� �њ^+�Z�)����	=�0�EE�����~�X�X�p�+z��D��t8���[0����=�b� W�"Ns��� �}m(�Wa�;���a�"�cc������D�Ԗ8��b=�b�� s)C��w��d��s��ޚ�?��փqx����{�"Zrnض,7q��o��/&Z��]�d�6h���85�U�ۓ���2јD�σ�6��L4�X��;\W�y��!uf�4�1��L��w�r-�K�A�H4���;#a�h�����"m�b��5��&����r��J�w��R��Q:ߏ�)��	)���Ӏ�my�8�f(h�R*P!B�:�k����*���?�!�x]zU*Za�:m�b\��x�h=e���9x-RWc?Gw�C�L���5Nˌm�k��,Y��q�'f7��N9c�@j)���0{/xb�V|��6\�&�E:����S%�t��"�@�JU��h��b+p�ʁOB�Qd��9}9?��޾���o�||�#���=��׭��b�������m��6``��yתQ$�k�o(�^�)��*�e�i�{m9AA��&p��
�֣�@�=�r8�y�j��i ��X9�s�b��R����ƎN�i��m���}�,�l�V��H������mE.��=Γt�f���pA)�%���`��r�=p���!�eM�ɹ�����_mA�~Ϸ��	�9p�<�aKS����
�NZc�VA7D�F�V ӧ!�s[h� 8��+t�0���ch�o|�5��8z����	���5�`g�����ۖ��8�s[�o��֨0W������R����b]����{��Eslnd������H������h�(��®�8�9p�E��C���8�����¶S���i�����oo\k���e<=�}�rM%Z���7Z!����G�s��^<��M����������B��Y��8Q�B����SuE� OS��!m��z�n�ld4����J��ň-f����*�"��{�B�Z�L �,(
��V*,�"�#W�ȼ#��(Z3�����Q�[ZC�<�G�Cj���{iP��դ
�^ȸ;$�L9��z=�_|��:��E@/ >� �	�� �ݿ�������O>y�o>���k�Q��N�����Э"���8��iX鰀�I��h�5�+�a�����A��e��n9R����c?	�H��4�.��������}��Zm�S��ڔ{r-��7�����g����m��dW�K�J%ӿԊ��a) �%xKQ�i	�'���P� 9xO���x[���p���M��h <�&�p���޹��׆7�("��Ja	���� Ce$˾R���L&�����x#����p�����R1����}OE��Y��]wM��,&&o1~|��"~��Ӕ�ò8��S�晅Lk<$j���k�5�m��-C)=��Z+�����Lk�3p���O,�:��h��?����G������9��cf"�,�Oj8�{om�:�A�5��� �%Ľ��e�F@x �R!x_f\8G4�3�~{��_��1�����"�'�6�R�Q���i<c�"g4X�1�Ԧ�P6��c��q�6�-J7�W�d�֋�?�e��Fʜ�T
�	�:l1!��t+x�)PbfsЅ���6����B�6-�{W��0-�ދ��LPt�t������$�������/�����.�o�w������c�wC���K4|�?��������+�{`��A��P�i��x���@�.~/Ĵz̀����E�(%���8�\��ºd��7�ꝩ�#:�xs��bJx�i����9�֘�.���2S>��,�e�P�KtƐ������;������xy<���io�N$7��9���|����w�P���s�A#� h���5X&����Q=V�m��O)"nkCpۮ;wκ�d��G��v�
(���&2��F�ī>�⋌�7I t�Q@o<w�V��z�[������wOa�������Eta�w�7j� }�ࡊevx8���z(��Q��嚰�,��Y�@�Pti����.�c���i���2Yq��u��� ��b��H��{�����|`����N�cś7G�O?Y�7�d����3�oy8�`��~�2�5#Ti��X�����v���i"^�<�~�1�q��%ZqM�Y��ABA��.�-��p�X,6��J��'�i�T�Nޜo̴��������Y�<[�2� ��#����s�J)\��D�ViU��d���09��rj��5��Т'��`M;A[J�JfTq�(h����>�í��go� A�>��Jāml�U�g�ۺ��]�� �}|��� ����w���������VZ�7�&� Q�Z������^2��@j�d��U��6X�z�ʶ���\+. ��o����8��
�0��7k�2�s�{��i9���ib�%�{׎%�b�q�� 4��c	$ƒ��a��Yܶ�=�p�Ӆ�;�8�0Fa���������aO�y�a�#���4���;��m���_[k�|���������\�t��sE� -�`k�(�)�j"��!5]����� k��[�ʮ��yC�Ori�bݢ��E}�z�Y;�0�
c���⛷��C��S�����L$���Y�sư��r�5���.�(�&� c4��jǣ��7�j�N���ޘDˠB�!����[μ��`N�;s`
FP�}�o�R��8�ܭkB��
���Nc�
u���o��(��c.m��\��Z��%!M�
����(&��NG��9���V�V�����I�=�{��԰��"E�k��q�"b�4���� %%��s�B��~��J�d�,�`�����;�L�&9�"C~@���F�pX�5{��ZƝrOj��f|fr    IDATMr?����V�����̀,#� (@i�Xe*�X��QUC�
V&�MQ(X���l���'��߿��?��@C����� ����D��`���?�Ꮽ�|n��'*-�)(��n�@ $���H�X(L�B5�]���Z�Q�2#��Ն�(�z3�0xC�h��{�І#`O��L�<&K��$�b� �Z����;!flq�,��>�����(����a��LABgxC(���~s�Z��mG?���1�^b��g� o-}��q���7k5�*h����:���#F2�6
O�7●�A,K@V��2�.�qA|�=d�Y��-��r�3�}��a����؝h�D8��/&�ӯߋ�,���R�
-;P�n��i�X&?����8l|�r�c�K"W��kW~�p��i��7M�v���e��D�~���:I�9����r#�g�,���+}�����C�2�bA�MB�,�'�V�_�I��2cA-�M�l��όڝN��y�wq�<�<N������q9�,��H��Acع�@�J������B�_⌁e��RX�/[S�:���S�q�Zk2*W6/_�(�����e�/�=sj&[o9f���h�;-����	��m���D-8s��i5�S�I�ѳ/��߄�I����Wy[JX\��Ib\�U�P���R�5���R�I�zhA��8-��o~��o����� C��	�� x��w�w��_~�����/^}�9@l� e����o� ��)�4��ZŬ�
��Ep6~Xs�6ȕ�P�6��Zw�^����Q[��{�}�ü fڼZ��j-p��$���!�{C����N%:���FK[ �6�����i���G�R�u��Y�q�"r�xXhA�b�v��N6���mO�w��N��8Q�k(xoqZ�捪q��P+�*!.��O�YW�wQWAZK?��
��aݸ#�Y�J��9.��vLEƔj�k�ā0���۰�q7m�󠐰B�kE� �o߭��@h̋3wʹb�����o�߼Yq�2��b�,�����(���^�@���,�9)nc,��2����jč�N��fy>ǁU�v>�����B-�����}��GJ�˵J�{��g.�Q�^x=,�:c5.��)�l�n\�Y���2~؈A�F�Or�Vx8�=�����@����W:�!8�_����yö����� �r�9gc,�7纕���*"�˶�~�ޞ7�5���a�ў�V
����IVu{δ��޾�����2���Y<f��Q}�g�
�J&O%�7��)�dv��Ĝq�Lr#j��Iİ�d-.9
��wTo�pU���2W̰+�a�����_��?����)�ǐ���C- ~}�����0�����ߞ�G_��_$iXVixE
�Wf�~��O���*&M1C����8��\��C���ِ��u�!S�^�p���ϭ�Z{�1#��c@Iw|�Z�)�Y���y��z�0y��כ!N�lM���V́]I� 
�-�L����
�n�2�'�3���tH��Ho�Q�:�#�Eb,Z�(���#�$%j D�R�dt�f����q�_��Ӧ׹5	�!������j)�# �ev�f++`�4Jڞ�7��)�x���Vrl�X��s:$*��(��~��~�c��تhU|�;�er7w^�+����!����i��]_S]t,��5�|��c�Q;p:z��|&!x�IB������g(uI�}��t:��Z*��Е�@�#�\�
�k�[��g����d��q�Iv��@*���F	��qF���q�Dj��5b�zz�};�R���X��*�=2��	�X�J����PqݵE|�;GC��s�<��0���&;�Lqlk�$�*���-el)aݣ�9�	�	�Ql�� ��x��a�b#AT��5�tN�Q�EjIVF)$�
�PHiF+%a�~Y�95�I��֤�7_����`��x��� ���ֿ�t��a��Ͽ����X����ҟ�
� �0T�Z��� pR5;m���;g�,.y�>�NX���,=��#���7��,6�=i�q��H*���|�\d�F�덅�v�`�1�����n�"귧�Y��{����pM�$�$8���	�;��mGp��l��I؋|<�R��逽����U�mOP���k-3�/1��ge�?��PKAT���hA�6���x883 8��ъX�k��B�<h����%,������y��fJ\��s�ȣ_�Lp�|�G�ǃGJU
����`�=NGϼ�i�U8|�����z��s�KQɷ���rpc}�4i��ضm,所!N�I�V��a��z���e�H�TlA���8NG�Z�7�}bE�a;5Pl����N��4`pO����QJ^;�� cJ���Z'L���@�}�'�A�sD)UT	k��2z��w1W<rn�ia��4;���|a���j� �^�,��¶'d)��g�p�n8.�ZaS``��X��O#N�C��u�"�����{�ٝf6������ cn�]z�_IGu�Xs�.3ٓ�e�(�k0������[�'/�h4�7*�� ��:YP�ʩ�Bly4Z��֤��W?��W��N�`��x���! ��w������s��>���?>><>ip���_ɾ_l2��W4�ư���&�6�Ě��D�r����pK;��� �LA���{��z��n?�/��[����Dӡ5<L�����<h�j���f��D�p�{�j���ݾ�
�m�\����:��si#�oO�;~{����#Jl.;��ȧ���qa�����%Pr�ր�NvyS�9xz�K��G�e�T����;�. L��lG�6��������?=�b=MN��e��C0H��)�c�år�E� #/	�S���$��ȝ�ϴB������z�"Aq���?/k5fv�mM  S�z��L���-)L�rg��G�51DG �!V<֕�Z�)PC�"��u�x>G�!&�H��z,���p
�{[���A�H�ځ��nBH$E���W_?c��% �`�S�H��m���pf���H�݃���iſI����{>@Cú'�PAh�-~�1�(�:t� ׊��� � ���}��k��F(�!x���X��
l)����bM���%a/�IQ�o-�qXk��L�a+����:rB��H����y�(��ON_��'o���o�
�x��`���������?�o�Ґ�q� G�"���a@hu�a�& �Va���1 0i�+�-R��Z�~�Z��a�y��B }��dc��H5-8~��`rD�ҫ�ƈ\f����`Q�[Ψ�b	�X��щuP ��4T�����d�'��"��^�/�cϙq�����h��C:��Q�����ViQ�����-b�M���8x��h��9Mh����n��&^<L���mK�"�i�ؽ�$q��7f���PMX�X��7��b���M�p�`�9)��8v�O��Telz_�L�P'c��-���(r�)��K�*E �yf �É�R*^��)P,ԋ�\������Dؕ!b���[��(k5�Z�y��ov��L�h�8 �V�5�p��fE8PJE��
Z�OaPo7����8u	���vO@T�灖�Ӊ��'���ߑ,�m+x|�"�+cb�'RFQ�~����Z�y�x<MԊĂm˘f7���1�:j �amr����4qB,jix���:'����0A�ߨ	������a�<n­���~ ��<���{��wdNh�u�q�>��,�Ƣr���I��n� '�jM۟�q�R(�0`g�V��׌���d@Uw �3<�{V��=/A�����N?��O~"Q�����ǇV ������������㡁�XE�1%�~h�H��I�j(�'-BLƎ��~cn�	L: G��8l�����}���I��*�� �3�������FH�Ǿ�\��}��Pk�Le��f�����hK,,n{�� )�Z+|�x�N��R
��=XF�J:�-&,�@m�����Ix�U�O]��C�"W���ɱP $
��p���Zj���]6z�&�q��ܼ���C̓�ENIF�2
�RCǮ����e�B ���5�8v_�4�J�V8�p���y�����?/���dp^v�b�
I+�E�+�	� f�"p���L�A�x��X�1����pt��;���E�"�����p��������_償����}֍�&�F,t�d��¶eZJ�1	ǈ2U����3n���ʕ�<��;-��+WS�d��nP�p�W/|�f��膖!v o7PF{ze΍�8[�7c��n���}��\�m�B=��.�"2K��;���O��L���q��LΤp��ߍ�G=OK���#�,;��-η��S��S.ܩ�?Q��A�R�.�{.H��E���[MM��)(0Q4&~���D�3�L�J/�а��K�(�C�1��������Yi��TCSQ��ͅM�O/^-��o	�?����� �����q��/���i��L�"��i���P��NC�4�Yr�Ke�se��'ف5p����~.�uj a���$v�]�d-���ƍ66e���Q��$e�Z�X�8�6�Y<fC2��C��!\+�ć�t�S�h��؉�֚���%�d���%���T�
�>�dz��p�>z'J׈����%X����z�qt�}W���C�� �7�+n[�޳�C]�����X�����c�d���}m=ծ��9�dѣF0M�w�{N�����Co�)Z��5Õ�-�rK��#E�s�ޖ�J�L�u��ӦH(�w�Y=�#����vKp^��E���{l� 穢/�#g�;����(���.���␥K�\�F�be� #`�P��`�����c�+>�d�Vܷ�{��޽�"F�˗�a�+�vٷ�0Y�V��ϗ':-��ӌ�?p\7�@f���h��0���9��2����w�+W*��L�f��S��J���\]���.��,��m!�Ov�M49�5�vb�l̒`���}��ňMB�8�b�c��-�_��=��e]��#��J�Zu!�������d���%E5he$+��Ei�@J��;���Z��
h�BnN��훯��o�p�}�� �t�����C* �ۻw���7������tz|za����Da�ƞ��l豃o�j��A[x%p�̿^<�y�S��wxP�g���hP�%cK��c��ɮ�����Ē097����+��2�>�d�.���U>���EE��]p�<�Ұ(v?{�d5ś��<����8�]d�qWN+}W�w�3@��4�֫P
�컍��x��>���x���"�:�k���[k`9����eM��ez��|4�dO�@_}�O(�$��Ψ/�Ho�]9LV:b�ߟ)�̩�p ?�O��� ��0��jh�ޥ�(�+����^���ʔE��n��1
[�h��|s���fC�����
������o{$e�Y���8�(%���v�n7l�)|��WH�L���43�j�y�n\��k���g�=c�z�D�z+8�{�Ř����H9�����
e�(]�2�&8k���F@�h�{��RLZ�I$1pX< ��mO�<m�=觋>�]7qXX�L8��j8.�Z��)�G4uK�9�Q`A�{3u!{�՛h����|���n�s����R\���(�����Q���'��]&�����[w�HĶw�8��2txmiA�� ��Y6k�O?��?�����������ǇX t��	�^�|�_~���Vڙ�7�r���#�?�� �c�����*���(���0�0ǃӰ�A�s��l=n1"��I�ߟ����~�:k�����G�mg˷F����S�hĨ�W����m�3�/�a��Jb�@cf��z�#Z��a�Ev�ʥ(�y�⻛@i�[�4\�/��Y��}�����R
�5JG���:�&�y!��ks�cG�L�����'�|ŋ�3��)W$I~;�<{�.���^F���Z��*o��t�&�ʽ�\�6
�ddK� d7][E-�stl[���8g �[�QtO�5�����^hAs�`�1|��8�%�V��! )��Zu: _?����Zi��~�"@�
&;�z�V��� �Q��^���ࢾ�P"R�^XH|�ɂ�`q�f��%a���U��3����ɉC����1"-�V,��d��D+�X�R�k������WO3�츉}����G
����Ha)P��EN�J�(v��2������頷��	�[�"Pd�A�E�@�W���.0V}A�>��AU���I��Q_2{�5q��逹0��j���^x�=ڷ�Vg+@kr�J���Z���81YK�lrcC�Px�z���UXe�T�Y��Dm�6Ƹ_|�7?�N��{R�>�瀻��3 _���/>y���A�;�)n
Jp������,4,��]z|f�o���
��ekFP�N���h`���
��0;�Ľ�*���1%���IFikN0
8N��i��9������󷵌�-S%VA���w��(�=%�\�((Sv�9�84O~،��İ,q�{J�l�42}���u��.v�N���s�����23����ɛ��S����Ҍ�%5���0s���3�7����e��L��Wh��N��{��k��<�` {��<[��՘&�{�	����"�E-ݾ��w������8w��6��S.#_@k�i�ȉ9J�5�f�N�kb^���K�;�8k�4~�5S���R8�W��0Y'W��0nL
̙�^�9U2 ��rW�o�^<�l�ְ�	��h94��������޼���(�\��Z.�(Z�j�:�ոҹ\���D��#��d)����z�4.kD��P�p^R�r�S%�B����� �W��-�uapXX�E���G�Lq�ұ��m�,���:���,-ڇC 4�V�4v�Z��Ӄ�X�V<(���	-����$b+	]�k�HG6$�WiD
Z z����";�i3F�>P$�*
��W?��/sJ����#�7<>������?���k �s������޿;.�#��U��6X�AF�D���%��pe���A��c���i�kH�H�=G��f4TM����`�v����z�a�����|�a�j��+�,!��p ����<̤��zr�?̓x�9@+�$q���	z
m�b�wh�	n��	�ܶ�(��wv��&�<f?R�f�s�����D#K�=E�"���L�90LŨ�$'��ܮ�vr�̳%�X1Ч���˿3!��y/�Hu��Xw�Ż�]�<s��Gv�G�"(p���Y��,s���X��0���gW��b��A4��:�J�O┡���n[{|�ȑ��,n�˅
��'�����ѹ��.�$`*����UɊvtǹ4�:����-���dq<:��)W�3���&뀃��7��)�	�P �,N��7^��iv�E�����)��Ҟ���}�3�Y⟕ℂ+�<�]��3��ϣ�˙���(��i�h,<��D�VY=2HK�&��^5��ȱ�: 2 �ǌM2#b���[#�_E�t�I��GkNᬈp��F���&�,�O~^Jk�Ҙ�RĝTd�I���fLp��Y J4K�޼/
R��*5Z���_)5�Zi����ih8��7�~s}��׿�}
�#�#�ǇR ���?����G?��=�FA����R]c�����f�f�D@�YsgK�"�-Sc/Z4�aZ��/�,> *r�F `��Y�VD1d�7�;�,r��)E��ܴ�sS"ֳ
V�5����1�V��z�c�j�@P9	�Ɗ$cz)�3;�%��υ�V�$)��C��/����*��R��/KΠ)5n��]��z �������&�C��x8Mȹ�������=�L��b�X?v�V��R8i4���|�����sh����k������[㔬A�(lJ����I2%    IDAT;Y0�P
9RH�<��V�������hK�_�����{��(
׵
 ����B����8�	V�^�x8r�����0/��`,w���A6̅�C+���L���̆p�&V��Ͳ��Q�W���՘Þ������>�ςi�l���a��
L��"�Fc4���rኡ���ݹF��v�5!X�V�8Q)�FK� 5�	��S@9y�irc�B���� �N,�-�i������3��8���c�N�!a1gX��VO�\f?�����̃{OI���0Y
 �����Ş*�焇yF���[Nȥ�q�19�X
�0�� ��@�֜�b�I��U���Z����Dw� Φ�f)b�}����O��/�b|�]�~H��@Bл���O`��9����ǿ��8;�0~�z-XeV���g�HL:��~5$�:<�Vv�+�1 Xv�V Ct���A������ȇ�2z=��˾��*`O��a�� <�����Į�Q�OkG�}?��p�^W�ǜ�<gv�	�G����O)U�z�/���]�p���������(��Mj�8.��Z�˨�0�g�\n�U�~�3��59p����SE-d�¦(JK�Q0�������z���}|¶�a*k8O%�w�<[
�v��0����Γt�R����d} �c�t<\���.7r:yNn�, b�/]���ޒ޾��pZt\��Ɓ�e�½w�����]�E�Z��7+�0�X�*X�0��gA��= �[��a��4��$3�Ʃ˖q��w�ڑ�G���׌�Q�=2�f1�d��P��n�"�Qa�-�}K��$�m�>��e���)��$I���b�u�x������w	�b��2�V	O��2���=<�"c�YȀ��	�-�y��$jo�b�m2�c��ŵ6<�0Z�E4�p�������r�o9E����R����[��|�
�%g�gZ�jJt�����)�:����&@��Uׅ�>��������A|
��@����R�~��
b�{����?y����L����/1���/V�����p�X_V��I�����JF�ÿ删��*�(�S��iX'���J�`-JkXS�A�Q�|�� ;�AV�{^�}(h���8Q`�+{����Э�8�6@S�sa�����T ��V��{L8L�-�9����+�� �$#>�O_�d�p��)�F�&�=o�7��nkĶw3ǞA:�^�t�?c��s��-桴8!%�ng$��>��i�q�����
��g��u�Η�"#K�(�{�n��Rz��$z�^'�#�F�	Z�z���,��@�WE|X�w�<)��5�1�[h9\f�P�/@%7��"N\�DB�+���)�����$�>T9$w�Aγ�.d�@�����	�k���9`���^NW��9�o J�C�r�,h�o��x|�gG��(䁾/7�D�H�u���R����$�|�C�뀙��)�K5(�0�����7���4�����f���/ź1�-��/z��
�cȖR�V�ZS�MK�/HԴ�k��mCL���0�>���RP���52-��&�O�'8����4f��l+��)�$9P�2(z�R�&��t�MS�W�	��+�L����޾��W�����`�� ~�������[����~����d5�}���]�6@+���	ܧ��IС��qY9e���fÝi���XL���νA
H'�@�U�|��j*u�����[��=��
�ϋ�HK��r�" �n�srpw�V
םĵ�4I� p��ζ�&��;h����@O�p=T�����9ׁU�Ǔ�-�x�#G]�����jȕ7�e�~��?��P��R���
�\�.Z^���eR�LlYK�);�,;l��p�c���j�����5�$"nS.8�s���K�|k	�#���Xd��`۹Ψ�0��)��rH�FS޶-�Z�Á*���j%� NG�.9?︮���H�_m�OY��'�e!,������|����J���������W���E�^��<3Ew@&��T��n	�k�\�%w@V=�|�"����(���b������1�K'��:��5�����EJ�m�c՗��gZI�㚂���K���WO��mˀRІ��uO�9c���\xO��<ג�.;R�x<�� H�����&�_C��S�֔'�$�����K�qQ%ˡ�
��H.����X|�؀������"�M��&�4Ia��2������Xo2WZc1J+ރE����D������O��n	�u<��"@B������1�G/_�����pP`�$���S5�%M4 �B�;���[�Z� z��d��-�^�xM���{�5�wk�q���
���p,����w�Pu�x/Q��je����{I�ӘC�.��qT:K��-��Y���&���BE���W)��nSL�����.\j#;�(u�K���RA)E�P/f��c|�u�B#H�I�U
#l��9gw�I}����]����8����
+	��D���p�Y�),V� ;�\	�i�p�&�����9-���a9)W��q�&8g8*�Mrz�E�]'�ŝ��&*�)0'��|���?������o��H����/�!�:8��1�*�G�q<NԱ�x��(������1�z��w��hl�n�pzPš�,���ׄo�ِb���(`�,R*���˼
���/���$˽��
�)�Ԋ���FV���53DH���6��̟z��=�C�����?C룂w<����k��ɏ�y)���me��$�^�>�}����4��k���w�A�!�E2l�h�I.G���2��Y����jGX��2a����5Q
��K'�����I0X��B<%�$:�̘:��5H��|.�N?7&	�%S`�5�
��� �`�y-�/�}8��?��_�W����~�� F��ֿ����ׯ_��/>������B�ͯ��Y*T�-�2ȭ (�����$� ���5�cr[k�#Qo���(*��h+��bq��W�&��¸������zkq���3�wƘ:��]<2.ێRI�I�r�@�_) l1��gg���ѸmQxk�#�'�";R56`�;�LO�29X�P
=ʹ**f'czڸ�g�c�-�����*4;�9��c)��%v���7�*�e�a�ɹ�F��5]	`��da,zc����Y��<r��ïc����ʍTX �TQ����1
��dεɺe�;��K��l��Ǖ�cx�\�Y���e�He?��t�!o�k��#k i�����ppC0
�{O���S
�}^��?���02�u���,�Ͼ�p�0Q$�m���d�©O-L�f�������xp���J>�N,�����ARN�8N�y��扙�d�1��r`��Z��\Km{;e,�V�B��A�-�%5�ϖƬ�ueL�^<NpN�����LGG�4���Jk8�v��!�<«�=b~L�����h��Q*�2:h���!�L:�����R�:f� ,��D�Xq0�R��������`���Z��UCk�L{�I���R�QXj�E��Q	md�ɋ�ohJk����Wo�m}��N~=*��}�6 }�����k �����~�忟�47��Qղs�@O@.��-�~_A	PbNx}]��kܐ*e֜��V��{Ѡ���ފ�4�Y���ܓ��bk��]T�J���'L���}ڠ���ҡ�
��@�8
f<��1e\7�s�a9T+���04�R��q�Έ7����8y>Wo�?8��o;U��h�;���᮹'�iE�rǐ�J��ˇ۞Ő��rHA�BpZv��e��q�,�-� �A>)���Gc��N]�S��$�Q�"w��4�\�LT�o{�I��窡��=cO����@�2Αw��8�|-�a[[�a���0߻c�i#"@Q�+MmA��������9q�:�n���c���F_��t	�e���ߺ��J�Z����zIj��%�{�;�)��qD�͎0i�Q��8�;Rbl�4�g��� ��n�^ˤ��z���E(���@��6J�\�4����	}2�:xMZM;�1Z��,N/���J�<u	$IƔ��4'?���Ż�Fm����M�嶏�=�=�#��G�N)@Y ��0\��Ug�:�1y7�GPt��vF����u��dDy�{[,Ul��.Q��c�i�S�u'��� ��
��U5Tp��}�MF�]��(n��O�2ݮ���_|�X ��ݔ����\ ���=�n���t�������va�QAsO��?�U�V0/hTv��U���b�ڈ�$�����■-�9�tE�5
�Jz)x�5���������p��/����o�J���߅^����0������6� �̂���;cF�y���.�b�n;��˜�#�6�	D�2��@�Y��b�a{��v(K��ּ�O�X�3>k��������Qh��֨�?�o���{R߈���z}�ۙ�t�Ul^4��f7.c�>�����4R�g�o;�̾^���ȅ7����1����iȲO�coO�bUC�������Cxf+XiqA�i���D�b��²W
�*lk�4[O�bY�d
/��"���kaݲ�5�W8,���VP��(�V�Vp>���6Í4¤��FTr��ǧ�4���r%,+x��d�X\�d�&�mg1�� �.��*�U8�I�-yYD��fٿn����V#�2D�1f�6U9T�X��y�"H�e.k$�8CL20��(<_���� ;'�37�f��q	Cs�q�M��w���Q��XS�kh�=�Dݍ3�#����������-�����Bk��9�Α���.�r�q��[�S���@�����D4�L��h����0��ɃF�=CЀן�~����~�b|
�>�c�[��M�� ����G���*�-���oJ��� 6B0Fg�j��('�S��A�0(M�I���"�\�F�E,��}f,G?a�I�����Q�d���8��s �n��I]��5C4��>��`-.�΀��K���.8'B9��h~����x� ����v�i���4>�\`��<�jRPpO�t�+��z����)��i_2��Ӂ���W��q:�.��ӂi"�Mi5UǙѳ\���e�Vر�������w���F��N�Z��&)�8-N�?FR�he�#N5V	���/��A�z�qo)m$�%��=���Zx�7>��ϩ v���cm<��u��������JO7V��F�����ib��VN���@r�扉}�?�3��j��dB���]o�ɢ$��7a���x8:<<:5��b^���[��Og���i�{�3pV����c����"�Nk����΄�W,��V�DZGE�56p�^k�M�Y�Үz[� Xf'k�*�y-y
��GJ���O�����I�Q�Kn�4I�A���u�Z��83P����5�4|��6�Ǫ|V��'o[��8W|�|AC�&&j
 u����Y\R7�5M���orSd�'פ��k������KU8M��3U)�)E�p՜�򳡡�[�pr,༷緿ڿ�������Z��Z ���}��, ���g/����_*e���b�����UĖ��q�����k���p��t��SN�����(��4���J���f�%�O���i^��Н�
`�V�q�R�9�A�E����>�}��=}����Ӟ���5���A(*��3j���a�J)	N�on����B"�_���'��� .o9~6���	=�4��-�ش�8,��R���=�[T/�+���'�\$��5F�8*�#����q��
b��Z�19+�HH,���H�B�d�u�H���Ã�W�G;��T<>�{'c�DI4ZkΩ1�x|��`[���ұ���7���p}dMK��1����ET�D��Yx���ve��Ţhs c.�ʕQ8�v��F@I�l��}�x�t�T���L045x��n�"������	�6�{e����&X�5�q����t��[F��8�����/��B/������w�[H�\K�!BI Ce{W���W'2,j�7��%,��r�x���Jh���8K.��t0��k�>���3g��ZD<ؠp�Ex	��ˍS�Z�	����@�V�S�3!?ێ���h8N�%��#����8��ڀ�4��7�`���s��hv[��Z��J�Y'�`�АEu�N�?@s��fkc���~�����9�3����෵ x��>��s _���}�?h��'�*~%hI��Z�_ɥa��Y2�$�YmHW^zASЗ*	yd�S�װ��:�ѵ&�'�1!�(𝱈%�=Qe��)`��˾�(�&�%Ї7&'q�ˌ�uŋ�"Lp'ݻ�G�=���/�"G���0�[gyO���.~*2�GkX&2� �(sG��&�{��^(̓��@^���K����ܑV�(�ڭ��,L�Z���K��5��
��p'�/>rr�:g�3�/Wf�q<8�;��+ �&�>�3���#�N�h���9��N|q�֧�8]'��=�>�Z�#yYi ���`��)�0��Zo�b��Q�xXx�W(͑��L�_m�����]��%c����:���8�M�"'
��������e�?{��$Iv^���v���̪��D��42%-dZH����DQ��I��@�]���O-�woV#���̈́���*�2�3���8�w ��)���m�ȩa^(��p-)��#�����
l[���)�Z������tbfC������8,p����0�E�q�Ύŏԅ}ERzNE��1Kp���H�R�_��ۖ%c�R�����Ѧ;/�~\��5������,��I���5����`��] �=i.Λ�%P�!n�*: �#��1+���ϒ�L~d	�\d���d����i�R�R�9L�	*��S���b����_�"5B�rk�VH��) U� PZ���Њ�-��&��4������������?�k������H�����=���O�ѽ�S[I��T���_�SFQ��Yg;A����,&p/U���'� b��8֭��Z `� �,/�=��H�L*�ڳd�wk�1�t���F�I(\�^oc�؉� �a=z�+�G�Ęp$ڈz�XJy�����w��	ۑ�j�yëk�0yL�h�2�4p�靑�[��`���q�ݰ���-��:+�;w�]u]j�y�d�k5Γwx8{�ȸ�ۻ�L*�p+�;723���.(���A+ L�	+�U!�M�C`2�N]Ck²�zd	((����G�q�e��Q?|ki��g%fىp��J���nި�!?<�a��xhv��[��LH���V�A�J4<��t�|_�(�c	 �&rjiP��Z��%��Z)�d�͵JWy�I�6\L�}]�H%,i99�����)\.%�gL�:,��<�L�l�:!�"qȴ[*��D�s-,r<WO����/Oxy���������#qE����-��2P8��Z�����p�:��8�����o�3�����#�&4�Ptt}�3bθ�&����2Q짔�	��+데*Z#@�GhE�$SE'���<�Vj%�KVwk<����Cg�di��Z*�⨙Ah2�iJa��
Cv�E�	Mю���h���
@>�������?���� ��)��v�C, �S��>���?y�??�y����HS�� 7J�l&(�KR�	�+��+6?�3k�Lpv�$`YE�.�� ����Ik
����|�kC��7�vY�	��	1%����B� &�p�&9c���@��doq�4�w��!��	�(<�f&牲�H��ڰx7yZ�j�Q���A�AY"I�<D�N�5Rؔf'�
���ߐ���LNH��n|�D��<Y�ܨ'P���3�zz�R��jt���66M�|�t��˄֔��d�@�]����ki�#c�����iv�L�9}]�bO�t#[    IDATؓ���a]�
u�5Z�\tP��	ۚ�����4[X��p/	��]x�C;_,�-�5P�k��c/mt�� \�h����cd:�s���r�*�؉��f3`=�B�$ �B P,��縶pPDJ�� � 1�E�Wc4��-|�W��ʊ�J�s�lp�găŝ�%UL�}9I����ط�Pi<>x\�qX���8�}/"�e�&�A�Xƽ���כt����k~y���7�XUk����y��_�p�%d���)�W$���!}���y������Y𿥈�����L����y	�'�mOhU��'��uO�X[E��Mk��2N�B��Z��5	��e�[ӵ� (�9�q���ո�������;��p�0ZK���J4����������%��N~�k�j����|�O�N1�Nos�h��.� C����(��P�uSD�*��Zbe�?[�R���hkżvP �tHJ�}���&�3�VԆ{��cϿg�}�� ��?2�\{'�3�G"~�ȩ��w3�뺍r��*!<e@>b.�Xf��Z1�"��[NF� �9xM�A'���=/k�\�`'��>v��y�d��EQ�L/��������j^�F��g!�T��oߋ$���Vc;2^n���Zq�ƳG�޾��w�ƨ����8
��%�Y5��������!`,�Eܔ<���n��`��;�w�ym��������M���!k���;��o�e��Ã�SrCi� �+�V����6'j�������s_
��m+��rVV={�:A9s��^I�S1�)q�pĂ��A˪�ɵԆt�*j|v�
d8�q��y��0$%�"B�y���V`]���f�~d���U`��<?���&&RJ����\��:E��S������>=���F^B��������p�xo��sUЀ�-"	�Q)�������褑��Z5�s���b�"m�F1��r�sE�	����i������.��y��	'Y�uj'��\�UE��R�P��]��9��$��5��YVx��)��Q���i�G�p��Iew_Z�}?��hhRLb�<��(�΄lJx��q9>~|����}2����X �����yz:�՟����S^��`��W�feD��Ve"@7@���I;�FouE��GIT�ֆXNn5mZ��^�����W�h�\+�qdv��Ĝ�M�P���Y�l?M�0��@ ��(���n��+;��=�Xk��`> ;��Ԋ����R��j��'O�`k�1%!9S �'���Z`������@�j��� ���ם)}��G���Pr;M����Z۰�M�E)R���{=���#j��^�[k����L���	���;�GAv���í �X�
5g�ë��9�uK���� �u@�
E�]�hs�%�F�߲��W`'�*�/�Ͽ�٩�O�w�b��]89\��%���,D�re!V�X`,-y��H ;�q�c,�k]C�"'>.r���Uc�%������h!^�iL5�K�ZE|ba`l��f
�����ӛih  ��S45�z(��p%y-3�P4j8����X!X��y�[B���M��2z����*�q9�W��DL�S��wN��~ɥ�d@v�"�����������F�����b)o;���ጁjJ�E�0�%�a=��h��+ث7�pbu�,=�[��%c)00�i�$�4ѓByT"�Sx3-ȭJ���Q��`���y"�Ѥ ` ��
j�g���|����7��^� ���u�P ����?�����}���N�F�on|zma}�^s|�X`3n@��0��rpd�f�Ļ=G��Cy�@cl-(�i��z��c+���3��n�bK1{O~ DhYL�v9�,'���]�i��3�XT�}��&���0O��R@�ʃ�p$	y����ő�E�|��g
�Pǔ�0s&��[3�Ԍ�x���$�Hv��[�,@���:ۿ�&k��!{~#�}�U�����ׇD�yH�d�O�,�&��h��7�QerA�;�c���쪁!��T����b��>_hQ�aJpN�̄O��Any��2RgpP�iq�w�\��[����N�$�~N|��w=�8���Ǝ<��߼ȹ�׿���q�"V<�&p��TAN4|0�3�1�/쪯��Qqy�m���5�r�F���^�y�W��%�@�q���be��ŷor��?�`=�1ZD�#7`���>�D�{��O�&4Q�O���q�x̋�7��<�"Iw|��G΁�������,��0<��'����w7�[&pg�� ��+�>/~����^�q	h��ҫȏkqޟE�v$Hfl;-�{��>�J�x�;l���؍��0{����똾�::��hN��ȹ�.��\9J�/̓�֒�ZM ��������4O�.���f�q�/��o����~���������������?��w?ʹ�S0�4
��}$s��QE��U�5a�~`+!#f��-��pb1TxEw�]hm���@��]��w�#�`,�tp��X4�0�{�x�'c��vGY�������#�3�e4�Rû�ń�;��Q\�I�-Ȋ�^�:,�g����<~��޲�ʿ; �����{�q�=R�K�;�&C��!)
�x]:^���*ct�Yl�h�m媃�Q�{#��]埅��|=s���2)jΩ��K�x-��7o�X�7��� �0��0��y���G��^G��*k�nb�6t��1�J����罁w<x�O��#�0�Ѝ��^�ߟ��E�3/��`ZR�c??O�	^�d���b]� "���H���U<�α�X�ɖG���2G,��FId�`Fߡ@�l�4����`�i6cur�%�1���8��9���_��k
�R���P���� g�:�0NJ��f�� |0h���xp�QE(���k���g����o6/JQ9q'�C��(��_/d%p_�5�P8�޿_�KD*�Sc�kQg΋����~�v��E6�ºX&��U
�N��V��C� ��5"k�Rp
��ZYMF�+ ��]E����<�Cb%B��Y��H�\�V��yB��vt��A���B������0��X�o�������Q�~���+�����k�������WX�Z��/hO+�6�!�B_�q�5˛�b=4%�G�Fޜ=��j��t�����z�5ɭn�n�8Xc���3p�X��,�]�j $�VBl 7$C=�ЕJ�6���x#������EY�������`�?]���{"JW�^���k�sV�j�sۋ�i�n��gop9v���'�=��3���O�3���6�Ǎ�6�`��w�F�|x���xY;���8Q�&�Mc5���]p��$�8-�l�s������J1��ֆB�9����:,�Iy^�z�.��c6b�ʩJN<��ThI(4V��i2����u�3k���6��g>��LMDG���$�����XPo����hN-��c��N��1E�zϘ��}MX׌ˣ��x�����<x(q$R��j��Q� �Nc�r��]I���Ƕ�k�`L�G�$� 4�,J����"Ŋu�@�;󞨘3v�'z��5��tv��������q
3W&�k�3o�z�4r?�I��4\o��;(<��=8�:���1U񈜨����n
��_;��p�3��z�ƺG�Z��8��b76[���`���=��8HD9uAn�P�S'థ���@��/K�ũf�o�B��'��k�5�;�(<��#���O+j�Rk#�%~���������%��t:�Z������w ��J��g?��E5���
��QP�Z(�������xxm�Cn�]9�q�fż��2H� ���t`��p̟[F�k��%YZ`�j�k-��������X8�{<�8O�B>���zr,(re׼xO�t�V����:&�Ss��˨=�� ���2��:k�xN'���N%|D)Z��b�*��k��@�-	�y�0�4��vN��5h�!�̕��7�d����(��y"�`��X��gB��0�)�W,nm��#>{O�ܶ2�a�};��x�yo1Ɉ�z����G1��m��p��y�%��k�&Y=�D�K��4�xn28��X�
�LaٴX�����U�On�Xz�G��� c5U�"x���l*�r�B_�0�Ģ����']e4��˕����c�����g���3��^�cžW���n�k ��rn�`v���s��8ؠ�^9v��	rn��|��;�d�^[�e)־�ىϬ1/B$,,���]���H"��i���HdT�7N@>�b� �cE4)��	�����x8{h�� �0����a¾gB~�׃�d<p��ԫI����7� E�Zt>M��1e\�}lcbd��_R�ٓ TQM<wpeiM�$�ku|O��b�����x���qc�+ʺ��Br���l<R�("w��U5BĆ�����7����7xu�>�_�?⏾����Gp��ek������_�ft�W�������Ӑ���)�����
j�z��ӄ�d��E 0Hn5�-�NֲHh��9a��ώ�Ed|�Y(,�c�I��JKn�����Mߓg H/(��g'@�������I&�e��P�$����`~ b����c!����&������ڀ�~���L%���Ѳ�g�t[#�'��{�
���V���{0�Rxz����$���a����˱h"�Pv�)UcpZ�O�����3�NƸ�jL������*�^t�Nχ߶<ln���ã��̠>��gC�ƴ0��j�}�G}���� <���{�Sdasyt�b/hԊS����9�H��>+N
(J�GE��ޠ���K1�kk��2�	�k1�s�:� ����&���'�c��O
 \H�
���Wd���a�{Z��ߛE�C)8+B��0�]b��0�Qp�r�Z8�z@g?|��>���fF���eГ �-��	o�N#Q�s�p�������|vX�/?��=c>Y<?'ꒋq_)�;-t��� �N�����Krhk�V�,�_�W�wq�"_���'���R�g���s�o�(����58M��\�d����XDy�g���
�������gN�LK3*�V�'� ��FB�����cM j����u���_�Sk��(�Ϗ��T ���������������.�jŽ�!8�QY�:PH4o�YT�Z�F�����+Ϛ0�ɍ�3�k3��[�����?D�1@��Z�*�Y��8ˊ�j��U�3�V�&a#�u �w�D;�<�#�W.y�əb�1y���(�s���%���i�а3��`�>�uK����2.�J�w��+�� ��"j�e�q�g��>��I|����$�U����;��В���a5�SM�m�B,�R||����L	XG�����Mv�'�	y�F��Ck=�7Dd�q�<�,���i8�=�*p�f,���[�珄L�̽u�+*ճ���c~�-s���� {�[����A&=�Z`3h��ENg�Zh{x�[B-V^�Z�0�o��9-[,�?�7Ŵ�\ܘޜ�,j�{��, ji��2����YYßS��2������|2bT8�=n��F��7o�ڂxT�������%ڙ$��5Aa|�ՂRh���"���(�R��|�����m�2���}��q��C��Q2*J�>�0b�,�k��29|��!g�S��b�,��8M�n�T��&�*E&f��Q[H��A�H,@����#�k�*�R�"��ĲO�f�F���\n�4�A�S}��ԫ����5	F��R�V��6�G+_�L�p>O���o��߃B����V 8���{�����O���J�`���Ӏ������aW3J+#�@+"�`,�qc]��Nk
�*��޸<�vd����������%������y�|����XyOqp����Z��[4(��������K�m��b1�w��=~/J48�tB2`����e�ˍ"��g��-~*��b�&�u��4Yܷ$�tB��."x#!N@pV�#�x������@���^*ҍ��Y�Jc!�MW�[ڿ"A��J�v���~��!����E�� �]�{JC0��;	{
��ZǱ�f�2x|"�.Ƃ�`D�r��	ȉv�.����|0�w��l�jǯ�o�����Є0����.���(������& (�ǖ���K��]Ӹΐ���ￜq:�����l+��e�쵆��$V�1�Q��Aۖ�~ ^\Q�`-�|P@:*�;Q�a6x�n���c�4f������4S$�]Z�qI�"�^Pu)UL�s��3���gn���������)�
|��@��(x�~ft���S+[唫�N�W�2y9�9}\�hJ �����&U�C �D�F.M����U �6�"�=��jm�BUZ��R���09GL: :�@
D�'�ON�
�����Z�筢���J2	��&��S����J�ݯ�q]ׯ�5@�� �Ѹ~H�������?@?�⋷���,(�˨ȵ`���b?a!�5�k��ƃ�c-{�y�D��Ҩ�8� ��[m������l��7J!Ղ#l3[�뺭&U�JQ�~�h �6�P�'����a��z���)��` Qϟ� �o�GL����[̣;)��<��a)̓��RX�O|=���*%߯L��	G�!����y�.�Q�4�n�5�3��' �X�@(�cЃ<hd�N@��N�f���\�p��5b�_����<\v���J�j9γt�y��~��I7>/���X�)�#�!`4��L��˅B�i6ط*>>HﷄVٽ������w�YT��bq�r��đ����K��h[���9�B4�����-ej�=�U��e|��b�2�C�PQ���u�:~Y���+Ng�0�R�~_)�@j\_���6��w:!�p{��g�|��w��<-d<Nd���I
6 �-%�����>�)�$ǀY�<-vP�dR�r���	����}�B*l�]q�Er��`�C�y	�1=C`-���ZL�1�0���.'7� SΤlcp���re��R����ym�8aE�H���+��y�hٽ[�"�<{�{$���{K�X�$�RQ���P�uZ��i�a��Z#�#��h��6 �hu9�w���_����pǏP�C+ ^����՟|��|���T�����5ȱ���a��Kz�A�S�ԭ�d�� ��9Mu�G� P[�i��^T�v��d[��; `�r����
'��D(������IR��ݸɼ��V3�F��T�r_��%�*A��]@�D
�Mw����B�b.�Ќ�e\1Y��h,�ie �S"�PB�C^kvFL�c+1�Îݩ昝���:�<ȗ��Z�ueA�%e/�H�����m�ٌ"F�d�<� 1��)�a����r��3mX�p���"�}���I�/���d�� �����qy?o׌˃���؁C!�f`��٢Ŏ�x�k�t����IHS��G>������H�r}Do��uB����w����Qb���։�Z+Z�F�����'Q��)..���Q�L9,	 �@�8?�e���N:��Z�e!|{�<�Dڢsf5��u��f:!��3d��&3�K�3E�#4K��C�{X�*l{a�p��x�nyϽ�5����u��.�Ce8ѹ])L��A�����Z}���d%�$s��*Q��%90&N�j�\�G1J6�k��vDL����R�����qH!{��ˊt�{�pZ�4�mjk��?�T2n)b�PD���iC�_k(����_/h�R T$�J#E֭��u�����?��k�v*����R (����O��_}���_����+/
THw����|-�v#6�s���)����Ǘ�0a2ʴ
�VPjA�:iŊW��1IQQ����i�9L�s��R|��I���7��aK	�g�L��9Kq��!H�͑��'�h��k7�Xd|װ�6!*�,�~\L��F��
�y�x8O���G�`%�[�z�=~,~    IDAT)���]�-ρ��T�k�c����h�;"���������Z�*���!؏,@��
��(�x��F!��-�w׭r]e�pZ�Nm���iD~��eq0"x�$2�(��D.ĩ�p~`�߾eAs��@�ܼ��u�f�f
�j����^\��Md7~��N��H��b�b~k�=�����˓��3Xl=g[+3�ӈ{A�~��bB��-I۽ ���X�d"�[�c�& F�W|P2��x�~º2��y_��������
� 4�)h|��`0I!�'��5J�Q�Ȧp�Ja��>��h+�6f��Mr[���4���:Ǡ%B�h;�8��vL�+CM[��cA0��P0���� �t@2�{Tq�,�ʊ��6,u�ԁ^w�.��|�3�9�L̄�*�;x�[�q?�L)e�_�ؚ��DD�"h�$?���X
����X#Y@�*Q
�2 �XdT�UG'�j�2�Ӟ����uJ�[��>M���(��������i��˯�|�o�q�jZ�B�h~��M�#��2� �(A+����V��[�M�S�8c�_$��
o���b݃R͂�d��5��j��}����^kZ��@�@��|�mߥY&��p�<12W�B�>��t���i��g��`V��˂R�L�� �}>`����f��x؈7_i��h`���B0CNéE�܀��5���He<H���
-���,�(���>N��1r�>��{O"�[��F�85RV�u�H_+����z���T�w��qp/L�"���R��<��*l+w��S�v_Y4�δ��q ˙ 'c)�KbtN�#)�����V��7�i$���*����5�~+8��A˜6��:�.k�p:���q��b@,����1�T�t�c�؎%�%��ַ��ؾ����g�`���g�/���y1��ł�Z�4[lw��3����=bY��â�m9ش�bE�AZ`��{�4-�C�n�(`0�Yr0
WH��ߩ��,��� ��|~^��X�I�'X��,ɯSĩ1���D������,ϖ�H2����0��_�ЏDh���s�Z��&�NNޏ�}JS"�&��`�������� 
*���Am��}(���	�Q,V&��j���׿�;|���G��! ��; �˷O��꫷�U�
|���뵅j
�$x�Q*�״R0 ��)�[w%< ̆��\
bͰJc2Z���f̎�p��%�C�������S�.�F�,Z�!�J�BҽG���7k�jvn͈�';}��XٗsG�i���V�Gʘ'*��S ���*��4�"�̓��y�3;��}��2O2n�.��2*��"N��ww{ �����ȊB�+�[��R>l��>��ߵn�L���߽���ix�����i"Tyh=�񨕩x�}s��V5bp��}�%=Q��)ʃT)	"un߳�i�{n�<<�ư�{l#�FJ�^���x���EM����C��W��Ljk#|&w_�X� ����8*NB�k� �]N��{��������wR�il���Z���� )fz�a����wv� ���l���Ji��3&�L1����Yx���n�Zm��"���ض�ya,��"�Y,��#�;�o'y���#����m	�SXh���3-�Y�0�u�	��q��2���OVfd?c��¢�''��6>`����G������8h`�	S�'�V�T`�#�&k�3s�Y��z��Byi�5η��Ji�ZQZ���V� �u!s��5���K4��pJe���(�B�?y�4@��o~������� ��_' D�_��/��?���姭r䮤��]|'��n�4b�)@i�M=*�n�j�e�O�1�}��}/��Rb-����ǡRj��-�y��Q��(@!��S�<&g�D̖KV�4-�0G.։�������Z���O���?Z�@�O�7�챼: J_y�e����?b��d+��=�����tu���[��NO.�S�*d���E�`<jkr-��V��U� �`[�q:�WK��)y��Tc?x_WU��J��6ܽ/"�;�Bx�얭՘&�68N���z�R��j��zՙS�5�>�<���7	���p�l�±��f�cc�I���V��0�0U�>��\� �Ȫ����UY�P�}-p�v/ϴ�^,�7#͋���}BK�cumxh#�Ͻ���a-�A�ۚ^�B�.������Ia�
�N'�m���.E�t�t�z^�i"8�Hj���/��w�lp}I����)p�/�R)�<�-��<����c�{F)�ә�/�YM����u�8���;X�=��m:a}���v\�F�C�yo�ă�:�ϛ@��G?R�e	2yx�b�\P�����s,~q�h�����:����q�˺c�N&{��60�{J�#Q�j��Q+6B��t`�Q&���+ňtT�X��H�|�RC$�̫]QdD�ij��2������׿��~u +^� ?�x�B�������@���O��w�i~B�T(��9�g��lb�Mu���~ّ�+�N�s���5#��-�,�:'Gn�=j���.�i���h`��o)r:`����e��N�.ݚW���u%����1���.݈���[��w����e�#�g�)P�P�l5u���]���$�Y���耗ɡ��j��%-��C�U��X�J8� [�e�9�#1; � }�B�]/�a��<v�����i��(y�<��՝0Ԡ��jC����b.��;�&y�<,�5�4Ql�m�R�|�S@Y*��k<>y�SI�<s�{b�س^3R�XE��`�$�6�@�ש5v���(�.��X�8F�����(,��>86F�zO�HkV@6�6�<"�N,���C�<��i3��lpyc�p0LF�
�}K�ͼX�,+0#]>0�K1��"0NC�����^�}͘&hN.�7І�~O�r�g
1)�޾��`����;I�3����
�*W��#�'���kn�h��(cE��Mp�����!�&�M=X�hqۑs���p�v�E|�v��n��#G&����@��3WJ�R�H(U�u=�dEU[����u��b�EZ9/˄=%Lމk�M�~DT4���s���=��F+\�Vs�J9-�Z��Wm09�X

8Q��D���@�pk@��F2Y �
*�Kxx�������_��t�O���Z �|(|��� ��9g���'�SUp0U�%�"���?^��H��h�Χ��d='�&%�b���f�p�NnF���n�	���
�i$r��{(/������a���8����}<(� �%����$E/�g���0�A�۶c
I @�W�����	��q�8��\N�����\1Z�(4�_	b)�Y����g�Ѹ��d��F���̘�V�܅tߧ�sD+��y�hM��ݗ+g��FZ�	�8��|� �ο��;��x�'�u�B� #{(IZ�g����2��[2�b� �bd����;��ɴ�c{ϱh<d>|K^��yS4X9�>��m+��ۧ��rq���s��7N7Ji�
b��Z��3%��Jnx��ۖiF��A#G���k3򺻸�~˸<Z����P
8?�bi�$������E���^��?W��Qip��f,'����FQ��[B-�Ծ�p����bC�U *C��-#uDQ�{F+��
舔�Ͼ�T`�smׁ;��am���8
��597\_XtQg"J|)�J��GP�qΓ�k_5�u�&���".܏(�o�Ra�%���/c��Dħ�ƻ���FH�@Dͦ ���ch˵�t�J��RK��}1��<3d�pB�5EN�Ƨ� �
H�@ZI� Onؘ��U���o�/���U��GQ �������C��L_�0�ZkMU�I3�B��_�J�N�0�ڡ��]�xck��Ƥ-��(����8L6�o�:H%#��R3r+"�+�%�2��`/Skr-(B�3Za�Zh�U<�fXc0Y���5x���nh8O�)p��^�G^O$�䓷8R��=Ns��B�/[�L�kL��`�O�Qr��b���J�_�AWB�3�Lh�S|����
Jv�Mhh���4��?U�ɭ6`�x�1��V�o	��ݴ�<���z�Ԋ���A71��lC��3;kk�`��}���c�	É�nc���`p����`�@?�N\K�u�q쒌U#֕�m��޸�(8[��7ǽ����bIƓU�s�?�1��ǐ��uMxx������hEA����E��-����ɒ)�/o�yX����`XT:*��l�o{pZҀ�^$E�>{?�t�g)����YX����}�hX�kAM�G�}K�V&~n�Xy�G�Q�חD¦R��{�s���$)LV&0,�.��a<h�����ϋ�4S�5������Á�v<>x,��ǏǸ���+�ZN׬�nV=瀟��~R���9�{h�p�*��-��U�R���Z�8��4��co-j�8b�y�J�����8�a Դ��A6����5��'4�-�M�\�9�vDxk$6��sQ���	c�`5��J�����4Nڏ�+U>�kk0P�"�n `<����zW��"s`C�C8��?�	@������������?{��f�z��$���
,4�vC� �d8���@IX�|!�1����[ړS.���6+d5ПD�z�^��hNްK��ԏ\��t�0`�u��y
XB�j^��l��Fr�z��)"���i�Z��=y�#��ev�"�N�k�I�^Ş�:p�A��A�f���X��ϴ�K`�-��/?;�mm��%�ֆ7OLE��it��d�7�z�y�7�LN��}��L.��җ�X�ȑ��V��	H�82���x�#���B�su�v���[��G����N�^i� pղ���R�FL���z��''0@�3G���׍����9����z��d0�,���̓�C�ӣ����x�Z ԝ�\%T��|aX��I����`9,G�a���*�vj:��km��`qu�X�����^&Th�"�+��憰4�*8�f)�bp�uO�0Q��´������:�%4�6�k��`Y,~��U�ׄ��4��
�:�(%NFZk�.+%q��d�k��e%�}�-c��81*�}g����TD�`�x�SC��4N��mOp�� ��㕔�A�ޞ��O&�\{��a�p���Ɏ5X�EkseH�z�d��i��w�f�xPD8�?�� �$��q�mHսhQ@Stau.@l���a��T��쳇����_�"��������c/ ��?�����|�W��g��1ơ�A��J�"�c���7`'�[�l�5�Ӂ�&!�5K|��d�qH���!���o��wƲS09Z�����e�j�|����'N���Ka����K��Ԃ���6�#%<�xgp�V�K�-\[��������3ɏ�#���pc�ϳ�Ӄڸ�[Q��A��~dq)�9�R%�Tk�f�)P�������k�v�!|�c�>�v^��Jq�i�8'�0}���?P2��_�#u;<�T��V?��z�eX"S�p���}g+ A�B�Q�~+6�e1#�~99�	+��A`=\3��� ���5c�%��]д�LN}��t�}4��� 5s��g�{�W?�i�;X�X�q�5��/�	�J�M:sz�o/Y�|lgS�����&������!9��|Vl@˛81r�!qz��_3����
}�Q��嵺]�L34���؁����Lb�g��.��q00M�� ��&.��g��w��"��!�>�U��~��U��k��s��N�l2-�������7o�a�U������7�Z����w�����m�~�pO&̹b�~d̓tt�y�c���e ��) [,bO�Ck27������G�\�p�p�y_���e�e���>�����%ͽ�d��%�7c���rj��@6J��@Rc�Ձ���Z��15�΀X|{��@=:I
�����?��zб�?�{���}������'_���ִ�����,6@� %y� �~��]?$�7��d�Հ�L�%v�ZY�2s����q��'rfv�Vw�}�7���؅n�1���7 *�R���ֆXA�<OB��؎'���(9�@��&Π'���7��B��𮃴�G�NF�9Wx���1a;��$>�����Q���
�'�#	9�<{L�C۞(�p�	kMK� �|HR��nLx�w>A���)�Re���8���@�]��� �7�����_�\�w:�g7�24�1q��(A9־b���"&�覙��ָwnX�{\q4�]��BC�L�˹���-�=c9Y,��i�Y(E���
A�Z��S�2������{��4B�8�
�4�$VK`�Z��"�8��$�ן�|����/�8d���J0F�O騸>'���k\��9ņ�ō	F:8���ӭA4������b^�����H 74��������R��e���Їĝj��7��C/RWA�3�3)Q+q�Ɓ�����w�!)�b����~�$8�=���2��QO����9��8���JgOe=�/���4K��!;�B)jz �.���}����4A�eolf�` c֘���{�d�!{�BɅ ���g����zCmVnM&�l�:���4��6p�M�0�+c@5u��ӯ��_������
�O��O��i����/��T5�48�7�u���H�t�N�I;P$�� Fv�od�-���!
�J��A,	�VĒ��7G���G,ET��g���=�18���4@8yϛ�q�>��OS@*e�nz~��-fϽܑ$�Ò�g�*V�l��-��XUǔ1y?,I}�]+cx����	"��z��������Ɨ١L��r��+�Ja�,��2�ߎ�.'�˙#B��B����(xGd����PP��Z�C�X>��8` �|�ȹ�ym����������k-�C��G�Ws��l��۽���4>���f���yY,���1َ��c��N�bn׌}%-n[��|����B�h��_M��`H�|�5^>&�@_�1�C�'���E�XH�;(:�f��Ǆ�����dq�(��Z�:��QY�ĝ�"w�د����k��d�PT��'Z���r��_mP�� �5�&�y	��������3���_�4�5���Q(���vG�5Ωa:�޷�,D�i�x�~#]�vK��#}r]~�_�p�&�`Tį1��-��[�X����d�"�ֹ��3޽]��{[)q���i������}����D}@J�D�?����"W�j
�R�4㲃���#�_�c���1������0���;Ĕ�B�[Jx{9	R� 漋����(�O4 8	u֎���hU,`�t�#��X$�����| H������4���\ (|?������/�����t�ު�N�*V�A3�W5�k�؅Z���!h�4���UL��¿���N���?a�I ?�8�ʁ�'1���XM2�!K�9x�����Jk�1�������`T�B�j���[V��D^A�癘ϔ_�}��,�G?�8*N�b���h�g�F�)�tV���Ng����vR�t�A
�n��Կo?��,�"
*����� *�$�鑌���,�r���
G��PXXJ��/a�(Xcy��X�_�qd
�Ğ��s������0��x��Հ���I� ��*��k]�{.�Օ @��M윝'��H�Yet�B�ZmC$yy�(p�e�
<� ���a�֢���Zk�B˚5	���hvoPT�/g�;fv��8
�S��L*T������nC�2:��b��1�F�x��$$��"v�e&ם	�9V
�m�H"`�bp,С��
c�!*0�p�XŃ;Py�\Yg��� YK�B��� �k D?Y�Y(����5�>Sg!����K�B����i�fFn()ps*X7�.\!lG�)��P�cf'/T�R��f�!�צ�Z ��"|�����ȑY�r�F��i
3�aG��X6O    IDATJP����
A��5G�%���U)"��0��o��_� Z���b��f���]5�RU��خ�/��~	 �N����c/ ,^����߾=��<M�:��fMS�Ǡ�${{˽Qk#�ZC!���f]��-N6�)ZV�6X����U%�䨨���R�d�ԑ҈ĭ�Jhgf�q?l)�++����J�H�Ӆ�b)co��L�~m8r�,�B

K���H�G�������MD�F�D���[�5Z�Z%X'vP�]t]�@t^�� N����޻�ږ��]���s����QU����\�<�P0H4HH(B�XX���$�;�D4 D�[D'�@i�@|�u|�֭:g��Zs�ߛ��ιO]���*��Q=�9{��\��}��c�X'�s̸��Z��t��Z��P�F��)
�2����`�;����T|��3����}*b��_D�?MV!�9G���=}�uuĕ��^��֥28H��q�ι594A��<L���0}O)z��Lq,����w�.�L��&0�B�Cg�0�m�WjI�~}m��<�[N���`�	����D�I"v5���<e��m	��B����D8�mί=�RQ�b�*m(��ǁ�\�G�i�LZw�Q:G�FKV�Vƒ#@m��tr�]!������ $����_�eRd��p0�+��ޒ�`4�[�������DzaoD({�%����}�@[�q�z��K�D�*bV&=��D�ȴG�(���.�y�8�{�N�%!'ϕ��(�|��x�8M)3j����v��I�]�I�,��VYٵ���y�H�T���Ԡ!p0��m�F�Y��Q{Cp^%��
���W������1 j��xp�z�"���	�?i���6��u[]* 
͠D����w��4|���_�`��o����3?����?;�p���v+]���78���)�3����ڴ��+@��;�T��8hh��ݚV�'!
:mv��7\-l^�\n)������G�q]Wl��-�o!:�B�f�AلB�⺬OzB\�38�|u@���~`�1Ḭbž��� K���u�j��$�p>���p=���K�����k��ʠdZ��Po:����"�����>�>�4O�نV�W8������r���]|�M�PzߣRl�q�&�ʐ���wVc::X��y�?]�l�&첖B@k!��]n��Q��^z���w�|�Y�6ȩ�xt��t�+�|�w�����?#>��H��|+,F��t�X���z���<��?����V�%Ln7�����I�pB���{�ay wXϢ�U �^�FNX(E����Q�)�LNi�8��S����w�$����n��6y�%�"�܂s��
�!b��}Q�* ��0_�[F\8R?�r,~���#�WX���� $d��x��HG@.w�>�x�	;���ny�k�bۅ� ��.�����U�X~N��9W�ۊ��R0�,ڰߘF
}c6�k�8X\�$�N���o���s��,눆%ѫo���Q�"\�C,��ѻpkv��}�H�������. N�x�믊���ڞ`�AAߣۻ� z�:ť~�{��_xY�3�U. � ��'���տ��o����Z��)�����o{�_)*�|)����\���W�����Ϯ�*�`���=���6��c�󺦼�g18��y��"�]�yq]W�ݍ��h+����56�������+����m�K�*����o��9c�	�s	j� x�9f�b��u�,�\�	o��MJ�^���1�ݳ��۶k�ݹ�������49*�e�w��X4s�B���K�mN{��E�o���C)K܄OjW�@��������z:��)�{��i˵Ok�P�����,}�0+ L�;',���:O�]��J�4Za���
�\1,y r����e-���h�A���Ҡ�@�s�|+<�A�Z��2gN�[�@��=�'�,~`�O i} ��k����H&�L^RbQg���.��2�&����X�9���� ��TA�8.��
����00�$����U����P�f��]��d1N���	Z1� ��\��as]�T���;�z rDa8Y|�-�t"��)����.	
����6b(HM�1y�qZ`D4G7��7�J�o��s�x[R��x`��f��r8��Ё��*.�M�v�������Õ�+��R@����j��$������a<omd�X)�K�jbC̭��ѻ�J�d֬�= E�BS��v��a�P������&�����~��٧?�>^� ��� ����������'�c���w�o9�Q��=r�`�k���S�Ķ�hOhE c'
�77�*[tp0$�Ś��(Z tH�mwF+�ΓN�����h"0砕� }��4��+�q�7���Z�x�;o�Y� � ��� 7��8*(�s��oL�u8��\+v�L"lb��s��1�=�sۡ/�����ɠ$����M�_�wF:�%�=�W��\i��5�zM8�<|�r�2eNk�6tk)M�$|�J� X%����`��n�k62��t`>;)v�t�F��%K������P���7��%����Ȅ�V�H��;s�L���r�R�t<?��>��.�k�rc���l��.�t���5?Ѽ)6��%�F�0�+&���e��=� �D�u�����y[�X�D�op{��#�����ŒXKk�(�5�{Zi��c�R�-����p�P�9����J<R�̶� �^�]�8�*ƃ��>	�V��'	��QD8La4x|���p�f�Da��,▹�B�Y<�|�6��s��L��I� c�@�������s�$8zߵ>�w������|e�� l���D���N�7�O����a�v|�E���Z�Ut
��a�EĿJ�=�O)M��q>�P
�$A�0�F3�@��t �Yۊ�.���&�l�Mh��k����TG�K~�����	PE�P@U�'Ҍ6j[�5h����r�o��20�k��* 
 �  ��7_��s>Oorᇤ�]|����j�4�������h��w�4֚�kE�����8p���J�[i��0� �gno{�[\q7�PP��ѾF����[L��J�� �58m�J��֕Cą\X�+a��v��m� ��g���`s���I�f�02Zs��(|� 4��n��S���q$�'&���S@�n��m����>� �+_ֲ���"�VS�/d.��}�����a��]�ם7�-Y���-N��{Z)�| �F�˅��W��'ٳ#�nײ[�z뀦G?Ɨ��֤׵���F��zG
ǵ�6��`g#��o�3J"_~]�t��bM�+�A��"�,�m��>���p� ��;���y��kak�b�VæȉHܸ4ĵ��M�x8Z@Q?��+��'\�
�yA$k�G���VA�|P�o�t����D���+ ���D��#���A"��1�,E�#>�`9��_�*EO�(��)vą�a4R	J��@��r+pN���Ξ镼fX�a�C��J�8L�2x�a��O�s'\�y�VO�w���y�)�8��x�M��AW��vgXlB�ۜ�xm��݉� x�c���E>$�O�$��;Zj[�(�b�֩������4X�{i���K����W�z;�
�%xJ�-[�1��:8m��r�K�VzCWVm��twyx�����=��t��5�Z l�� �x�����w����k�������v�PXk���(�2���V��΋s)�l�@M�Zi�^qpJ/B���" �j�[J�r g�i�pF�)��0�JѰ]�J+��a��5"W��Љ޴Z�0 �h�$�J*�(�T�sK�iS�}P��#<�Yx�a�"8"��Q�|��ۮCx|^(
� :mA�P�� i;̍�{�/o*%WA��R�y��6���l�	W��1YP���l���T��y�>�[��u� 0�iz�Go��d��q/�p��DAk`Y����5�]3��8�����K.���U����g��Z�֊ab&��bj��d����0t�7��e�b,9A�$�9�j�����s��?PѮ5G�)����T����\�WVt����g<��e����Z�P��f��ޑFxb�b��c�L�C�>u	�À��w[��TK5N|�Z2�LJb�/�EN}����HB����Pbw���e(�$FhP�(��ʰ�k0���[>�7����8,��\my�k�E
St���V�{,�uzw�o0/�{}�wքs�ߎ	}Z+)�M����1X�L8SL��0K,���W���e�o�pb�a�x�.�lx+�!�T��v�����;��9��ϐ��(�^3���Z�krk8� �f ւ
��Zhm������ⴐ��DZEEo�%���������?� �`��Z
����@�A�O�ķ^�|)���'C"�4��}�O�XW�bԊ���y	F���5����o�a�~��RVv��$���<�d��֔P{G.y���ދ5��8�l�2g���ڦ~�[� aAF��{�e��8������0����yI��u���FR��-U�wVVJ�?~߷���{9�2�^R�2����wmE��@�ZŊ��a&]l���hY7O>��*g�
�NQ��(�]�P9m4��1V��,Q����6��N��;.��.T(�������7)4�<�ށ��b8pt�s��k���p���s}���w!�S�S�鴉�4�@O~)O�����͏�`�p�bC/] Ja`����󊯙ƃ�8i��B@LJ�Y R[q�%+�`�L�K�RӉ���<_2�H���
�މ��Ha�kG�$��q�w�ou�2� Jҟ��{}s���(\�Z��r�+�G�ue1�δ.�h;��q�ĵ� ��""�*Q�F3��M��%�?q@+��S�咘�H��Y�c�R�b#C�`_OeAL����z�5�n	��s��t�Px�0sV�5W�L�ɲ>pZ�4���	�[��&��hN�טg
�!MOl���O0F���JmQf�E7��E�O��E�(c��I���������<��e��z��݅�TtIf�[*��.Kg���ەR����B�4�\VN��?�����w���/��q�G��* >v��䷾���z�8��ͫ_��z N���4��[z�Q[�Czh3�;��k��
�XL�Lr�;#��!�|��ߣ�A�|����Z�N}�k�.����X���i��f���ٯ[c���{C��V�ZQ�W+�9]T��j޼J�$>˴B�×�>��[��p��l��0��EC���� ^���Q�u\E�T0x+7�-(�d���9���m�q�+W���{�X���t�U�|7{(�&f:��x�)��+�k-Laۜ�Zi;z$�/K��04&�u�����t�Brj������`�ꭧ�oS��ĝ��m��P��jg�?�]K���%C+�������UC",�vМ`��G�9��d�' ��b��]�������?˄#��n�|'H��:�`�T�e�X�Bq�����'�� ��wd��/w!�-2U8LDU�<>�����0ґq���B��K� &��$:��"�A)��[�*v��}�1m����6�����ո������!<?&�mrG�@?A\��@��8:m~כ@�����b�����%���EG�50)Uܖ�_��ɓ��5E]v���8\�#�W������wȭ��d�~)�3Z����1$L���[\oW����
Ј�쫄�{��=�h�)������JoB
����H *�JD�z��?��Ę>L\�e����Z �A��;���۟�F� ��@��"�� B���)��/i�Ӗ'ԋK �y��k�t>I�[2}��ѫ�%=-��k��}�o$j��$��0���Y�]|�_U��l�cM����9)ؕ�͗��E .]F�1cSf� ӄm��e����q
������\�⍢<�w�s*�Q��e�znK�>Y�ic8�ި�9��ේ�������Mlw�t�:-s�	�h��t���e!�Ek����{%G�����9��tG� P�;/>�?�R0L�,���ʥ8q[O@)�RW3_�7E9���ʢ�/��A�J`���N�}�Jx��5�5�Mw ��X8�"��x�!�-u	9Q���r�� C}��O�ڂ�8UIK������������9��aC�J~��!�f/bץR����������a��̃�p�G^kZ<k�X����Dj������	�dB% ��J��Á]xp8�|y,���P�W:��rf ���ݫ���p��R�0	�/徿&���a]X�ŕ���Z�Xce�R���k\�	���z6F�8E�u��g��K�Ts# *�=����3�g2�߃}���m��;1��%���6'����<"�ܨΒ�W��,�1�ޤ`(�_in�e:�:�J)ð��	Ƣ��)�$�j��F�"�k�����)�n" �ț���^�{�w����~J�3� �`�|���.�� ��g����<�j��Êr�(��,����VV8ew
��A�Љ����0O+��_���b塯��q��ۘ���\�wơH��1*�c���}t~��������=}�h��\E-�w��3k�Ϻ.�3��J���0�cMe�)�0�	���;;�u �.�`e��}S�x�΢�&�N�m���a�1��C�6�S�,6��2 �;v)C����i�Z�����?�J?���b,�#
L�;# �4I JݖHl���������+�4��z1�Ď�pb�[\��mC^<��-c�y ���4��5)$ЀRX��`����קHA�t��+�&N���U����Ao�����D��2g���Zk�J<o��m���)��Rb� :��8��*<^3��@����~�b:�Ꝏ Nx�ͷ�?Wt�����7aņ�����Gb����X�q8qE���n���K��P)�}��!:�߿t(�q����\p�g��f���%!��9�.��s���):*���y�M�B�s�{Z=S�`t��LB�6��+��!x���a^x�W��	◶²�����8�����a��:�J�J(�e�0�ŷ��`蜤-1!8�e	Eڄ��r�O��"�9 ����e��=*(�̭׮y��*E�ڐ�*��mͲ�:��m ���Ԉ^�����?s�?u � �x�G����/M ~�;��״�ZU	��$�uV�NE�H�h�ک�w�J���Ec���~.+nD0܍7�/*��2Y��Bh��wi��L���Za��ZpL!�u��z�X��G��{��wp ��Q�S�i ��do��6d�F��w
^p��m+���[mXs��#���UALN��8��|mQ��TܝD���^�#��d�%;BL6e}.�����+��kbh�L_b�Sk�����yv��i%E�ո\zW����W��J)�T
Q�-N�
񵫝�p�k��G�i�V�(�f�ǼOpƃ�G�a4�N��@��|:�4^���MB�m�+��f̮�T����~�Rp�������^HY�!VY08�� �7���2�`�՗b@�$�B�=��|��ڰ��M'���]�4�֎�[A�|��\�R�핧;��7~�`ĕ�}�kh�q{.XE�	�k��}�|-Xnd!��Z�XB��X��`�x�D_
���E�d�2�!נ6�<zcW|<��X��X:!HӔ�8��6E���O�5��2!��?�d��D�i)�0�KF.�UǑ$*��Z�.�֚I��V[ǚ�0�2mu�E�r[�����KJ����&�}��(�vD�)<���Ck��
:�d�]Ё�i�Ѩ����@��4�l
]�?�Fu�X&�e��w��e��/�lB����W� ���{ o|�S�|�g�3����{��)�v��v75qg�֚�{���X8e��_��^�.���{C핓焧�08��/�    IDATg8��rPZC[�3���6���嫰}8_�.
��}� K$Xc��hM�5�R�g����"}��J�P�(�2���8���v��4x��.(��RX�.�xV�^2�s���_)���>�a�Uj���5�fF�j��nE��<d�38��d�NG��F%<LNn�}W�Ӻ�i�6��Z��XȥT�����Q��wЌ5�s-G��(��v����4;:�8���ٝNr���<AT�/�T+��7Q[J~�8�-nvn�2)p��ƅQʽw�kL'�4�P��}��55	Nk��(�G���蝶C+�a%����	�W��X]��o.0�h�1�X�;�7�e���o�U��+�A�z�@�(�dAQ
�}���cE����s�6`y.0���}c�����M�եs'����Q�_)�t�3Eu.h����I���/�vH���ل���߱��hd�Qw�89Y�@>3|�>pe��)ӖYK�<STjE���h�p�e^'��!8~���)�v�J�9s_[��%s�#S��q���AU
׍�'QY+bw��Zww�	�FxK�q8��v�]�&�������#\�Įm{�WUA���������9K�S��Մ������R�!8�q@��������U- h� @� �����?m չ�7���W��� 5]`��j��
������*�mQ0A;�9�zTɡ�C�~$�s�pJ�W(����RS���a�<��z��w��V���@�E�Ȯ���;tٙY�%.���01�,$�Ji�b<J�p�4gnkB�L�ۊBr���=	zE����o>�i�8�N~>w�c���a�$�a�eo�+{��;I*3F�,�rk5֭+������XdT�T`����p����f����̝��иuyα ڻ�@��4YhCa�����^���}��5q��O	VF��jz�SC�$�Y��(� �_&Q��r��B��0,�9Gv9 G�R��l�>�7�h��:_+r�A�d"B�|� �$t����ca��<tZ󌒂{�6덝�t�{����S�q,0��~a4X����C,j�N�n +c��mla�ذ�!h<_
�~�T_+n��/~1,N��	x.P�96�K��N�E@3`���D��R�p�������	A��M�����h�ir�x%����o �3���y89��L��ʆ�B��{�%��tb�Og�_��hk��ӌZ�	����U��?
�4Z����=hC~^V�x��xgJfEp�����Ç@'kgq���$	�قz�L�` �4rg�(��q�	��u����ߜ]Zlސu�&��g���\"Z���w�����/���m����� ?�O ~�'���Rڶ����������{V3e��Ś8RR�p�? ����9m0Xℝ�U����^��Λ��fx��͵"vrA(�@��۪����jO		�Nkc^R{�eYQk�]O,v��1�>/�E��a?d������l;�����j�q���N`�����Tq:
��,]U#�`�{:����ة29��?^bFʲ��4�c�$��`K����J��[q����}�ʡw%��F D�.����F[����U�=ma�	Q��}�E�^�JF���s��hw::��4��D����=c>��6 �tܿ��#���Y�F����V X�g��h[?re2J4_2jf��Z|�M28FF�O'Z��+��P�͏'�f����ڧZ�j����kE)�5M
/���ڰ\+����Z+@u��p���^i����|�Nw�猒:�^y�_	j95�������;&	7�K���p���^֥��o��4c��~�zP��E��?��'��b�g?X�"����g/�#����}�)�)Dk��5@m��='o�V:�ђ\X���F2�i��.�v�;��b�*׈&*���J�3FB��ɒ�E����ɚʞ�q]� 7��jh���R*㽍F,oNG�䭕��&�f �h0���*��r���_k�h�<�F!�*�)����	��tvA1���(���*Z����|�ws.�
�ǉ�_�L��b���!@[��?���R����4op��Ý[�`�m�Xm���v�(r��ti�8��C�k��ҧ�-�
s� �[�9^�|��u
�$�o��Z�Ɗ_�W���<�.��S��U��N���j�nWkb6Kk;\cR���R*Vo�JzG�e��c��u0h���:fQ�=lĖgp<�,Vk� ��-���x\k�7��6�Y�����͛[��7^�C�����ۑ�y���\	V�˲��S�T+���T��,�ɒ_���;�i%(�,��3��;��'ɑߡ3Jc:q��,湢f�~��q���@����e���<U�92�>IX �+	�H|�(�ہ=���(b+�R�󺑱�n"vv��j	M*������$���0��t�s�����r+X�&ׂ0��sD�g����6('a�3L���d����IN��}qM��S*�r�o�ƺ0L臿�"��;ȉ�ۏ��k�Ϲ���i�x�EĻ�]e�x��=�0|z Dl]�d���1MnυpA��	�ˍ��$������!����u)����(����%�x���4��^�ֵ�g�1��@��^ròf�Ti*ة[�0ǂ��f��ϊ37�/I��T\ׄɓ7��ϼ5����ǜ�6XrA�˶(�Bi�s �6������trK'��8mr�1o ��B�]�p�R���l�����{����� ���׮ ����?��� |��v�.B�A+Ėw�_j^y�V���`w�-a��T�����׹��h$��t?P���F���?9�i*����b�Z�=/��	H�D�˨��s�5�s���1M#��p"��m��-���r�i
{ H���m��-Bv~"ldC�[�E��0�N2�)��"x��q��$�M����W������JCp�a��~���&�5�È�b�U����2��κ�`QP�E���p�X��Fx8��Z��ψ��͛w�=.i��B��XK[}���9S� ���6<鐡�{���]�~�6��O1����%�.u nI��0���� ];h<�O��a���p�9�p�Q˦R��vc��bC|_q|e����:ƣ�ʾ��e	�X�w�E|�&��2�����R+q{,��B���ŧ�³���%��8�Tf[pL͢����	>�Ůڈ%n0����^�3�v�-�������y�����2'���0�7E���h���p4xz_PkųJ�YVC�G�2W�<?f���b�r�0�!�p�U�g��_��������Ĩbõ�?Zp����Û�|��쳄i�ȩ"F�@�ٵ5��]-9SK���s�ZC�3�fȏ5�M�EL�%�p���$��˗ۊA��P�\n�K�p��r�T�w6)W2X��%p�4���Z�)Q���:@)c8�uBn�����/�Ŀ����p�A�MRn[0:�]�w�r�S\�zۏt�5��l��_/�f����Wu�Y ?� �?��o�(mK�P�@2�	�Q�ΨHt�`�	Xj����$SP��[���@�y�n��R�"�s�`)��xc)�ъ��h[28����Z\0S��& C��<#+j
�&��8x��2S�5H�p�F�Qk�4Ai��!�	��j�5[
;Ĕ�����{�f��t��a1�7�W���R���)�SR��N?�
}:�1�5��0M'�����P��oK��י{X-���%�8�B!�<����X�U8��⽑K���qrp�+	�Z�,,t�0�m��<g�׹"��H�2W��=���qyJ�]��B��f'ۺ��=�z����V��w[���z�U��d��hܙo����d ɍP�o�4�����9����Bd<��W�%��.��X�0�����JgJ�R� 4r�L�B�m�q�5 �>�+��!nI��.��s��`om���́�S����" %cH0|�"�X���7܆�6�N�Y���k����0(�U��R��W����G�3� >��H|�Ly��_�5|��ehI�����">�s������(%~�BxY�]�2�pz�x�v���O��ahC1�m.8�='/s�԰m�6^����}�G�B�%Җ(S�UR6^[K.�b�;{d
���ک�W
Kʸ;�����y�,<E�<�[J�sxǸm�����&���~߁�o���������ߢk �gn�?D�M���CK0R˨5���|�w~��x�/GG|M������C|�~i�Tk�����w&��``�;�J�Wh�=����j�j`4�;�.�X���f��; �!���m�ׯ9���8���ͺ792��p�G�qU����l���׊Z�<z/�?`+r�8���q���\P���
�\*�g�Gp�wYxK���q@�G*rsq��X�D�@�n�x��AP�|��S+��v6,,D�({[����Z��� k��K�*�;�����>��&If<<(d�c�6
�>ob�\��}j}�D�B��2��Bbod�;QVߤ�<	yY7����pe��4�X��`v��9�@�_$v^F�x&�����˵Q�+mbo?	��ՀwJ���x���m��q��(x�ס��!�䊻�<r�aj�ػ�9/��[(@i*O�2���tr��q�eB���F��h`�c+�R;�#��Hs����ͫ=J��p4��`8Xh(鄡�0�����9��>��s�6��F�ԐV^N�����t�py���\�X1L�3G��i��4�
�\w�A-$#ƥJ ��V,t<9|�''ĵBA�tv�/���W~m��&� ���K	
��0(c"��9��0�%Ng�O���x�n�s
)��h�BN����{�FM�n �+�F�B�����n�Y��5��m�B*E|�WG9��q�<��a�D};�q?h���P����$���u�Ӽ����q@����f���j������7����_�~���wI\o(2��M
(��Ҫ#!U9��4�ǧ _�	�Wu�����zg'����������_�}_�z�7��j㰔ț�v 4**,J��J��O�a�D�vtL. �a;X�w�״���\+��q�>\�Q:��Kam�qw���y���K'oS�.����9�<8����cMKʘ�?�p$��i� HSCQ��!�"]0E?�[D�S�G������[���3�=�wFD�cp,Ȫ| �А�3�W�-��_�b,ܗj�E�w�u���v��n�LjY��nM�9��0:�$HAk�c]3��$������v16�F�Am�X�k�|�m�AR��*���Ja���@%�|��qj]�	�yɮ�<fĵ�^�!76>��+��c�p�P�W ��s��k��hq���=��� O��Ӓ]���&D&�7��-7>��eE�:̠��.@�"��\�Z��Ĭ�
�Y���	��&ٛ����1�9�6��o�<��W������㙸\(�/>K08�rȱ��er��pّn�''��`N�p��P��,N��V(~4Jw�,*|��*�~ߜ���$�0ǆ?�˿*���c��?;t#�'��0%�Hra�d���$�kc5�6�j8�����z��i�|�b2�L=J���[�8���e)0X2�
���I�w�|�����ψ�⺬8<]W��T�RF�sL�ӧ�B)����ϋWU5��3]���������: �?�~�G��W]��ǟ��Sp�� ��__��<��y�z������F�:K�(�JS�
^�.�r��5�+��y�+�X�R;cwQ�`R�����x�0�@?n���(�g���;��������C��I�����RR���[�� �b�X*��<S)��w@8N	:�_b��m��u�mM����j���(6=���!`�Y�j��<����R����(��R܈���AZ���M�� 'k5�ȟ5Z�r�x�2��.��_ޓ9 ���qŲf8oF�a0Bac��5]���3P+�.��r�,dR2�tι�+CzJ�0R5?��׹셉s<r��N��Ɇ�ݐ��+F�^��2�OD��5@b7{�X�u�C�؈�,&ֹ�ݺ�
���xG��?\�L�� 3h�Ǭ���QƼ�c���U�R
���x)�b���+�TŞ��P�W�^(�����E����,���u߿�Hk�r�w:PH�
J�ߛI�S�0i���ί���q}�$�y-�P:��9�~3P��՞�WJ�t ��
�{'�k��F4[K�Y�Lo�S���rr�}ᇁ�B�(v������/\*B�x��HA��q0��Z��-������d�Ʋr�4�v��i��b4r-X�5�u����Xbev�5"SEAa�tzl+�(�dg4�Vp�2%T�ɛ�yp�^�-�Aa��pUj�
@V�^&�#Ӗ�o_���
��o�8�a@;�WJ&

��I�U������kW|��߷؞�V<�{�p���2��L���\#���3Чd�V����OW��?yo�%#�4���>XK����)0$�K����;��@��{�����*���#f霕�:��rT�����5��*vr ����*vCg� }��"�+��M���Ĺ�+{�Fv�@�a�-'��(�A��4dz}7��zV9l��B�3Y�6����rq����	YcaT���N'���X>}иΉ���L~���g���K�92�MuR��t�Ċ�,x�����u^�{�׍�y
'���ׅaFa00��j�[o�k�Q=���R���H��S���*�
��2{~]i��o�?<~�ڣ��WJ\2�s�{�0.�c���Ht�F5n�/25��8Ň�%�&���R}�Y��[��L6�;uA���w{�v];��ė�.�� [����;�WQ����?,����A}#Ti:�������4�d�5ь�������+LG�Ý��j}�i�3�������`:Y��`�,�~��=#��������9o,\U�����
H�7o;�y檱7>7�5�H�P�΀d����Z������Ɏ�� %�c�&L(���Np�%�)ƺ�~�6��~<�1e,+�	Fs�WZ�a�8/�'r������-�K���aI\�B��I��د_�kNi�Yt��T�io������}}E�p� ��o������+;�&��	��PH�2G>\C�Z�V��$��J�oj�V�.0h�� ^�=^v��skpJ#x���ѓ֌)V"ܦ�l4]�)�a�Ź��[[�i��7s����[�%��EN��n���OL�[��
h�޳(�s�jC�y�ܭY�p�<���%��8�}O{}7q� ,t| D�O�ƌC�>P������?K�IQ��H��N��.�,��q� �X������s���|���W
���X�0�G)�&T8�YX�P�W����]�o>��1-w�+E�q��"�������o��(|#Cyֹ���I�.5�J��4|0����VY wq���y����J��=��iv�\G�ڡĳ^+�WT�WnwehKq��f�@z�wu��cF���clx�I �G2���h�����5�iF������f�Y���˭Q�H,�������F�T:�"vL�1?W�-�3Q�`�a�²T�����@+����=���+x�/��L��.���i]�[<�j����������;�8S[eX5 ×��r�ө�("Rͅ^�H]�J�/��Kix�~�4x\��R)>���ަ*��R�����8 fN�������duai�.��`%�����Ӽ�<�Ja^i+��)�ΒgrK�h�R���֚�1�����ƿ�o���?��u�7���b
��3b:`�PKBi����$n,�-�kI��N 4�<��|��a��`��(Bs4蛯hp�b0A8�
N[(hC����u����k�E)֌`��WZ�:���0��n28N#��'� ��	�YR�E����[    IDAT��*��=昑K���]�ƌv�����c��/HbV�aأ|�5�;��F�np>�ưȜ0l(x2· �?d��,�(\�.��U�֘QZg^xc������|�?�,Iz�
�V���7#�z���Y��tҏ���G� �/U�fN�`�T�o��ARkGku�PZa��ڰV�v+Xf	P	D�ޞ��P�Ͽ�L*��0��~�Q7��8Y�X�ƃDiN-��Ǉ�q�)68Kuy��Ddp\��ÍV:�_���o�:[��d����O<�o'���\v��vO?J��oC�A�vl��E���{��,3�o�k��VxH� U<���F�Bu��=��8�j ]�m���xT�T� �*�N�-�i8	�x�:#S��J!�t68�;XO��29�r����_���Y���@�_|��Z}�cpA��燌�6|�~��ix�c��RQsA�%f��R�j���;��_w�I�f����Qr�ۏG�ĕk&ND�@���"��
9�9!Y�)���a[���rM��5
�Y�Vq�:��y���-~����td���gR
�^�&"��Bn�Z�R�K��_撤LNK��(�x_��$�:��{���k�	~�?�˜Ķ��3(p���|�O��Δ5f��#�	�9�U2Zgw�a``�E�T��4�ӹ���z�\"��7<(�� t�^�Vv���p�9mQjA��L!`�������9��[��|��sFoה�rA�K����(�О$�����F�G� N� ��@LT����y�x(����q=�@U\�b�v�����q������?����c��Rv���+\o�-��$�7`Y��#���8G�J�����N��~M�����L$�VL[��"�Z��4Α6țg2_�kG��4��'G���q['?>�J��S0j��L�"�_k ��;���3��k}x�go⸇�	���1��7���r��Q��Ѫ�r��E��24gKC����U���[�����[+��%q��i���2�d #i7�U��Ef�y+�$��?�\Y(�H��;�a0����UyX*�"�y�K����#x��c�K�tt�����۳�`�V:Pz��Z��k���q�8Y���p�$�ݻמE_�+�g�������^���W�x���*J�������o�6��o�6�3�;{�2I�y��>p�Z� �G�nvh
�	��V0M|���\���;C�@L_�� O��Kŵ�ûU얜��	~�#����&��n�=��ûi �TV�U@e�mp3�5<�NY��4����{�m�Y�7�s=�����n�,��� a�&�1���B�a*Y a�����T*)(;�RĀ�D�2��P�#�	a6A(KB���8���c>����:W-AnC٥�dUu�[��9��ך��7�oh��PN�)��^��?������C�~`E��\K-�P!�����>� p� dv��%�9ׂXZ�Sk*��N[dG4���E�G��5a@�r�߹�PPsƔ"�Z�і���aB,�y����[n�X)@h�+��8Op��-	\\�b.h;NZ��(�mZ�Zc׶T�aUa��nW9�o��5�y�S��8#���q�0(�"IF��j�5/�= k�O������tT�5�����q�B����VB_�z��V��5Ezs�)��R�ai!1Ҝ���F1K~��{+d=�pr�ֻ�� X����-"-c�͖����>/H]��r�ʟ"3ڥN�;�l,������}!���"���_+�c�4p󜇂ӛ^�Z�s���)X�φh_�;� �R8�ϡ��K��GNnZ�gv����v˶o�3J*sF�9a*hz��*w##�-�%W���k7ڎ�'s�R��P �=s���yXf�a�P��Bj�tTrensX�ߎ8��C�s
�7��z��'L�@p
���$Z�q�1�SO�wN�[�q�f��~���!�������'�� xO՜�Y�DD��g��B�	9F�1�W�x�?�itޡ��߀3ZO-A�1U����	��<�i̸��y�)�,�7����u';�cr�(g��a�j�.�ٶ�0F	Ob��J�~��͢:Č��#�����B\�(�!d�E���4C�q�!g���[
�[k�"�v��a�A���/�k^��?�F�C��=�J�� U�>�~T� t���v���뛍V
U)T]a���B�QW�@zD	j�����(�`cn���7�Hu��f���Ss�@!�)*~�b^����5[{N��l�Ѻ!E��DYk$S@Ĉ�3� �ʧ�5Α���sBg=���@���9K��1c@cݪ-ƀ��FDx�R�u m}V�<��,�x�,���e�.um�/s��]�#B��o�v�2�+f��^c��̥��:����F��c�(����3�ȍb�$0��腂��p�h��S��K
���B[��X��_�q��1�'·���H��gɤ��L
a
�Ի�mYHvZ��r)^�?���3��	1f���$�G�'�V���f۰���K焟��
ib�����!߇"��2`��!�Ӹ�P2pc� ��!+�&tg�e��Ga�d��{�~K�Y<f�[Za�vgPRAӑ��D���G*'��z�_y��[U����̼�ǰ=u;\P�&�D��4����E�J�;��ɘh����ɸ���HK}�T0���{�����n��[3�����o�_*��,j.(2�ת@��ϩ 9"ǌ��g~��/�Ju����_�E�}.����ez��e�� T������4%�5oqq7��ݸ5a1�ry���F+\&y[&D�0�%�Z��%/tN�)SbѴi�������a�1��������QB��Hbj�X�"�m�:���s8Fگ9N�����x9��?��i�[����=��W�v	�\m��� u׃X <Y�o �������]�(KU�	H%��R�,�<#���t��7.�P3��r�ڭ@+��(�<�d��ub)� ��76;�1� �6���8�g��R�^�j�� �\0ƀ�3��q�s8���pVc��4΢mF���Y�:
v�P�g��qF��&Xkpb5F�(�f��}�R�8R�@Aݔ"�X���ه1�J����\����|	m+�!a�P
m�V���R��u�u��S��Cw�&���c��b�G%�An�N���rA�{>�n��}�1D�j�q�Ό��`��4��>��ל��q{�A�0���}c�o( <�*���U#��ΰ0�R��u�P}cН:	51�V�&`��C�)T�-G���g�$�)䡠=�ص
��L���M�1H�	u��&H��t�d���B<$0@(��6M�o�Χ����͙E,��5�����~W_�rv������p�\��GQ09��]J]��@�
�y��w���NN,�܊8���.訡PJ
��m!������s�s��[夿��+ �>��Z��%#͉���������!��;�8�]1�/|�'�5��mO{���YN�U�
�Q�\غ��v�q��D(֖vŻw���ZJ�p�)�4Oq��T*��(�<��lz�q�L94�U�ȳs�z��cş)$&�����&\���B$u$zfT��d��p�)������1&F�w�A\�լ�k���0����O��q�~������,��2���#���"�A <�YG 1g�C��VC!��)%�h�	��5rZ�}K�6b+���q��l��R�LQ+:�d���Ř�i����/m0o$�^)L1�R� Fq#T�C1�n%/Wk��8s����)r
i�ߏ��"�293�9b	�V��d�o�-fq
́�s��c���ZR�N��$���c��6�hX�Mh	��kH���R+����E�_]E~㔠E���=��2��4��P$�-�=R[�q�Z���	.�I�IQ)X�ǐb!���q~gF��9'�Ȗ�{�$�9��O���hW��)�Rqy#7Gi/�l{g)(ؿ^���ƉU\^�9)h�h�����l�/��I�p9e�,Ĕ�=%�Q��evƠ\���J�<���ݙCbQe�>O5��02�̓p���eQ�"ګ��)�u)$qU�)㏞�B�?󥈟���g�������i`Kܷ���&��	�Tŵk^pԴ%�BQ�1
mG��x$��4a�G\��f˓�<�s�G��h:���[���N��կjjF�#��C��?��?�O��	��q(�Q��(䵆hc'��k7I��V���l�G,���5���)�;a�v��
���Dw���V�8���ơ���c��h���h�%�C�B�=��;��q��mj�rF�:o0ń���,@餦�n�RpZ��@GwI���u���2P�_5;���o���TKJ^��?�\��2*�.�Mࣰ x�l�L����ُ�8{8�����~2� �
�F����@a��X:�1'XeWE{�d
0N���`o������98Q�*��Z����%��[-]kzﮪ�z��J�	�Y��շ�вc�RZO�]Ù�8�̾R TJ!�U���8a�QM����Ѩ��VW>w�t @a�q�
��k���R����p�K0G	5%&��Td���Lk�56�q^�;r�5�N�P'jv;
���-���gA�r�ш���%���D����S�8.�M��ߠ�h��ͮm(`k%N7�L�c��s����2���Y @,�R~F�j�C���>�(l�*��
S���9rf�]c�'x�
0܍���s-��T+J�u���sz>�S�j�B�ш��W�M�<.�D�FcsJ�AI�vT叟������ڢ�>�/�<�S���[k�'g�"F�ߐ}��S/��}B�aR��	�@��"�4F�΁w�_�vA��QR�̍�䌚j�9D\ܽ�7�ď�����vN�)�Ɨ|ʳ��x�|�3a$�0'ji�Lk��� 猀���jt�զ�@�9d�-�t')��(l6�1��/��R�݋&�v����8D��� �k&��c$x�� ��e��)�KD5�?m�<�{"ĚrA�<��V�[��ڒ���#~�g?�SoƋ^�ԭ�/y�W�M?�������Ŀ� �q�0�0�A+ >� ���g�gݼ�{��*�7��K�i��>��4h�C�t�E����WK�7s�e�t�I�(y�*�s�\�/��V<it�cNIDuU�x���O�R��!�V���<]�uC��p�i�i[9�AB���`���m��0��!��h�b9S�h���W9��Ʈ��3ͤ:˴����е���XVxȦk̣�c��q������x�"���A���B�E7A+s�Ðd������0���6=g��\�ٸ��^�L���9-�4��,u��y��5����E��@��2��^���<S�r�$ُ/�h�ĭcp�fG�z�XG�R���4׵������^e�t�����������J1ơ�ݒ�72\�S&2�
KfB�+��<
����y/C�Fć�󴎆����X)���z)��>���rpuc���i(����x`���\��c��f�����w�F���Ð����aa��B(x�k_#Nޟ��/~~
'k^�~%%���|'~�?���R�v����g�����->�7�2��%W�Tf�N1�͇Z�]dp<F4Z�CD\Ü�vh)���`��IZ& Kǉ���12'@U��L�`�ͯq�m�B�Y���o�D��$T?fD��	<�
�R2Ad��ް�Pj���$��%U�ko��ŗ��˞�=��/����?i�q���w����@���*���� �m��@�WK�A]�s����5���)�T;��"�?�RIȅWF���J�2���>�rx�,E���_�H�`̈́�CJ_���pC��I�h�f��8G\i�i�]m8��YJ��
����}�%���=��uޯ��pǦmV&x�X��зn��s!կoiQB%�/%�_��:9��I�n���Ʀkp�k�اo-��u2&����%��b#B�Ҙ0G�y�)!D��y�'��i3�9c�y}�r�<H��������b��6[����gѰ@a*b]���~<&���!.YJ��X<��v'�X�
h���8z�W=����c�����wL�K�z��*j��\�[�i8oP!/�S���V���1LǄ�'"��;9CNy,���h7t,	���%����٨�py+R]�Ș���Pp<O�����X>��/|��I���8\D�G����A�k�;K{���N����i����;	U�r������u�_�!���ș���PKB�o����z�����;����v}��e�Y���j��<O��q }ӊ(uw�=q��N�y,�g����3�5����1���Z+��h���aZ]+�Ly�S)���8�.��q�Z����cA?�	]cS�0��(�TsQnl�����E�ث�ō�k�cD�q��a�B�m�4���3�t-4j-x�׽�Ou�������d{�>h v : [�x�C��6��ɍ���ᥕ�T3��9�Ԃ�4b�0 O6JT֊���D�lL)�h�X2����8c����H찖�^���}2��&�t���6c7`�5G(��1zXA�u� ��_@0O�X�8��澠y��M'z2�l7���yz��$� �s��̑�e��t ����ƹ�<�E�:�#U�����x{��x)L���8P�_+O��E�m����5ș���ca�36[�k�Z�c�s�)y�'ֶc˿T��Tc���F��zÍs��E�}���(��b;}<&�����PF�@B�������"�D��]w�imK��;���T�tA\+��e䥮ĉ)���O}V :�(ı��vD�1hN-J(�G9�I��%���*��2B;j(���02% |�KQ����Y*�ݯ�ݿ������5���Y����<d4�81$�7�w#RbHUI���M��Dˣ_�jn��_�P(��f��K��s�*Fg����<��˿]5�+� 	8;i��A�\�=NN�SA��f����G`)��9��ڐ��S�p���*��
���n��NI^�#�{��T���+t� 9K�s�d��R1��Ä��c��I���Y�gLޑ4���b&]t�|�s����Q�Yg$�<�[Q��W)g�hU1��������텢i���_��G������@���4���\�ȹ�Eѿlj����BW�Hk�8��c���-6�����S���	Ce�Ǎ���6��IH8�;K���G�E*C���lq*S�i<��C�B���s3��J1�C)0`r8��<B��:�bʘs�0.@q��[�y��iM�;�[N��� !��1�-����0�sd�����Q��!d,Bj�+O%�s���؈x�9E0����<�޲��Ӭ�T�k��'�R(d2�pZ�x�s�$�)1o~�(��ޮ:��J3NC[���v�����3�)s�<R�9{<�fLB)�1�z�]��Z�Ý�yH��`{fqr�c�e��I~�����Tf.��5�N,\�p|�].c�ݙ��A���b��L���=�a((�@�͉����כ�i�a�x��1�鯼��	��c�T/i������>�+�I�R�v���=ﯜ+��Ә$�X�p7���3����9���b�3x�׼�_��C��ϯ愚2J
��7�	��뿎�Y�z�mC�ݶ�h��g�3��
��@kb�3~�C�;۰�o�����\���F�Yq�, E��v�;F���ܙE�e�@�����ck�E�0 c\c����1�>i��sZ���b��0�9�mǂ�0�DWv\J��f�X��N�9��̵�V����K��9��Z��H%���ɂ)�����4MO��i���;����" ~����dE��=�q $�W�(�P�z*�J��_�*��4���%a.�� ���ӈ����]�0    IDAT�+���XB)J���JB�,>B��1�CD��ߐ"� ����6��'b�v]'�ڌ�"Z�0�3�)�l�$��ݦ�"������\�Ex��\�qǉ߯Tf ��b�6��b��G;�}C�])��b��Ƣmg���i��HhP�-m��(Q	�Ώ���b�)����Z��� �*)*�C�a��3�BR_�\�ϓ������� ��1c �!�Ɠ3p8D8�װ���
I���o4�� ڎ-�gll�h��p�jT���`s��r�T�3���[r��2a3�Nc:����ϲ�ZfL�!!E��yb׃'U^VD�e&��p�q��1\&�,�
;� θU��Č��b)+6[�vc&n�^�����l�x�w��BRK}��?E!��=~�yG�BexS�Ӗ�#Z�n:lv��#  6'7^�M�$"��r�������?��?�?���C�	j���ƣ�}��G���U��x8�� �glO�:��cA�I��xt�sh���_����l{�}�ْW�6����@w϶w�u��9҆j����ȷ�6�άE~U<( �'��rN�-sk0L$�:�Ng�������Z�B�l���k�UUd���˵�yL1��I�2�m:3�l�Z6U��^� -s���}��'�>�6��zP ��h�ƹ���7p΍�V(^[���bS00��n��@E!�N�cv���%aӴغ���YWLD�:M��~�؊3V<�	^�/:���l[V��� '"�T�H&�!2�O)ξ�����dQ���W��7��xg�5�k/��Vs�l�Ѧ��2���m�7�ڏ�1��C+Fm����hxg���b�2���{��b psl<	��T�S�q���..1f�>�K���`�G|��(����R9��q�e����@*���`�R������h�p<�u�:O���e� �l�Bۊ�tHH�>�H��3�\?�(@�v'mg`�ӛ�k�Ƣ�͚�����"�'Z�Vc{bW�Mu�s�
�V���_l��彚"�X����5�����+�a�n��&)�/x�Փ�T��u�ϸ{���������m����=��C�y��_��S�^�Y����s�=��Y�P�#E�MG�r�H�5h��E�E��ziҦZ�)k) ��/1C!a���׽��?Bcy�m���V����GB�1�&�Z��:g0O�Ӝ�ϸ��6�C��E@���Vh{�+�*�	)f.R*��yɹbNO=����7�>0Q����8m!:��"��?0��b��! Z���QtL�!HJ ^2R�zRQBDk6�G��F��C�X�֊�;�!b�=Terh.$�Ɣ��Q�4e���I�h4�Z�N�� ���7}㷬E��^w���|�����A=�øB@-���CA]�uC�� ~��@��gL)�(�������W�)���#:�p�Z�}�:K��fXmp�i1��T
7i�1ń�b��0���W���p�b�����Id��M�0���V	���T
��F��j�
~�јb1�l��1��1�an���� mC�p���9�[~���U�n���S/��a��I�����`#ƙP�%��mG�rf˼�(��cTh�<�P�j�ј�Mc�P1
�l��/n�%nw�sl���>'�i!*h9IK,��e��v�j0.�n��ܯ���nc �=U"\�B;4��yӐa	�)���Zqܳ�k:��� Ld���J�G�%q����tC���e"�PhwVkZg%�`<dlN,�1÷����@�*U�^c�ȴ~����K㟴\J��o{+���_��x��b���Z�3�x泞����>��>u9��'G@)�_���K��1�a���m�(3��>B+�9���翂��z�3/1������-^�����G�Z����te��}]2;ik1�	a.�@�욇���{����[�̫P
��5~��{����!>��N@�k�1ڎ#��_cY�/��R� ����ǁp��ە�ZjE���	`���&fX9ͣ��ΥM�k�a$͏�I��Z�Zq��з�i�sB,ۦ�#�1D��(��i�)�J�	)%a�$�Z�i%��
B�
��o��[�~�{���Y����~�����]�@^����(�O��Ǟ� �9I`ϒ�i�3��i�!�h�� O;L%P �{��JA��V�L}�5J��P��*�kQ2��Ξ{E��L��6����Q
����+� ��&	z��R@�,��Ì���9�b[�8��M�Y$��^���ܐ�R1!�mOx�q��ńg= 3C����L�].8A,���@-0��ZǙnhҿR������o��u"����?;i�N��wZM̩���b]r�в%�@�Z�Z-�A�����pZ"di�j{&��ƬM)�����7r����@�\әu��{�ֺ��Պj�Z���c��/b�*��Z%HsdP�7Z��y������@C̀_��JUp[��3`n��i��l,��
�jE��R�W-��6
���o�z�Ƭ��<������*���o��?��x�{ޅ��6-N�׶v�Ƕ�pF��O��~�������O�d��͓��?��؏�X�w����p�����N(�Ϝ�x��b�3�m\��
�'D�0^������}/���t�`�q�m<�����mO�i������gH2e�؜8t=�9��7���4�3���*�ǈ�%�,劳��LsB�Z\\n��?��s���Ωb��|:�2ή5F�`�YT���(~.�飭�q�8;mq�e|@�H�8�ʢx�#uC
���d�ȸ��6�T
�����a%�#W�C�!���Q�1�rD�ϬV�b����ŗ}���׽ �����?��?�= f��G���u ��U��n��P(��{��Z��\�V�؎L�`�Eo[���+O�6:�0׈\���Ֆ>T�q�&xk$+��s�Z�)�[*����X�v=B��%A���硵F��A��i[Y�˺n-U�1�"̋2ï���<�Ñ��\*ZR�J@�x��?�$d?�9$�ln���6�D��8�Yv�Qȥ��nm��Z��92d$���d�$��)#�B�o&�GY:	@��W�����Tg�����:9!7��8�#��4R̈����
�_o9Nx�	��fxO�Q��}3<#��[3�ޢ��&�ZV�r΀�
��������Π�-�'����� �@���kh��j L��Pqv����3����#^p�[ŢNi�p�=����5��:��!��Na�H���5l�+K�`0�
ȩb{j�~���Eu�a�F�2��tڭ�m��l��I�^]������������wL�s��L�smc�^��?����}ɧS���q��E�?R����~����.����x���˸��D��c+���4����bB��@�ˢ��R��4��&��u?�'>�>��4�B����X<��È�˛���LhZ��s�,��Ppy7�������>���+n�˻dj�R&:[b ��7���(�uP=��aH0� ���h��qq^�.��z�"aB���9��LOM�@k�G����c:�����������+�l��R
�p�p�Ў��ȕ���`���n��P���!Xp�e��l����^����}�C�zֳ�{C\��í6�H�����ǥ2C<ׄ��FSE������/F��Z�qC��[7����;��a�?e�,��e��2	��s�p� �q9�Fc:Kq`���a��7������qҷ�%�yM��9#��q��ݴ�:��nʅ�����q(��|9�k��ͳ��S��K��5
7N�UT��<�&~��*\ a.�a�J�Av;'O�Z����EiJ!�#g}������VX	�F0�!���!.��R��N7�B�c!�ci���!Ɇ
�d�p���
��UN��s���ޮ��K�P*0��Υ�p���p���$V".s�,a��w���[j��-��)�p-���q����������w�7�I|�%��%���mȵ��"܃ �����cB�h������^�aN���?� ���w�[����_�Ul[��m{|�C�x�#��_������/�k���`����>9��@F�����)	����㋾�ǁ�Կ�3p�S�O��)C��K���q$�
R��((+Q�%e������}�F�+Pj ������3�9��s؝:�Pq~'��7�PeZ:����*#�FR3Sb�x�(���#F	.s��b�{�o,n��8$4��f�9
�r���c�]o!U�hLS�Ҥ�u�c�O�p�3�C�:c��ǁ�Bv��f����Bt)4���%���nYCءj�a6Q䍳pZ����!@r*��$_e�V�s�����V+�����U���� �x��<�/x@�� ���T��S�p�:�EA��.׌�x�Rպv����^;��a�lw/�;�Y�}��P/�B�!hG,��B��"6ޣkx�X�W6v�=bL�9�d-A<�(�p�s\�%c���ZbF�	!fS��q�L��a�����yjWd�OV~��
�2��i(
<,��R0�i�t-m���=,��҂��-�f��d-�l�Lw��~�-�Q���Q�Ø0��)
}oq�i�0�@�)��bfJ��H/���!2��r<���S��3�8V-��vǱ��w�`��5|ϐ��[�p������Z�`D��Epz��z�[��uF	�W#FzЛ��(&.3���H���d�/2�L̰�j�o|gП
ޚ$��n�a{�*�ǂ8s�3����������.����]��+�����Ƿ}�k��އ�;\�[<zm�����W��x�� � O�7ѹ`���f)2���^���Qj���b{��Y�Z��[b���D<�U�lui�Wr�QQ33J*0*�������{�Ph�Ac��y������?���`|�<[Ðp�q�RY�Vv�B����>fĘq<Dt=*�֠f�*��lp8D��jhG��fK�^�,h����/�ʹ������f�V�m�S�ٙ��	���ޡ�	��L�ӐZ2y!'ۖ3�� ����3�Z<6��H: ȹ��2Z#���<c
�D���6j9�S^�A��0�MW�9��WPD�x�W���^��}Yk�����[����� O~���߲ (�0�T#Z�a��@q>_�tX�W��'�$�@B�<�o\�\2��
`3B����]/�E6׼��8������5}�P�W���rǐ �a2�`�|�i� ւ�Y�3��S�Cm�F�z��S�BZ�����<�r����U$�V;7�9ne�N�U��(��V+jѵ]�؊LlE��xǹ���	!fLbe:)w��Z�җ(κǑ��9��Q+��Ӕе\ĺ��Y�-�����y�n;���ֱE��,j�+P�"���tT8vv�]g��9Ǆ*�!㸏<]�X�y��Q�v��J+Y`E-?۶�89�H�b;��m.�N�:9UG�Yp�Z3�'����{<'��(��tE��b#�F!NZ1��4�(��Fw�!L�̌	9��ҟ���Y�v"(K�+����������?����4��׶-n�z<������+�	�V�`$��C�^�r�\�����{�x��Pk���W��3��.��
if���R���b�S���*����O�O��mo�ѢF�����hh��0Y���E�����%r�K��y`�"��e����
�,K&���������U�*:}���8�hx�Ό�>`���9#匘*G�s$j��bf���n�V�;v�jY�UE�E�%�0Ŝٹ�:/T?�k!f���S��:KQs��:2\n��a�DU>cNB��a1�%a�[x�a�ԡA��RWύ��1��:�����g?������w>�/��� �*��-��4�xH5�7e�-�i��o�"

�$y� �|��I�s-�sZC�**:�I���f�1ү/�=
XE�ð��R!�6�T�`S���3љ �������ayhɋ���2v]����v�:G�8��Ɯqs׳��ƭ�#��\щ�a�0'I�c4��\ئ?�58�6��L	�) ���ҫObΜ��g�X{���Z��a�<g\;m	���BLs(�t��Y��Ltk�z�i�8���W�{���Z�lK���'�	3���l��[���a.}Lwo.�Xm�����BYpP�9/����	�wg�P��v|MaΰN!������b��m��H���.���Ġٰ�]5 �p��F������;>j�H�V��N@�L��f�����?�s���>艬WO�=k�;w�w��o㸿D�ȝ�����k;|���(���"E��7���.池��7F!�H�~�X'''�<�E��"��:F���D����5ɪBKd�����Ͻ�g��yl[[�ݝ����G(�p���C����[��eJ�UT��^���9�o,}�Fj��y~g�:�{�)(E����3�'N�,� �E���MC�ŒFZDt�K��í!@}�0�g'-���i�d����4)�!�3*2�XC:Qά'\���r2������-�a�È�h�C��4V%=�����$ZǤ��+�ʿ�������e/{ٟ������}_b H�~ϯbC'�W+-(_�*�	�Ir��V4���g^@��yL9�����0�bFX����4O��0cIcX�~�V��7�����ش�Xܔd��e�z���F��_�`�i飵��o��X2+��`J�CX�0e+`(P�,����:�0���@�o�C�?��\8�^"y�Vp��=g�:'��M�b��a�N@P��7P�ؓ(���;�����[oq��2'�(s��k���88��Ij[�g'J�!����g8�R�4�r5�	aNP YP�����tH���4��C�r�6^a8&�����ފ�L�X�0f�.�)��CE�!HHk�RQ���V�U0^��t���h�.�a�03�
8��aSK���ıPE���´OH�u�F#���+��\МY<F����zzv&���l�]���}@k�w}�w��O��m�qm�����E	���p�F��<���"���|���9�� �r�Zl�56�~�[��c,؋�.Ŋw>��q�׿i]Zx�P��C?�IU3��w��^�c�|Y��!��:��'�'�a���zR'k�����f���a���n�8d�P0J_)�d��]G�������,��ܙ0	���p�����>��rt`�B#�tt��6
���m)̓�RwnM(� W�6F��t�`�1k�����}��|B���;�-��k��t'k�H�Iƚ�fd)�j�uqy�Jq��F�J���0�`�v/��"Z.���B��C�����{����|0�� XN�����y���ĮW�kU��VnnN!G��w��������+*��jƔgxc�JF,�)�G�n�c*_-�*Y�r3o�����G\���Z�oh����A�=��h���R8�0�9˝iwV�mZ��0��\+��7P+�.����<�c��Y"�S*��)��/=�;����}N$5�XS�Z��m�$IaFB�ږ��CX�K10�Z��k@�Qc���!uOH�vi���	�V��_�-x۝c�]�����^�?q�J3D�Z���b�g�PӰ ���iʈ!cw�дFlyX�L9W����E�H԰u,X\��Я?�( L��F�S�w��s�m��FN����}�e�R�Y�	�S!�����j�X�抒�}�n4�;@6*�1��q�>�K96�G�_?�,�7����k4:o�mn���/^��P�i�y[W(���l��ZO�Q-UX���CA�������_�?�_��ވ���M��>��!Մה?��~���L�Q}����὆�
���izT)��شO�wDR��B�іP��7�=�<1a8�i{��%�F2{    IDAT�>������&B���,66���!:Mlc0��.���12cBQ;p~w����X2�9rN.Amc�%���n��b�P���(��q�cB�u�X�afG�8h�#��S�@%Y���F�:̓��
[���u)ƜR#�(��^;p��r����)���
T�h�P ^�Z��K^�O�>���  ���{; y�RV䚑� C�P����V4��S�T�:��s���'�v���KxOk�֮AH~��P bLȨ��#�lچ֗\����Gxkk	�,�Rh��3f��󌓮C�܊�,��8�1J$/�������G)�1DҶ<�N8��<�[��S�?����u8۵�;��b^q�)W��iN8?LP���d�杕�+�>mc1LN�SF9�L�1��x�i�$�-��ljX��Mk�3p~9��R*�I6(9�e�AF-2�����Zچ���535\�(�R���Tt-s��LA�V����e�X�����*�y"0����b�[�)���dO4��1d&.|�ळ0�ULp�ca�\^_�����s�v@�"`�B���:���t̸�	�U��K�p��B(���Q���P�� ��j=�?y�*�w�?�׉6��蓶�w���%\��
 '���!!�ue3C�=�W��O`0O��8�~��8��akV���^��܄�,@�*��������0Z�i�����P�y�6�û��;�3��5x���h{�hќ�����4qlv�fC�_*89q��V���fga�F�u,`3���>ڣ�06H����;�&8����rB�X��F��n P�[+���!�� ;)����`�06" �n��XUI\:�(8c0>�����I6��43���`��.��智p4�r����RY�t�a��0��C��ԥ�S��Lt-��/���ʮ������}�G��� ������ߵ�o���k�p��sT΁�<S&�VYn�����M�c���-�`�|�t��]NR1'L�	�H5c�3O���_ҭ�:�_��@�Ln���Z�m|��HU�0n������5���3el9ii	�P�0�Ʊ}o-�<�@Zs|`�11'd�5e� ��$7(��6�cw 
�@�%��c��TqP���4��;�CX��ZآT�l��}֚^�pV�$P���YD���������PF!�D��B΅�c���3�QlQO�֢i-|G�u]�܀�e�����+V��Gq*hٜi�j;ޣaf�(��P)� ���"���R�	�jz�͙x���ݕu�����BNX�K�a��Li
� � ��\ 	I:�ȟ�%PF��%�XC<�������ղ��t��+��lX���f+>�}��'��JG<^ҦVs��\���z{��|�+�{�8??�:%����ӿ�$;Xeoj!����?�g����;z��՟�����}
�z�(�=G*��o��՜�p�_���b�#�Ϝu,)`ew��X�;�^��R��H��f�
�z|�p��_Fܹ=b����p��Ԋ���m�i�8��;�DO��gseT�4'�HȎR
w�Gܺ=�8��2Fn�[��q(J��H�%�D�w�Ɖx��Y"K�0����!#!愶�"ȼr@��\3Z��J�1�$*�RI��bg�j���&݀y���~��/��͋^��}�_�z=� ���P�1��2-OFU��\3q���1|`r)k��i����/'�9E(�WܯU��)"�Α ������$u0�?�{���]�����ڗ3g�c�	MB�0c㘱!��&�56mJ�JsmѢJ�*��W�T��!M)MSAjh��0	��Z�SW
�NJ}e.g��{]��{��������{P���\���^�����>�BX�,~8p#���猤�).�
JB��g�5O�)q�O�q�R��9��!\>ǈ�0Q�'��!%4����D�n�	��U��3��9JaP��N�rs`���q�k�؞f�+�6�)���}��7�mR ��"C��Ô����p� 0v4�Jsb��B�	��T�ov[F�D;S�[9Y�ɩb"�S��E�V�R5Jս����z�^9T\�r�6sȈ��_*���;j+� h�T�;����xHk�-zJ����d��Ҵ��B2�*����ˍ � �Zi�$��홁q2k�pg�-xV!M�>����t�h��}��%PB3x����y���߇���Hkl[���k�@�k�#��%2|�Z�ϤT��t�DԇU��%�����%?�|	+��p@J7-�����[�o�/vQ)��hX���g?�i��{~M���1�R̘��CB�DM�o����)t�]z,��q(W�!Mۭ����ˆ��cmo0��(��֠q=�b�s�gY���8��A�Yi�d�����,ɠ �_�wưh��Q�NjʽE�X�.e�G*��	]c�7~��� sZ��k�c��X2uL<�[M]S�`��9�ZȠ�5r����_������X���a���4�Vq[	�����K������Rx������
�2/��~��" ��T�<�\�� �2��V?�bM�	Q@��ȴH��Q
���)Ŧ�X(L9��T܎)`����5������Z�;�s�i�(�1�a��<O%c9�o{Ӷ�3��5��P*VK_�6����a�1�x��u�F.�B���Ƴ-�u=�;��������zt�� �G.7І4�Y�isL�?p���%�[k�aJ!��1#ͦw��g[k�@��`A�_+F��Ȳ��1���:`G&-kN�#�8����"�:�b����GZ�Uk�����n���2=��b��טq�'@U�[ivㅁymZ��;��i4���?Q���V���ҡ�Yĩ`:&4��x�8]G���7��a8���O��0�B���*��f����.���������Y����z�}~
�~��O��O� K��Htvg��lv^���mi#-��n��p��Ж�D�sh���o����g�yF�=?v��M+�/b�������J�ތ������9��1pZ�Jx�A��n�p�0Z��,�!3�P�aE�N{�ca.����tmK���d�qH�N�G;�Pep仠T���D������8g�z���\���n�y�P�
˃���K:x���������@G��֣���o=r�`�K濵�BLS��4cD�o=��`�1�m�"Z��%vb�{Ŕ��<:�A"����q�q��V�����&XJ�4����U�`�/E��PJ&%�r���+�����z�[�ҽ��o���W��6 ,��3 (�&I��])����F^*E����D ���!NU�1�FӢH�w�ƐK��0�ȕ�h�U�up0 �)+��:l�]㩲���}��8+t�}�9iwɥ��H+a�x����X�Y��ۼ��*����C�,�)�4͸�v����V�b�� 3�I�E4H�>jEX9gn�)U9�쏓�Ⱆ�8�p$(�Zh�3�����C@�?3�%�uUHa�y���;�4�y����9ss�
}g��4�"2�*ܻ;��Y�����i�Z�gA��S����� �'kh�!C��͕lna�������=��iQ@ovli+�������*h�!��i�Hh9�|��c}o��L_��
�)ʆ*�3�-�V#����+���9��J쎵�W��Y2�����w�����a��V	��������� c[#�mU��"_\�ƥV�8���AkM˟?�,��{|�#���R��������J Ģ9
����/�{�YnU�������~�k�vDp�aͰk�d�K1���v�F���*��Xbd���1�z��Z��޽3�t�	�_x�B_�����C4o�f^F.8�#�Y�3�
�ZJ�}3Rf]x�����Fn6�S��n��I���q�Z���5k���)����t�b�9%���SH"��h�aep�M�;���Z9�'t�c�X�0�x�H�!G���� `N��#R�pJ�îZ.�
UEQRhW �_�@k-���w} <������W��8 |a@�(	�(�l�KH����J-%h�#$oz�E+���zgP��
F��/���Z�S9��| �4Z��o͌�X�8�P���1���c���'g�e�n�("�������,:���3�jcݏs��
n��2c>��q
�u֢qv�P��[��u1�[B��D��5N�
@�a��D;��S®�h��7�{�	���D�%O^k."��g0��e���i=f��+���Xp�j���Ήm��ע�o���Lf:(J��l�}q�@�X���(�s�3�ޠ�E��.k6�qx\N�1f@�W�J��u��XM�a��C�i)RC�P"z*��/i��� �P��q�zr�����4j��ts#[30���	UT�U�4 �� ��p?p��]����T������tC)B�Jt
9�UF`D���Q��@d+Ya*�fa��7~�/�Ї����W}5��o�YID��z*_��q��OO��`�ﶡu���ţ_��9��`�#��=#�}�3I�p9ݨ�~c����;D��V�L)Ԇ�ω�u.|ߦ1�pp�Z�Rb��#�R�[
/��Þ�����tL8#��(<]zF��Q�o<QM��Մa`S�24(M��Z�0�k��+e�N�w}#�]q��������<G*�Z��g/J�a�y7:��J�(tBb�r�m���t�IP`%� ���w-���.�*k�c)oz��}����mo{[���O�ӏ|�#��_�_A��� �l��������`��_*�2�y��eF-ql�2(��R��]���x�����yB����7<��J�sg]�9E�q�)0U����{�qsL)�I{J1��m�Z�$X��R��۵�~=(�	�ٰ�J�00�c)�(��c��&�tL�(V=��4�4�+�ǯU�J�w=��cP �^7h�2 7l]߸�0�0 �v��4K^��T���,zom���*_�ۭC�hl{�)U	A�r���R��xa���RX�BoM#鉦шR.��4)E��-Mn�r��0e=�/��2�J��o�s���1#�C�<�gf\�@�4rX�E�7�yʘ�ľ  �bcl[�4�	�}�3��e�0DCPWA0N���=� �E��F	��O��O!j>�&������"P"u9W��#��S��+��Ơ��J�z˃���y�G?������;�@Q��K�@�|2��K�(9����OB���~�� T��+��i�7�䗰!R<D�Ƒ�;G���	�)����7;ǰ(�58���S5����J�JA���[�y�h;�Nmo��tˈ>��8�$�\�hXD_�b� 8e�`Nǲf�9�m,���9��=�?M�h��ǌ�8Sů�\��D(��J��i&]39��0H*�F�@c�Jd��Ja�3��k`�E�V���S��,�p"�)H�D��
1G�V�Ux�ν;�����������w}�w���/ȯ��Km X�� �eU*�"�76��pFL�� rI��Ler-R�K�~0�ȓ@-#�|�$H%�����%oZ!$�N���kvg&^��6� T`?�7rAW�ޮS�������"���f��
1�4�y�ixi�,�V=����]�uv	]AEH�V�zX����qBg߷ь�Zbue3^����3&!&��
Ep)�}��b�g���(���=h<s���ǈa�B��z(͓o��1�k��T�ɔBK��
���7�.��ֈ@����_�@����Ғ� A-�Ol�0�@�^�	�bٰ�1}/�Jx�Ѹ�ݠ߲�5�E�c-��q�k�W|-����B��阙�'�	 ĩ@9ڠF�>X��UE��CB���0�&���}�����~U��>��_���/�}?�>��4Zo�����d���~�x	S��4���e���	P�ִLE�� G@�#��/-��~�0M�R�S��7��u�4 �X�������g�x���xṀi,Hs�p��;':6�h�lZ#��Ll4��W��C�)0����7H����'쯩WN�������Jq���yÐ�SD�2vg�����?$�.<�g���Z�i������)���/��KڪV��r��{�ݎC�b�Z����YT0��;R����u��S����*���8�U�LF�s�q��j�)��@}�&9-9�G��
�Ғ"H����/,n�Kr���%�<ꓟ��������'�������^�:�%]�_���@K��^T���7g���7�!T�B���KB(b�+|d���iSX�������c{��^`��,o�7��X�
��̺6��O���b�SJa��z1�#Ad��O��8�.@"@�2}�i�11�2�0;˔o�Z���a��[��Z1)P�}8�h[
|�Qt��w��� 8I�/�g�A��l�X�MC`���*�\h쏳���Fȼ}n l;䢴.3��vg�1/.���mgW��Z"')b�D�s-�6J ~.�A��0��9%�;������D?8��	w���+溟����Z�BA�1�]P\ %�3� �:b(�5�!���_ar��\LU����Ѱ~)k�f?�
�*�\PSRſ�گ�>�_��RS�����d@����C�Z���UwM��f�����p�`�T�@��@:�51��e!��1��R�Z�3?�3��տ�W_����~��E�����}�{���ҁ����7���͹�2�8%�2����C܌_x�v����0��_^.j����)������c�<��E�5؝;�� K��!!D�*�� ,k��B[����E�1O��Ī+���Ri�#�L�8�Bd���\�)Iv?�,%��\��)S�s��4aQ
���'�Y��T�h�Ʈ��:A��޺����X���D�'��-�Y�Uy���@Z#)�*�V]� �_��c?����n�Soy�[y����c�=����������o�@�J3�r�\3�A@Csz��²�\�~�jѻ�V���X �"�ӥr���g�P��[��c�U���A���7�"TUJ�~�s� R�?�����ڛm5�Gɍ}C��wFN�@,,���`��l�ökp�b�L{�	�9a
L����	�s$B�J��b��rJ(B]hu��?��?$�x�,<K8P�����w@d�n������)�{�Mo�E��ζ�����q`vC��!��k��8��$	a�7��_+����k���@q�k%�Tߚ���}kM���:��F�#��P�xE�,0��#̴ű�'f߳=��&G�������t������݄n��za�_Zl/,.^�� �-(x� nN�X~��53%����/C��?�|�h������c�pQ�����#O�[H�B]I���/����O�s�� ���|'^��W�'��E���%^���y�O5�k�������c8e\\:���h�Y�k%J:E��Ʋ�:JMv��0���%��8����=��yo��9���{�[�2�ǈ��mTEʧ����F�Tpv�D4����&���qL̝���F���D�~i��}�!�q� m!P,H��}WR��5c�պ�w�x��1�k����4Scd��7A_���5N����8��( ��a�Ȇ}�G�K�R�p�ג�	Pj@E.	!E"�v񢸞�̐���޹sz�k��o}k�� �% �Ї>4|I���R ��}�7� �R+���V9�J#�ƴh�G�zV+�0�l��"/����Ep�'�oK�5z� .��L5k�=Z/���;/	J�t���u�\֜۫�&�"�X�b."�S7���@_e��[� `��8GI]#��9�K+	vP��&����J� {��������8E\v4G*�w��Ů�w������έ��RA����q��h,X"�0��]�g	U]�^�J縐�c��sr��Vc��Z�բ�8�	�C}�&�ei����C���5�Q���8�EnԶzM	TP���Xq�9��p�~cQrA��(�f��Va7a�.hCm��hW4�'0h�TU��+���I�\�UT)�N	��X    IDATs(Э��g��x*(����iJQ��02�~Z^IL]� �w��quu�9	V�W~�_'+Y)1T)2��VõRDc�+Q*E��+�v����]��ݗ�T�؏�����=��o�x���#jA-K���>�[��?�Ǥ�*ׅӑ��������eNq�^��`fZ�xi �^R7DM�e�8�ݹ31'!�^8���@�S��;���!4���h���pu5�_j�5���WJ�x
l�YZ���ܻ7r�O<a��qv֠o�C�E(;��� 2��Fq#���E��B��	�0L^��!��eFs��Z�U
�9�����g�D�c*��r��r�̅B[:8 ./^���D}j��@}������k��A��׼�5�U�z�� ��c�=�� ��Ot_�Ӿ쏗�  ���7 �}(���RQb�i)�	U��
8�k�*��F쁄��4�/�T������8��*=��0_���4"���z������F.����9s!C@�.6�h*���fU���|�T��!�Q*��X0�&��,Fz~?��L�w��a,m����q�S�CZsHe$LsB�� ���$�Ǵ��8�4�Nw8��V�l� %���V�:KK!��&��
 eA
愋3��Į1M��e�<ӽ�b��V���OHD��Ͱ��6n���d�+�5�]kM-A��ͦ�B��cQ�ߢ�(��t�Rq}7��*`��.�;�ˇ=v����-�F����F'BC+�	k�!$��:r�JK��݈4����e��酀�݈�}~B
" �[Nb�|�7c���$`�3�Nx�{�%�[��
�c�Q���/~���4?m�!���Q[�@���Z����,���Ky���(��� ���o������񢥤�=��~��{t�X��ڟy=Ź��s3�׉�P�Z���Z��EL�Ob��QΑ�����^h[��)�!IIՔq}7P�x�����yFM/��Rz�����s��
���6��,=�{g��;ږ�R]���X��r��*�K�8�($V�b	�S@�ٴ��-�����R�*.�
Ry�������+���2�|=�O�U^�u,!3D�R�pڠ5ZĜ��)s(����2��J�U�ȯoaeͺ����Z�o��o��* _����o��o>��~�/��E�?��;�}���{u����N��(��J�&(h��E�k'm��fiDF��bL�Rlmk,�r)�s�������ȩ�pSw�[�! 猪 kD��ܚF�$�wi�3J����{�i`g}'�w	sL�����{���9�kHYL����hI�bq���ao�_0Z��7��N���1�c���ܧP+�OϮ5j� NC�Ѭ� ���#�y�]�?���{�{v�O	�if�
�.�[t-��N�F��JfH�=��9!D��jU��,�9�E>S�	�.� [��[Z����p�݆"ǒx���A)�`O��i����|3�0�=�3mw۝C�uMp[�r(��5��i��m�*Nǈ;��UZ����9��gmO�v��Y��"N�-��݆��|Ȉ#�E�#(����������3�'?�I|��]u3��C�enB�J���Z%p/��Q��f;�� Q����4N_�x�x�{ރ'?��D��z��ps�YFh��A��O}���̧?#������Pr�e|�1M��Dd�XŦG�p�'X����e��=���"/E1�C7�4�l����KZ��������C�l�^l}�CR�yИ&�I:<���s�
s���펚�"C��y��a#��9�rg	�K��w�E�Dz�K2g���^vk��������:h�[��4#�;!K8���Ry0�a��7��V�b��c�Raς����qIpP͂�_��I���|�+��A�������s������2>^�@^>�9�b�q��4��UAɤgPAO�Q�~�bhO�Z���[Q����Ǘaa���Zp��9!V�X�̀ +>�fXcV�+�|}g-BLk�3�!������#C9Zo�y��)��/1ѪԂX
�9�����-���"�Bx����{�s̴*f�q���8'�ʛ��b.��T.�
c�؟�-�8��Z1�	Ӕ$�W�%��7zE ��8z/=��Tp�jB)���u�ބ2�~`�)��'UA9�,�vʥD&Ċ�3�<��30�H�$g?��Áś��}o/l!�D9g�b��5�!pý���'�9l�\0	mg�=���2��3푅�zߒ�&��V��G�XO
"Ɗ�;�����y��U�,��Xlsf��V��E'�F����  �ހ��V{�3R�Z�2(�\kt34�L��)h{#ϭ��;��^V����������'�|�o���J�w���/^:�^SK��Ъ L#�������ܵA�J+t;װ���V�?�5[<���^����j�̹���00����*^�����Cd�p�5ڎ���k��R��h;�G^ѡ����K��>b�S\�z��؞9���q�J���<i�����ѷ,�>A��� �Q�B�i�H�R��m�����HVɜ2Z	�9���J�.��
�OsA�-��9�9%�1 f�cN�����eidU�x�� U	ZUy8̕���.��_`�yf��{\^^�o|��駟~{����������/��6 ,o���2$ ���X�y�/	�ЮVA]@(�
R��jAk<i�R�7m��
�kkƘ&B�a�7�x��sm-�����.��*6�ֺ�o���BWK3`�Y�.���q�T�N�9�8�Ramo�Y3���xS��#���"f˘BU���X�yD�$BߒB(��a�ӄ��]C�r�h��gOS½������1b%DNEE8z�56-��!f\�)a�=.���Ưy�SX�?�
�.�j��}k)Yqj�AN<aΨ�sq٠i-���&D�0�	�DEt��^�S�#a�@�!�y#�[��s
�ǁԇk�c�鐐b�pd��4d�J˙����<r�0t�P���b����8X��&]/L�P�4a��=�������*H(�.�v�� ��7a1U1P��:�J��SO�������eNt+�F���"��)�V�(���lq��b>��h�U�v	_<���~��#?�#�� x��w�/^�������3�����t@�Zx�����W^wS�cI�X\=?c�(�+=��TJov���>��������BXy�4G�2/��G4�8bA�L#s*�ڎɈ������̄0gxO"ê2��t�1��2=�z?�p,2|o�������H����Һ���h�vDZ)���{���{��Z�X�&��	�hq�prn)%:϶�\��gHE��9Iv�B���R�8�$J��Zl�3� �u+���oS]��Ŷ��L7�2@�����/z���mo{����~�?���?���o~�}����~|�>���K0�6p��:�4
*24��@�2�J��
J[Ly��V��ЛF�I�ԗa-�z�I	h�񕕋�QS
�}�FN� =�J���)��z`��⚆W��Z#/���CF��-E������.4����=��p�7<+c�s�b׳^��B��)<rk�*�Ƣk<�����aB���k5R�T<-�:�қ��j�YJ��Z'i��i�9]�Vu�H�-�TpqN~u9�l6�c����&}1���5���hV.| $s�H>z��M���6������7�FȷX�&�c��m�\�ᔱ;琡��>�����pv�V�v�1�7�ԕ�]�$��l�WGՊ�O�{f�c�k9pW�ra͑�<T�%�E
�~� 	�R��>���ӟ�4˯��ǵ
�(X-�W��Rr���T��$���E�MD����
�ԯ��L|���hA�ԧ>����SO=���R
���o�C=���pC�� Ԃi�~��5��8���M��q��o�s�S(:�Ty�yf��W�T$}����@�nw�G�߳�,�q�C���b�nc0�I��l�c�4����6�֊�q~�A|v���Q@D�[+��X�d������f���j��;'F�?�P��1�8��x�9�ӄif����c�A�g�6-��ǽ�����i�1���tW��m���^��0���T
����B�T�W��2�$�:�^�Zٮ):�Ő�FkO�z�5�T��X���+�[��ݜ���7�o��o�>�N�g���O?��>ϳ�_q��� ��M�"��I���u��U���\�""JD� @,1G�Z����,4 p�Gt��J�p�1'*L5����5�<��.��Z�i5V3�Y_�L�bJ�"�˵�h6�at��M�8��ˢ�����q�: @�r�1��}K�p�ۜ� (�M�����S)h��0'�8)���S{�:���W�X���s^�r�xp��Q�n���$&J7|�){�ͩ���3|φ1�m���p~�Ц4f�����VJ��t
��ϳ*v�l6����1�i�\|!��=��д�1#��K�F�+��8�t�L
���0����B���������B8x��u�pN����ԁ�3�0��86q$lڵB�-�G��K (� C�lq�f9E
੧������ށ8W4���H'�ԷJ+��TJQ�b؊�l\J+n�td>�ɿHM�fg����(�K���~׻�uW���U��.D ~���b�X^c8L�[���ir��K*ɲP�3��2s��{��=7CJ(:�6�[�R�\�m��mJ]gpvnq��&��,�SZs"��������Q88H�c��<'8kP�KaI�l[�n�����IoĽF4�����x�oP�ww��(��)�o�9c�9	�Ì��v|�i�����zF��\�LZ+6���t�@J��P�T�Z�R
���9!�-n���J��J���ԖT0��*F�/����Tn'Z��P��>�t��n���d���������QJ� ��ŀ/5
`y|�!`��k��7;Մ�(�X���B�R��0V��x3	V1`����2?o�X��8��St`�1�5t�	���D�0�j�µ��'D�ڃ��j(BO���9Ft���E��z��@��K���n,���Ůo`��q
�#b!O?���p�ƙ'�q7:-E-�W�@c�q�X��D�Ř�5�[X��9$�B��Q���ٮ��� ,�YGP�k�h�Խ�d��������2NGZ+o�����W�δ2�&n7��ImCk��VC+�������ʆ�5mo��2�O+l��so�,�R�;B�a�P�� )p��Q�0LCY�aJ.ۘ���-���ט��"�o��R@�)IDdJ��N
��D�Ry���n>~�(��
��گ"4T��w*xڬP+���|g8���~��k��b��s��#ёE����7���x���[1n����_�1F��X��5���x����C�i���X�a�k�֣쟘&���T�m,vnz��N�봪�c m�u�Ʋ�y*x�wGq>�ϩ���QD�P�+1S�i��4eP�H�u�"֢�a�e��N��s#�#7���Ep��,�
�!������@�����n���<g4�߽w�q�������ȸoV�r�i��#Z�V{�q�1/�+��M'��)R\�Z�jy��� ���i��z(��E�2�A��$�2�]I׊�5xZ_���>��Ï<����Mo2 .���������_�ɀP� /�q(IAS�H8��+��b��S�(`�МX\�~�:'}܄Z����K�����Q����������7`��*亡*bN\x7�Z��{@U�1�U�l	��qM�RJa�T�6�"��a�k�@�,���'�Z���v�l���:oi�
�1i��@k(�T��ض�#���E���C�d�KbW*!���_2��zs2��*���.P@��Z�Pq��1�8��H8��E����fVŇ\KE�1��t��k�i �p~٬�i9q��Ո������3x��m/�W�N�p�������i�$�4��;McF�h�������as��m8�:H�s��ܮI��MP���y���
��*�_�䧵Sp2P�V«���G^�9t[���o@J�7��p��W:�������,g�?����4���ߦ>�ߞ���V���e����(.ľ!����
m�����@�S�Ҷ���7����_�� �~���hc�������o8����o|��
��;߄�	.�8��:���]P�����Z4��?�#Á���GDc8�>:�)��q������E�/<7Bk���"B�Xp:&n�E����Nc�c��aO���-�S�F�m�~�+އ�pv�)	���<J*kvL�-C���͚���m����#���7^k_��R��h��0�I��7v�3]P�9�5�d�P_N�K�z7Z���P��Ä}-PN�U����^�rm�s���O}����b4�����U�4�Z�+k����?��������Ku  >o�켬YFkQ�K�g-0�HE
j��o�@U`k;Q"G��H�H]��o�(�3��xJ�&Y'�zZ������6�G�J��gBY�pc�BN9����9��-E0�ՊtbA�
��I�}<-���f�1g�!a
	��R�8' �z�x�`���c���2��q���ȅ��[[�˙�u�k���7Z����U ��S��0�%�i��.����6z���b
�x	��צ�05�A-���ϜaX�
OW��X�ߘU��%&8��/O��\X�S*p<D��*!|b�
Pi�v!T�C��L��8�Mm:e��O���,痎}��o��)@[Va��ֱUq,p���a�N�B�p� b=�f� ��<�5�p����*@���r�U��}�>T��_�[��Z+���?���{b:1�(.�ŒWJ�pN��R����N�����Y�:I!�o9�-Py.���~7�Q�c���k�����~�-*P
rL�����Z��7~��(�y���ZQs��ܡiS�<�I�SF#�����	{��V�(��DX���x�G�j&�r�΄;�Lx�s#^��N�z`�,Ȁ]9O����1{���z��>!��;ύ.Z%N ����̳�}D*1��]��Xk'F��B�n��H9��s�K�����a�9`�*��߿�(�BZ\L�wk���0��XE�$���H��Z
B�\oP0�/�E;�bM�$����Ȩ���oVj��n�瞿z7��t )�{�1u]�׽�u-��O?��)�^���?�E?���x) ���Q�X��T�
���'r�YR���A�4p(�)g��	I�$�����(䑦PP��-�0gn.���0M9#�$���f�3��o�csbӠ�8��8�֊)�N�=��w�CJ侕^���,BB��ʵ1E/㹫BL�t,��&}�M�$W����|�-�(�3�?OC�s��H���/x�`
y���Vܔ�l:F.,
��/�rc�Z����AWdR0͉��5��ѷ�o���40��(���؝���Li��}������ r0OlZ�
8����Z���28�}]���ݒ��D������7�~kf��<%�~nBN�=�B9�����q��ʩ�t����#E�Zs�ObK��̤πky�6V��r��F�,�P7�?�X��O|�+\�5g��&gڝ� K8\V���gR��	�ZQ�r�_\9V�S��^BI��Z
�X��bY�͜*��;�$^t`[�u��k��?���뫻2�3r������}�����5��NI�1�
㽭�1�_�·�N�hBᾑ�T@+�Ji�8�DD�Z���JT��,}���x�d���T����c�e�����D#�xM?��'��aHbYu<0U���8�B��ضn�=�Za�Ӓw��0��*�[o���Gg�y�B�5����������jJI�2���)F+ĔPEk�驅vuڢ1���2i#@��*��R�3�HW �5�/��W
 @}���~�A7�o��o� v�?��/~���y��ك~����(���    IDAT~/�/( 5����="��ֲ܌�g��=TU��1��+az�9Wm1����t��S����E.�m�����}��}/��*LaF�<�L��[k�H�b��h�V)t�',9�Һư�)V��1�!I ���h��C��) �n��~k� H��[�)��4��9e#��F)l{�\������8�R�AR��NCB۸5��Z�[�-�9��aD��!ǌ9���s�{��k�S�Z9�_gt����2'�:nr�+�i@�؞"7��N�[��R6x�|~o��3�J.�*%-�4���)AA��Q�j�0����.�b�[)��l73��C�R�3���o4��U�H� �4���Fn�1�s��U ��~g��.ц��,��k«�Uk9�/�?}��˯��?�q^��������v ���h4�9�\3�����F������
p���t]�j��B�i��bt���[*���'�5Š(��_}r���5��w�Ӕ��h�;"�/����{�����͸�����gx���/=�b�oN�,�T��X0	�1@`U��?;��-�z9V�_2H�p��[o�$hK`���ύ�^�"ҨT�8gL��\%�7el:�p,��+�5cb�g�Dk���Gi`��:Lk5o���9/(N����*e*L�1�$H��5�-����4���)x�W J�J��U�ע��7��U��I�U��h%j����������;�ݻ�@T�O<���m)� (�\~���r<�   �f���a�M�iV��S�%!�Q�z�9s[q�\:�p�,���G�T�I�e@ A�,O)#$6�u����a��"�q
sJ怐��\�6wL<N���c�5�/ќfb*8MQPݰ�%ԩ(���v%S{%=�R�ȇ�)#g���'�A�(bs�H��Ʈ�ܴk��M!�bK*�1��7j6�#�p�1���i�b�@g%9�5x�2�}�����D~t�qp���s��C�8$	TaZ_�9�C�Z��8NQ��������J).��;�9.b��
{����qa��i��N��-E.�1����(|��,�)!�
c9�l�-�W��,j�<�k Nt6(�$@�'���W��>� ��JD�j�R0�a��x((U�V%�0�.�H7:���j��,�a<r�
��M����I�T�WjZANꮥ�]2ԉ{G*�۩5��c$�������X�'�eʦs�����
�+���R*>��O�S����
���?�*��f��>�:R(�s�i�S}�1؞9Zݦ�g>;�5�Wwr�d/P�8���C��|Ͻ�؝y�;�*����;(�Lv���sቧ�D����4��)b��}���!��7����JUw���S��g�a�0F�� 3�����#)s��Z瘸��y�T$�!�8� L����<3Ns��:�3�Ұ�� A���t"�����sK�C �CW~�(�F�(((+������Ā����� r��٤����׼��|����Z�#_�4�Kq X��^�^���d�d�e=�"��l ��$JTi�R
N��V�f"X�$�)��W2I.p�a1ǀ9!�j�m�"��a���֬��4��i�XU���5�1��JA�8\l:4�Aiv8ô?���)��Q��Gj��E&������p"���̀{�s$7?�,r��B�7�Z*��9�1eH��3��0L]C2�k,��r�q�"J���ݚ����)��B�q+d�e�b��w<yxg�6af�.�{ĦX���8ݾ��Z�q�8\�Gl-�Y�P��G��`=n����FM+[�Ѐq��®A֐;N���!��ێ*�n����C��@�k�P��J��@Y��gtk)�iq�"R��R���9��c��f(�邂�Z*��w��@�
F�2��F0���3�>��tDc6��h�q�]����ߗ��z�,V�=�@]��R`���h�d�-_���3dɀ��Z�\��*T�Ư��'�A��[��uP�I���89�YKU�م���NP�ضӐq�'$��
*#��)3��`{nq�e-�CƝ�&t[��18�t��K�n-n?ڢ���\��������t�������b��z(XJz��Ϙ
�;���֢�B,8f����f�*���_6�J�����	����nk�=b��zm4�"�@	�q~ֵ�o�[uZ���(�Tب�Pk%#Vҷ��U��kp�E"�ؠ$A[X���e��z��������ۻݠ����(��J�G��#���_in��� ��D �����+� N�U�CK�\���MU��Z1G����s��ZU�	\p+ Դ�h�i&EP��wΠsK�0�&�,��S��0�=S�#�$p�G�����"�� �Zq��� ��
���V�����a���FҼ����q��Ke����m5��Q<�޳|��=
|��O+��
4�|1{	$�&qS�B:�	�M����ζ�&s�R�i��,p>�m�D!Q��m��8��(Ę(�L\�\�K���oCk����q��s�Z�8�8o�4�5#r� �=3`��̀�c-�Σ@�P�/ ���_K����1����r����!��3ș�n�3p����[�e�}ݷ�뾝SU�=3���p (�@�AblŹX��8F A����~�K� �s`?�9�!H����/[�$rZ�n�I/3���U�/�5�w��PV+-�4�����ԩ}�����[�'
^�X���}�o4���w_DU .5K�e�uFRJը����cc|��_b��3��$ID����O��o�}(E�-��ZX�e!��T6U�޹���B�*��X8�Vq?�_�廻pW����(9c�f|�7C,w��_��).\���e�2b.�<󹜏	9� 9��`q�У�q�����ơ����N���?���;R��xJx�ݙ��J�x�d�8��5��:��\�Fa���L��u\U�!V�#�1���#��Z��1a7xY�Bt�X�����h[�;����
[���t�(�Ƚ�h=m�s���o�Ҩ G�k<突�>�q�~��Z8�֓�*�$bB �`�rd���h���}a�絃׎�mԭ�k��?6h}|�S�Ro��� ^UJ����( �k�	 �����r`��ԂF{x�k�!��P9�$�	����cKBʉ����=��ڷ�n�|v
�gW�J���*��,�`o�aX����a�0���5���b���?����";��[��q�?t^�^���Z\+�H��W_��iZ�(OԲ ��Z)����Y��Ǚ ��}�	0Q+vC���ca�S��P*�&)�\!6�7 g��ڎ��q�z�W�hC����6%v%�$;�lq����d���<g�!�;j[���L�%#%%�Q��;�3p>�M��	��Z��(�_Y`iiq�q?c��&�8�"��G�v���� ��i�po��3^vp����P���Bۊ%
��f~Z��+�.>Z .(�sF�X��3�w�ݷ~�+_���9����HZ��UJ��Rڮ�kL�RUx��g�D��Z�x�])zE���ƇbF�h)d��ߗ7�L����R@���O~������<����3 *�3�A��@M��$�Χ���,��<������AN\�t������GӲ��Lx�����w��F��_8�.,G��>�|\:��_�L�T����K�����,���~����� ��,�W_��m�9��|�bF�;_-��*2a�9j��h�+\�xcp�'p����9�GLl.�Xw]��?Yj���Ȝ�Z0�Z+4�"ք%I�#�t���V��H���qC��Tr��{g��Fs{<x�@�%���'���~v��>��~ �1?P�?@�_�¿d�KF,I|�s	� ۊ�r ��s@H�u�l{w������|	˹h;�γW
Z�JNU��D s	��9ۭuΐ^��leT�7k_̕;� �DLf���(�P���i��4�qn�<�ĵzu�#渕<g����H]���Ke�A�gݐ��G���=�q��X��d��R.�N�.�OWI�x��n�5./=��������� T�t,a��)��Ɠ���I�ˢ!�r#6N���ո��TXKu���,�T�\�1��:*֟�6�@N�=�&A�k��X��)m���7p������tN�װ�FO��`��Vl�Va�2R�k�j^��#��9e������k��ƿ��8��J��k���D����׾
o5v-w߮шQƵ���z+�O�c��o���P7���J�\�KUIw_�9�����c�7��ZQ���=�4)�6�6����!�������������-�I)����7�σL�X��Sư'�;,��F�WH����eN7�C��\V)R����)�+$�e�8&Q��v)M��B���ٴ �+4^�ߑ$hN�Ɲ�X�w�Y��U��9��j'���$_�Ⱦ�X����H)�B�/
�5�>�;O��� �}��m�!e�93��<�h����s�5��pZ�����W$;�r�ܖ����N_�Ib	�
CU
b�Vp��{����������/sH9��S?�S���=~���圇�l��'��x�5�Z l�?����&�!#XEZ����j%־
�i�k��?G�s^ЙvK�:��qZf�P�ǒfĚ�3N+��w�?�>9��zL�is� Y���Z��o �.�B�	W��h�Â��.���,�4BJh���������%���z�Ce��R&������W
}k�߯,�(8�"1�[�3���u���A��!�"�4kʡ����zC��16�EI��햇�
8�Q�6"(s
�a��/���t�#德8�F�x�B�XL3;:m ��*�粹9�d�	��w����Q���_��H������tHx�'�7�hІ�d���#l���������i����X��✡4�-�rxC����i��+�/�R�3�ʅBɜ>����-��Jyo���1�����7A�7��uZ��aIo�����%: ������a�3�5����<�	qb,�V�k���S�B���F�wkۻVMn���o������͹��eT��uEb���
�{Z�Wh[�y,H)��DǛ��G)Vyv��2���\��MC��1@s�"���`�QR�
�W~��e0�#��¼�ͱ,"�5mGg��&�y��c�����n	�j;�yJ��t�[�U�Y���2�7H)�m,�=;s��(�j�+2v�i ��y!���?�L�ш)qR���N��r�q{�9C��U|�V�qΐ�RE��C�	�8�u�.�Gsן�h�VFV�\���X��4�k�[��7�&r-�O�"��^��˺>��O�7�|�{��ɿ�2�����0X��\
wm0
FV�JI�/�J1�R
K�U�C�D)�m�Rh��7\��M�͖�
e��(����R"
\��+޲�L#�r�I @����4�y��]�}��lC�K�%/�so�\�z��a��i�nn�D�U[�̎\)��k�6*\5 ��H�C�J�z��]��9H:`���e*�*wϵ0l�AJ���� x��gA��C��	��
���|�ȑv�q�8���-�0�;�i����C$3w�aa���sDۚ-H�9���%���=;�y�:a���ZØH����$̼)�D���,��I��`�9(Ű��S;!;Z+\>t���:�|̸|�aI2]X(��RX�5YPT͇�B�4׎_�X����
~����c�E�q�7��7,Ɣ���H������7���b@T%� )���0�(��W���e)�<q�@�v���u_����R��h<3%�X~�o���c�����h��m� ���r�N#F �����
Ɠu�2'��S'FN����u�VP�חR
a�x�t���3���|��c�Pp��c�9�NqUH"gRÒ-��ϟO�Q�c��Y�#z���V����!,����1�	@�ٍ�z:�ƀ�a'=Ǵ	�kU�g��s�7ŚvS�3��K$��x��@�C���/Lim�C��1�*a�0t-
��S��fx-S	�ª.�܍������am$�
��B�?��S����?~���}�����a|��v������گ+�( �j����:Z��f�� ��R��h�����)�) $r�+�)�aƒ�ҏ)o�/��#�HԌ�ߺ/c�V�S-�B�3f����Y��Z��L%c�s�C�]��y����eu��1�V+X9����8�-�ω����eI\I$+���?wj��X{� P��~)�̄�pLH��1, j�h[�!�4���/���/�"�� 7��=&�lS�y��@�%���*�
@���\*�3sr���i�I��)T\\*tyE�sfs �Z@�1�qJ:'"s�L��,CmI�+��J��5w��D��`<�{�]xG��s���Ҟ�Oߙ�{�Vbd�%��ʠԕ�6���y�R�׾�t�b�z\��*��{?b���J�f�F���gN�!ݏ�
��q��!R�
��i���KH?���{u��V�/�k����h�)��A��Rʩ2�L'^\�x��6�4����W-���k`�͆���(`l[>���)�����cD;�;]1�����y���1(x��c����C��:�*��Q��p�R$MS��
w��uZ�	�n��>O���]ylqHx�|���n��Z+�cċۑ�'́���9Ze�����1�u����5��9�RK͘Z��6��-�/猝��h��L�W͢�˂���ρ�j����/ f� ��eu ?��?�0<~��}���Bh~�~��������Q. �O ֪m�1��R0�H� B#A@�~&%���)�c�H�@E��#n�()r(�PCY��%li�0N��S9��bܾ��]���
uINƻs��Sų�
���:�1m��	xYr���`�X�Z910Fm^}k8ݠb_�Y�4�y�h[
�R�:�`!����"3��N�&s�YE�x@�KF���{g�c��x����Gu����i"�O2�h���I��nib�dF�N	��v�c0�1
Ӕx�*%vC}|K��6<t���v%� E
�扈��q�MO�@G��.���k��3h������፬4���ɇga�<z
}g%3P�H�+���������!bB��"Ƃ�~��'/���B T(�`eV�� ��~�]��x��ص}#!=�i�*��+���
��y��`�0�n ���X#l�1#'�kǪl��X^ h[N-�'G�m�{�>�;�]��o}���/�g��FLD��B@���$d��c�:J
��7��ֹZz�jkI�t�?�iJ�y0iE��\Ih��E`C�y�jÂQ���޻3Jf4u�\>`SI�7/�*��<x��=���yZ�U�};�8�⡜s�"p�[���1��M��v�bE3��k=�Z�Ϣ`-��$��)@tMz[�9ca���8�Z6�o�ْy��b������׼^[t�o�,���P
H5q�����{��z� ����}��O���~<�=����'>�� ^�*�������8{ ��������/�LPjVU������Bd�Q{��DĚd:�A�K"8)l�Z	�`T��7�/)`�:�P�v�$�LNu�,�6��h,1é�K�C=�5	B����2gg�z`S`����J�u,br�X��)Dp���W+y��Q3�21��(�!�YMR�8X3�f�6�7��?_�5W�cY2�����&���.@)�íeA2�Y����!�t^ p���v�Iu�C*�3�k`���P�l�B?8��h:#tº�d�Y�0���4E�)��w�m�N�5�~��b+m(��._�q��l���^�\�$M��)�A T^o�P-�������W��    IDAT�� �{>��_b!X)��?X���a����gQ��v�j�po �j)x��;�F[��!]~)<4k�؞��	��5���$�Y[Z�j��Y�4Dm��$8�,}��؀�Z��{+�_r��k/x��/c�U����o��[���@���H�j�4=�'��0�-<"��td������:E�iȸ~w����C��!��"�àxЕT0O	�p��A?X���MK���n9F"����}A~�5�O���H��
���x��2v{�g_2A�t�7�� q�xo6QjJ1����8�������x˯U�P��
s��rPn�ta8�����q��'v�L�,Z6\f��Y��ic���vm�3�鯆���P�����w�����9�� �?x�  ^}��O��a��O~Rh���W�|��oz� �w� x�p[���������t0k�/���hE�����h�qoZ�k�!5֡@F�J1	^�s��B��<�1G��%Ԣs�5�R��?��5p�Ӈ1���Ak���o/�*���q{��
�!gܞ&�RI�Ҽq;�w�1����]׮k0.�� ����q���Z�N:�����:A �e�]���rH��É�/ �35f�Fp��]�)�Z�Z�(dY
5F��FQķ�vQ92}p��M�±e!�o]��!'�sLJ��7�EX��d,Kٸ�V�t]o���y�/��l���B!Phو=L��_��hH,���׮�p�n�N
�������l9%����Z�݅��l}r�� ��P9T� ����z"���A�?����s4�b�=��O�+���::VwD�"`�p
q��`_[O�C�k� "�T�#-����yq\4U�m�]�Ϯ���F���'	�ෞ�)����F�>f^��*�'*^���d��b�_9�9�L�'@���$?��b�蘙�����+C�%�P�ue�ݥ�����i��+����'�P k�3��Z�̢`�'��<hP2!D�SdZa���j1��v�������5�W�`Oi%О����Sh+��,�J�f
�9�<ԭݦ���do��4�h��;�1@i�IV�!��3�n.K�A�v�u%2����@�\���tx��|�"������ZWL��
�|���/}�?~ك�'~�'(�� ' ��_���e?����� � �+���r^b����� ��U��,����p���-Z�q����D���PH9#� l�b�8�Q���h��U.)@C�8O�O�d�T���x^�� ҼBΘC�Y�J�
QР��E����i�wVbuyhMK�$�R
B�8M��s׵�h�\R)��$,Hvh"p\>�u?[�Cp���R*�� B<&��!o6��8��;�겁s��vD�.� 4��@d,p
B�>�
kGc������ș��+���N&�ѯ�t�n?�e�[̱wf�C�\q:q���}�,8RdђR��H�[�EG!�� ��d�3��F:Ў7�0S`fM�Ôq>'�	� �C���,P���u�EW1�W$�}��Wՙ��\�	�� nr:��N  ��|���8<�l`�(��Z3��*AT��&��U��2�TaѶ:N�����F+p$_Ih� �~��_�*|�+�Um#��w��;�|N
�"�7�`��UZK��E7��Q2읰 �"���.>���J�~�����i�q:&4��~>�Nc�sշ���z�~o1�	}o��Z��^P*���0n����~G���m�	콹�ԊaGl�p/H1͹�t����b�8��F�Z=��!e�SD�8*ڢ�Σ���g�8y�	�J�{�+_#Pl\�ѕ�`�V�Rs������?0���r-H5a���x�fĚ�S
s����,�)L��t`ćW �  �O��O�o/{X��� `  ^��g>�W~P��� ���w, &�tRZ1�LU�!mn���T�ֲY K-�H�k��&��Z�W,�k�����Ha�3�u�9cɴ��R�X�}ױc�u�I%�����01SCc���SHs�z�� [K-��:,�h4���x�E�@E�xXc0�F)\�߬��yp�7-�i��Da�k�fĘ�8�)���`�e��	Ƅe��[��4��5� H:b��1����w���jC�AI���Ρo-b�"��7*��6@D�'��Mkq:�(��,j������T��5�G)a\?�1����!�x]��K�����3p���^S@V,s��
�`1���`��Bf�b����]��g%A[����!b)n�V��|�ڈ�����}�Zq��jF�-�����bpo#���o�
�� �,�u[��ӁZ�9d(�uGX��2w<����D�
fȡ�������JM&C5s�o���0�_��ɛ�u;еf�q�<l�"���B��AÅ����+�ǂ�ni����d�
�
H�)��BK�h{��!�x��{X�Y��-��7���mHAבEP
��4J�Vmcq:Pr<
M��h��.Xbf꟦#�S��\��֕��C� g0�K�[]˂>�����asDZ���7s��J�cZ�&'׊�"bJh�#�M�çeFAE*	K
����!���Yj����5h��)P�l �L������Ͼ������`- >��ǻ/sP}�cC۶�ɓ'���o��������� �
`- & ӷ����w�{�ҌʅR���h���=��i����G�%c�Հ!���n��S�Z;���9����I��w>cT
^�˂5c�����!�^�#1z��9�jBʂv9��� ����]��i\p1������5VeK�{�78����mj�����{E=Ӓ�$bB�@ێ�_qּ$ޔ*�o�#�(�y��x�YG	Jb�˅c�FF�P�X���e�@aOӐr�5T+��YBI>l0/Tb��y��Д��'��)���ޢtS,p��ֱK�~>o$��*��p�^����jeQ�)�ǂef(P��a�j̹�.�b��9O�%Eb�۰='�:J�]m�t�3��HŸ��!�0�Ò
�%+�(h�:TI;�~H�/��Ϟ��}�0�N�r�5�W�
,��B�Jʼ�S�ڬ^�Jf�*Fɧ� P�`+�I�\*�����(f�K��`�*�+���/n����E��_���v��2)��'���M��6nJ��a��f*_�$E��~0h<ŀ� vbZ*��P�7/(n]�����_Q��� (��U�����:3J������u�1�K"{Bӓ�Drs��J��b��0��;�Oʴ�z��i��j��~N��ҡ���pF�����j鋑:�q	�Җ����W)aJ��R��r!EX�unA��^��n�b�檶"��I�4ZĳP��2e�Є�~���{���G����@J)|��׏?>x����� >���Ǘ�����^ |p� ��o�%�������P*�d@C(�դQNV��(ᒐj�3n���q\βs��笁��"5�r�Kb�Ì�9X��u��PT�P�Z�2�pg7Q���&����A��V����[����4!fv�)�s�.�(�� _�b�<��q�K���G��^�{|�h
���C��]e�\�z(�-!�Y���P��-(Či"�5Ɗ����Z��_�̸�`��f.<X�Ӓ&H�?Ez��U ��nk�ibA�v��X{�ߝGv�1dQn�k3nY~�Y9cI��
�x�`�B�jTE��<Q+�_�S���6���C�2f4�.�����t�D��	��;�dϝ�������1���U�=��H��/E,3G%�h�^�P`P��?������΋N�P����_G������Y`U�mhZ��B��8%����ݰ�+��1��T`������������)����q�|�t�h��/~�s�-��Q4J����\�H�@wGX�<O	JW������)!���M���k,!�|Z#������R��F��s�|���8&t���W`������,�c4'GW˚pI��v�4LS���0��	۠�����y�T@�pG�F�mW�+��}�Q%� :�a�,�Z��~��pZ侗rF,yz�6GW�|;締��8ļ
��Xë
�T"*��"�C?�6P
w�* ����	��  ��o�'O���<y�?|�3��s/�����G�  >lܦ �(m=�^˨�Ē9��P8�R���
HTp�5�D�S��kA��Z1�F��n<`\�%?�qJ@*V�)bL��${�ȝ��7"*���o5Z�	&3$Z�B�8ό�<�Bf^}��B�  pZc����������-E@JS�g����i�Z��)A�Q�3�%f"*4���y��R��sdWS(�S�T��xS9OK*\)����Z*}���\+���W�6�X�5����V��D$o��GA��c������Fc�"�9��E�8e�xA����8Gι��6Qz�I^:�Z+�.����A�i\>`���#�����_���̽r7X��9��!�p��u�Ͷ�W���y)�B}�#�/��x:D�Tq񐫃Z��m�Ѯ¿{Q����;cH��l��CFY�ϟ��t���
}ca��xH"�m�#s(��KX�b7�����V�!W7Z& �Q����)��-�=�;������
_��W�Q����x���~�����@(�|���k���F~/�9E�Q,���AcIv\&N��g���Q�}(����8��|���#2r*�Fǂ�7":�r��$7&����C��Ӊ�@��E͙�K%�\��w��du��7�y˵Wu�P=SFL��u�K� �����
]�adE�%�(Y�*t���%FXc�I�s.�y�5-B�j�B�O�XdUPH�K`����H�g�Q.!����o��?�Ǐ�ȏ�7��}���o������OJ��G� �?x���_����K��RH2�ol��6>�ࡼ�T4� �|4Jcﺻ� *n�RIT��Lg��7�!$+A�ʓ�b�=��c8�3��xM/Σ[��XS��"��4��2�s����u�Z��� ���Q���X�1�X2�y]����kE��7xt5����o9]X����B��0�G깰3�n��9��F�t����b�2��b{�f9M	�S�<����w�8�R���Yp<D�5��lb�i\=���x�����)b�2P�K�^��Zs\��+����(;��@r��g��4���K!��-X���0�-.0��xq���8�}�)��ag�ti)vFhu�W��]?]��;3�Yv��G6V�pq����pi���I�uO �����* Ni��l{z(lc�]��+c��0K8�fR�\�Q�b$q�?)lG����g�fF�P���6p�.�R��U�X�I1䪏v����/�s��i:o����s�&����"4���1��1X�a��"q��S�w>F<z�÷,��걿����(��pV�xqx��ƺF�w
���m(�  ߬V=�"P�$Η��h������@'� 5���b��S�C����I�b�b�{����ic7��ɐ�B�\��W�
�;��YrI��i	�9Q3 �Lch�Q�!)W���m|_�d!������W���P؊��,(��Vc���z�u��AП���o@)��O�<�/���/�_?��?���ƿ�'y|� ��@�� n�ӔJ^oTZk䒶1P�q?d`4A8S�q���MȨ�D�^�QVL���R�PZ��o$-P[��j�i���C7®iD%o�2C�UL�-1!��Ӳ�h�aR)�2����Ra�ـ�uN�(l�;q����9DܞgT9�j����G0�1-�Ρq!0~W�A�
�ak4���\��jű��[�����9Hb��">�
1R������>Gv�C��]q���(�=Q����0N�C�8�y^_'g5.����1�����0�ͦ��~��WUq���C~������-R� �\�6���3�)�8�R@7�	�/r,�:�aG�`)���b!�E�\\Hg�%:6��S�5������Y��w¿��u��
�7������y)�`�曞��UZ�ꢨ�n����YW�/0M2Mq|͖)	�S0Z'eb�|σu]��U�{�w� (()�_�2����W��7�����'?�	)�R,0��ѕ^�:�װ#+�^���ڍ"v:����~y�pWN���G��&B�ʦ����3�s�yJ�f�"�R8�"7�kNN$��I�t��Ky�)P*�K�apL��jN��AJd�v��BJ-�*'�!�%/dxkc�8�M�SkA�;xgQ�QP[�U@#�Kk�[�XN�Z�Σ��E����k�D���A���⨑j��m�c���G>W�	a�Ą�|L�q�������{������8���?~���~���(��?k!�Cp��x  &��9���2�쇪h4�:���?��I��Ac�ܴ�:�҂�3v�e�X�4�k���ܛ8��F��[Tc:��}�֛]�u��[`E*s0w���ӌ�	�Z���a�D�Df�R1��V��mVC������T�\
���rh�` ���ĄZZ�7���>�;M��@N�Ń �3��BkHB��Ue��8G�K�(���"ɍ��C��z1q���V:Fv����ư��M���8���w�E׳P�t�A�L�[y)�-O@)&��Ƅi���G:��3�����),s��Dz�5'�����6m*�R���/�|���b�@���H�^��01Pk�r']"Án�#��{��{��D��������,r�J']2��_o��Fi�S��cZEw���"��Z�l܇�c��_�Z+�.,�Z��)�s�

ߘ��i������{�Y%��y>��������ש�|�k~����vv[G\<�p���&l��ɠ�FJ\+���l�Ypq��]o0���]�S���_f�>Pv�H!�P�YtVQ��5c�Q6�5\�(��S���N�**���b�`��s���� �i�������ꎊlZ�o�8�������	=�h0��8N�p}:#D�L��?��[) 愘"�f\�7� �������oJ�6!]��V�F�YSBdakŭ�o��-��w��"����w_���?��?
 N)�pc�����?��x����~́�8��(�8L�$E�}�� ��፨R��Z�1-����i��Ҩ��v<�8��i��"�`�#�����Ok�`y�;6Z�8�;�����7�w��>��%�@�MK��cD�8���-���F�e��y�1����%���D�V *Y}ﷱﺪxp�H�
�lJ+�J(���������v�Ѷ��?��7�\�	
��AL$N�_93�A*���s+ �3vK ��COǄ!��a�8�m?������5�=�ϑ���`�Z�����|J���|�q�MSư7h��G����Jb�����lZ��)G��<ed��]>����2���p���b|�o�E= (����ZW���](���ŋ�!�m�%�8Ɗr;@��r�cǿ�)���:JZ墀�T��립�8���r3����n�Z
���/S�����yL�O,@U����׊�ź�ϙ�����0T�x��;��P��0�71�M�Y*?�p0�dPX�)��̼(�^z�W�����ǣ�ZYI)�*�(�C��|�IL�ǈ��e��)��"�	�rb��~�n |I�p��������������dꭦ%�i.�,%��A)�uss^�"�IkD����zOh�& �v���d�*����"�.��n��JX�R輸'#�.������������� �R^
	 ?��?��R��U�u������e?����� ����� ����7PQ��&�q�����GDp�	!��3킫G�#��F{�)�ԌT2+M�������&��%F���,���3�D��nYw�F��m��+���}N�<%���ĜзSX�Zsg�:��
��8�8Θ#��@K��yƴ�V�    IDAT��Ҕd??t��h=�Hm�T0��8Q��F�ȥV8gh�Kَ�s�A���f		��Y��z�Q���ۗa�)��Voѳ�S1��z��x���C�젔B��Va�w+�B|r�������i�nф������k�M��U�l�ְ�cPSٴU�{���)2�������xH�[E�醠�"���*)q��X F��qJ~7��Z���\��H�_|0������ÔV����.���8c�z�ႂ.e4�a�r��������#���5�H�%�<���� <����"#�"���CWJm�����ݪ*��J_���'hƘ�e�^�r��*��sB�Dk�	�4�4M�֐@��S�7Å��#���k��+��ќ�L�J@U�.ܖ�G]����f�{^��V<{oF�
4@�0�i���y\>�����a���QK���x.u�\����(_����O_� N#'u}��6���*G��h���������8��;��m�͡�p������9Kb�f�Ɋq+�Qz����ҕIU��6��.$^be�ƍZ1�J�]��X��t �3�֯�Q�>^�u�Zu��p��ɓ����??���??L����-��5+�b��H�R#B���*����*�3��+����&A+��h~��%����C�b������0j��Ч�v��KɈb-�ǒ�6�h)F4Z����,q�Fk8c�R��K�iZp'xk9	��qA���1���[�PJ����r,PNS@�0K{\"��TE	.�[�
�
 �@_.'���o�`ނ�r��$&�#���hG�$6\�{���Rb�y���ĲR����t���������	B�[�L%�:62� ���a�髗�q�nC���a*eSXWA��U�/c�
`�Df��b��<';��YX�dy�)��,��^K����*K� L��mý�_�:���������!�����L����
F�#?�����{��U���C�"��;[�V
��8_`:�rNr��� ,�=�������������MD��׾΂Kӹ)���Mk`-��a�RpH��\ !T�#Y֫�Xi;�k��[��7��FF�.�s�5�A��^<��m�yۅ7��ᆶ¦1�|q尻�p^�t�}��?�e�h{���¨�8"�)"�JR$8�:��FմƠmh���]	P(��e/�`���]c�����[#�0W���^�h��2Gq��r�,ɢ!�m�X�����̢M)޿�Fڦ�
�4!��-R�Ja��V�-��H��N�I�w��<O������}���L ��G}��x�����-��?�� ���f��k0��֓QJ��.H�_ ;he6Uy��X�f���.�P�8s��r��lKUI�O��[{o���eA�<�˂�7К��]�n�.c�U���-4� D��o��g6I�S��8��V�x[+{�5.��ht���e���q�����p̛R�y�8/QT�e�A\*�������l��<G���MJ����5d_a%�{Ō�1��8:�E����m,چ���LP��E���8j�q��чψԶ���eI����~~L��q�Za:G����G�
R �.��8�N����k�W�����OI�E�@�[Y?�]|L�c��^��x)�n�(��DQ�6
E��Z5�}�����$�V�<�F�8<��z�ׯt��\$lV�o�����8 �n��o�J�o
��Rp>��בY��m˱2t�2%8II�F��ڿ�7��3ո[T/��)F���;��c�}C6Cm�.|wɎ�i��n|�][�8\>p�l�ܿ�c��HL�t.��F��(;p�<ځݹ2�k摅��1�(d"t{��h1�qrq���q��|#��7�Ih����z���D{hg1�̪`�äEͩ�2e�̢��v��8��0!.Y�~tݜ�7�0B��0'�K���5 ��Ǒ�b���>���S@�I�S�l���"�@�^��Vi8͉B,i��䒷{6ك<�cӊMR�O~�_1�@��QJ���|�U� ���s��ܿ( �����XB:|�w��{ZS�ˋ@K��xߠJU��qJ�ӆ"j��$,��y��'����I �`w��{�"��VD
O!��"9�;SXS�r)�>��8�f�+���$�>ƭ (r�j�SFkY��q�L��@)�o����90�w������Q�5!&�3PY�/1nt�3��#C�DXT�K��<�R�^V�~������K0�B�ZLK���s�w�e�R����Æ�=���F�v}�c�~+��i,��a��\���O�M��Һ�Θ�D�Z-���h�����i(��6N��?�xv�1����uo
�=�9�д,2j.z@�u?�ĭ�(���2m�3��G;Xo������8�v�����I
������ `�ѡVon��}롫�&Mgae�m��;���f?o߆��k��m���c,RL�P�#��3�'��JJ<<��\��޽�����8�����w���̃�����?���Ÿ~0�9v�Fvr�*0��֊a�P&D�� 0��x�"a9 *E�+� &�u�O	�Og�\,���:O	�9���@���fKpԋ�E�m6mg%4cY�Qx�Z��������}ג�y:LSB�	�r�V�A�:,1#$����j�b�WE��<#˵�j��0JVX��.)Y� ��p�a\hE��l����]"�T�1B6�XrB��@	[����j���]ǈv�|��� !@��ilƝ���	 ��x���7���Y2P �ݛo��w�s��\z��O���P �?��;�`.���i>ZcPW ��[eX/�Tw�BT ۣ*��bI���\�� ���5�N�Zy�)J#�D��&޲k<	W�[���&gC�FT�,N��$��i!K[a��q�E�>!Z)���#4�q��������<a\�%aZ"BH�TƗ}�5*s׹-�%挋��J�1h��HX�Ն����ZR�g6e�1��1���zU��	�<EhE���H8Q� y�����V?������7�}G��4e�?S���kq0���+�r"}0���)�{����t���xH�f��k����!�[�Sqw�a!�8%��$
�����,sق���R`7	P�@r���8v�%s/��z(2E�Zr���`��)U�o��$V�u��! �tKFX�h�A���jd�$yM��'\���ۜG��D2�u
�HD�xNw�R%�YR�8+Z�/��R��Xl�����_ס?�]+zW��[o��]�t���Y�ys*8Y솙;�Z�D9�D�O^���u��6 g'B��#�݅�t�pm�]����Ta<1{�r-x�G;8�1��Ƒp^c>3K!��ű�2'<{:�cY<��<�-���Z\\y&N�Nf8kp:E��jG
��L�,v�@�@
y���%D��/�١��y	t+$ip���O�"�50�e��Q�@�	�y�n�ޱZ�(�VL�ӂ��Zc��$LqF�k�V�~�5�ܶ�7���%�*]�U�#����? |�|��e>V
 �ɀ��Ǐ���|�����P  ��� �ب��S+�f8͠�*��Z+�_�[V�L�k-��b!�'�HQ�6�S���JB�V!`�)�B���;�܀9B�8G= ��]bD머_���8�]�ƹnh��!X-;�R�礂&[�zg�֑�-����8/P��k�N7b��f/Z�����H�g��,��fտ����ޛk���}�g=˻���,���¸[r0�͒�Td���Pą�8$�*�A%dbd#R&;@d0HX	�Jf�A d�i������Y�5|�s�i�y�L�Tu�L�����=��{~����-~�Tp�F�bcb��0��R�v?bwphZqRb[���6>1o˕E(��'�p~>����yˢ@2!���y1��;�iM�`.;�fA�����)Q�7%��]@�gga#��"�?x�\2����	�eۮ�/�����zt.�1$����7b�	�+lK]�hV
���v��خ#8猺����Yˮ���,�4t�p�4��O��Y��������z�sz~>��qёJ��{��0Ɩ�}IG�!#8:�C,�m.BJ�sڥ&|I�??u�����.���ŧ������Y�(:!�胳��/�)F�����v��+jC�F��YRc A�m����u[�����۳0'����`H`�u�ˈj�Ч�EY~�-�.a"���;�͹�;"�u2����=; R�M3��gt�a���ȠnV�����c�������i�Em�CBe�ka+?#��1����NLU��b%%N8D�Cp>���� ��sn/|��O��1�r>Yh\Fh��t��9��cI��RDʱh���ۜ�?�?��A |�������5ڶ�o�^ h�˛7o~�sx��x� ��tO��|��O�>I�m�\�'J�(ڀ�$*EB(��Tf�BZ�R(�B��԰������N���L�E���(�,�u���*,���R)>J>��Bd5�JvA��I��P�4�L(���2K7l���R!j�y�Pj$�v�V��Kfp�0��~t�Y��-[�Ib�����>��KUv�/AH�{g]�A(z�'[`�W�;j��m��llu�����|�ESQ U7
M�q�6LWK�F8Z[�%�FK�v�pv>λK�L42��{Z�LY�I£`̗ݬ+D3�G,���µ�,l��%5)�1��,���+�^�,x���k�+�5�㐰��!���ŒC�x���DT/L#1>@���=�)���ˌ�R! �v���}k$*CܲR\D��Y�$	N)70P
vĄp.��S{#��1�ѱ�bm(�3���v��H(q�Uͯ�����!�S���+������]Y,��ϥ�<l�lO�o��Lx�1�����G�p���ԍ���4ʔ��Y�4l-A�|��j�V�+�E��Z�]�҂Z��7Y�GӪɫ�\r�e�Rƪ`��;Ɯ�!$p|�B*�~�E8&�E�����i--#jKK���!���\h@�<ܤ��(�!�XC�L������
Qx�˺FS�R*k �Ĳn�Y����8�Ӻl�<�Ȯg�	Zj����.ߔ�����T�1G@�n�f�p�t����x: �c�������>��øq����u��7ߺu�W>�s?w�_�E;^. p!�t ��y��7*%˅~Ѿ�B�V�X�Q u 
�2���5���B�E�͸��+���ⴈ���������b��<+e��c%(���Y7��=� ZM� 6�&"`ʤ���_����T�>0ˀ�@���h�Aa��Ķ���'�;�>ݜAdp��:d��t
Ӥ*�C�	�0r�S �t�X/,�� D�|�QL,������s�C! ��]�kW����F�m�V��?���v��� c+bX3ra0�o��aF�����7{td�`���$L��X� !���V1$��x��Ʋ�Y[�%ҵ�y�g��0�[�,j����}���(c7�s=l�g��ʋNɘf_�*���']n�i����L���������7���?P��L�1[���n+2��d!S�
F�����w8:6X��=T�Y�;�x��ML
I����y���w��ʋ������`#!��ǟ���N%������K�nL�w�8D�煽L�-��9]�HE��*�)cx��6���;�)��z�\ꮺ+��H��~��H"S#SI��0,s%����EKp��$�C��Oc,,;M�t�Ƒz���
Z2�w����E�
��ȱ�(B�~�P��ёPW��N��� �P�:!Q�$˪�Q�@����$"�8
.�Rd��a�Fj,c~��]�.y�ӄ�m�X.a��8G�+���B����3 M����xNN !�B؛7o~�͛7��w����Z/��r) .� >� D�Z��b ��Q*���K*�5Y �=]��HxOL�O����ɏht ϼ�#Z[�%z�C�|��b�)޲��G?��,�� �(?� KW`"���@	�'{aS��& �l+>��Fk#o<)9۳V����@m��Nw�93�+'z��P�\��"RԒ��ٖ�H� �h�#�����@01el��0q8�rA\�����s�w~�^���n�g��X	�G�y�	#I��J״܉�2R��O��VR�*N���șú(��a�������bsJ����F��a�w_��(ے���}(���S5r��� 7�9����ݺ?H�P��Rc��%��q�U�`[	]]����5 ��� ��n�;"Q�hk�kU@�YvCO�Mհ���2�v�"��%����q�"#4p~$*��P� �j��!S��b�� ׾�u��S�b^�>��. G�����ZA��	�R(|[I�1a�2�*���F�]jԵf���X�
�(L�2nҴ�����)��8a*��&w 鈢P	��Jbu�qc,|�������!���)�i�.$;��E[���<�8�h[��#��N��-�4� !d#���G eԖ�� ��c�S��>F�AR���!�2�C�7AlJH�@�֦��H�G�`3Z�Thm�>����XF�̦�/n#4�и��x��ZI�8|���� �����|��>�l��� D��ܺu�oݺ�37o�|๼ދy�\
 �'mr\
^ #K ]��+)5)�g����E��r���P ��@Y�z>X���
!%(��3#[[�(�g�̲��1��{D�La`�R���, �#g�uU^���ecQYH�J�c��]%�,�c.���X��Y`[3��h5�	��E~tԵ) �)@3�#��Kh��zQS8X,Q)G�XԼ��Q�ɻ�ڼ�����b�Z���B�,L�n�]O���enX��}�}U�%�}�9�%Ƅ�#�����H`T���5��ʠ�������@�Cn��[��,�?(HU����ӓ�1:��c�#p�A�Ց.
��Z�®ձF�&4�!*��8���X_�?lc���������"	i��G���1n'����wp!�5��+q�q89q8lI4�P�S�t� k��V"���>���9���$�V� ]��/�
��$�(�F��/��xn�|�	�ތ����_���3�b�A�g�n�����!�3r���<)�Y2��m��1������a����be�#��>@i�Y(:"m��0�c�}�b�8��k�by�d�߹T4=	1'�l����*�ʨ����n�oFdd����y)ҥJ~��5���UE@Ui�o{T֠m,��Y��Ӏ�g^μ��i<O@�8�-37(�ˈڔT?A��{7 �y,�6P�=u8�PR�'�=&`���I�'�}7�������g�p�x�����q��m�ܼy�'��� ^n�����#���{?p{��B
$Dp~PX2f�!zXIR��w���x�K�v��b�N����p�S�=��Z��ARh!sb�.(|i�
�.6��~	�ʢs�����{��]45 ��` �)X��2f�朡�@].�%TВ�%�9�.����`s�/�~���tӕ��*�
.�X4��ݳ�w�%W\Rz��/�����0�h������R��8ᘰ^YM.�zI�mӰ#2��)��B�V:&*��������\��f����\�$��v���#��V��㘰=e�E��Ҝ?�KE�P.)�)c{�0��'|KMA[��OO#�i;��=��>�C.$PUL6��Z��R��꥜_��"m@��5ڥ����������@H	�4�mp��_�7��W����,x��<�<P�jX�]����7_x
?�{���9�� ]!U#a,��M)d�=G*��H�Ȼ������s�:eܿw�B��R���֢ܿ�ƥ�bDk�',1#��QPF�T�H�P�����}���8�0=dN��6킝��s���g� ���p�,2�%���-6�ƞ���3�v����"�"�%P���)��C�\��1"�8_
Ja��5���w��"�    IDATXk��G���b��}���h*ں���u�I�T��qcJ�k�;�H����3!�ҟU5[�t4�u(�쒥"U�	QO��_� >��?�������ƍ	�	p��ͯ�9ۏW(������3�e!�e@c�焬)z9e���QBʒ'���2Ʃ��+�l �r�]�cf5C�H�7ZphtE��wЪ�����\a��U:d@e��`�B����SB[WJ���@Q�s����7݈�����k}a��p��1�E��y���"�9�8n+�2�M�lK"}�S(G(�#$Z�� *�p�Q[+T��LYZ���6��SxŃK8�;h�َ�b�.fq�R\$�>�9�"��mǺbR��|�=����g���X�=��3��R��-Z%
}.�F.�nd��ß����=���q|���n�:6H̽��xB"��61�u���3�.�]j��uChJp(�	Z�5��Bqt\�rM �x �����*E��+�4%�N�S��_(g'#-�)�ϵޞ���yc����6
�N�?.����_�*)��.
��+𩕙o��E� �@S ܻ{��X����=�����?h�ۻ��K!�� ��K��n�fm�=)����G�L4\X���!�n5���n�0��%�\_D�)g,.�F��Z}���ss��$�1�@Ɨ���9��?�-�L��@�p��C���P�όVk��<�$��@��=R��YBn���b�o��ZT��Y�)�(�O��u��{�l6���PB�|6kH������L���w�B��v����L�\"�Q�Ja�n.gMy˒���&F]������X</ ��#�|�t=��>V�Y�s΍bq����?��|���S ���@����%ճ�܌	.��ت
c��~�]��V!h��0�Ug*3.+B�VB�+�6���y�5}���eޤJr.��{�wDD�H��/�<����^]�$|r�"��0!)��XT�~�ap��AF&FS�"��H����B���؝/j�^sBJ	֐�0%��PW�v!�-KZK\=j �я*�0		�ܺW��q ��X-,r�����3��L?e18>x�$,'��d˥�ji�B�b�
Q8K�D�X�-���.���U����3���X�6���nWl����_��l�B�� ��&��+ ���*.1�s���F�`���q�g�RK�
|�jT�<����<N�;��=�P���/~ g�v��Y7�k��D?}�\(ۥB��!Qn�X�ռ��u�3 	|��ϱK���k���xG��ș"�q���k=y}ď�\A�bfL���a�g+ r���	�MI�/~�����U8�^Q̨��ZW�n����b8;�F~��S�ӻ�ۀͩCݰӶ�{�6!f�Z��h�4���X,���F�U���hE�q�3�:��92�ɴ����ox^��7b
DB�K��ŗ}���,3�|3��9vX*]T��*h%�\%�����ji�s�h���hZh�J����2X4�����1��q��\����X�}����!%���\?���{Zs���)xh�gz! qD(�ܘ"b�s�K.ݢ��1�A0%?���h1=����, �i�; W�^��g������\�B�&� ����ϫ��k�X�˭pY�PB� ���o����?��R
� !EF��{�`��Kj����,!s�)U��"%dI���
�6�+�.��f^Hb�h�����\��}��Z���k���� -$��X���J�1�hk��Djڂ���bY�+��
��a�T��%yHYo�	7RBw豨-=�X��5��猪����X֦�"����m��b�`�	�֢�]Q��Ab���9��+�����:���m����\iѴ]Ǚ�)���IVe���,�Gy��TN�� ��XF�;'�@EsLW�T0��SOt��`[�2R�X��圤=�yZ<)��hZ"^�X�,�l2�Zd����j5ckyN2v[W�z1d솀�lM���������օ`��X_�0��iA�����;����{ k�RZ����c��c&%���"w�;=R拿��  ��O�֯�W� ���Ϝsx���q���V����]�G �}�G=�3���?�Xv%p��=���^]�*�,�7ғ2��؝{(-p|�b�qtL��^�@i�ӻ#�E�/ǌ��:�!�t>3��`����h��@������H"b}lq~:b��І����a#�̷|�FQ��yB��}�?�7���v�|�#f���A�5�o{?���1��Q�����]1T�39�y
�"���lˮ�U� �Kj����Dd4��w���y��?����)�0�ș���؍�)�Ҧ���|b֊���A�	��9B�v	����(���������?��  �rΕ��y��g�����������S |�`� �?��\#xD������P(A:9�H3�w\"�g.�JHf����.(O�A-'�]���k)KUL�+
 CL3�H)���a���u��N+k��ȰV�9��1pG�X�ME��;�l,	��ժ���@�節���gk)��?����cۏ8Z��Ҹ=��:Y�t��TJ!�Ib΀P�(�F8���*
M�ܻ!`�F�&
��(���M�q����=�m���c�8^1Ac��h����@H�KYP$�����A�"�.5V+"��<Her������>_`8RԊ�H�ت�.���c?$����,&���T�sa���~v�A�Jf=��J�����1����!$�7��.�W���«^�0��/�l�s�����P��� RAL޹�pXk�ɟ�)��|�<�V���Hǁ��~Cw�R�#���G'��
��a�٢�K��#��n� A7���mw=
(�ᆄ�956U���b*��g��� ������x�]���1g�-Ѻ!!x���b��6&�2���ڌ}�p.�$n�<��G����~����]����F�.@����3�����>@[U�
۝�%�����DO%I0��W8��Hș��j��Q�C1��[>zj:Gg�?���|��M��;ކ�}�  ��萐��,�#�֌g�J��|���<d�LPJI<��齔��� ��=���GGG��ܺu�o߸q�s��k����X d<C  �T@B��	�DF*���Q
�Rf�d( +�EHF5P�R�`�*�A\��ѹ˪Fc�,l	~!E�H�X�@�3; >ƒ]��E���<�4w��n��MY�C��Q x��,h�RYg0��'��ǝ|���Ѳ����BI
I۳X�����c�Q_,�{����J��}��"��+G�,��*5{�cH�����S!P���9-��C�"�c(8�ԥ�!������qi�1�l1�w�h�ӭC�K[:q�uc.����G�|�	�9[�s�ޥ�1�4�pE �)�ʚvF��Yk
Y������V�h>���.4L��D�%p�ї�����:��7���O�I|�|>��g|$.�T
��\P����������w���_���>l��. ��~��ȸs�N������o�+_���F����8P�Z7u���z"w]�r�����q$�:��"��2�fy�B��1��*פ�����(�T�S�&gA��d#fFV����[�v�.���x���}���#|H�9c8��wB�5I�m�`+���E��YS)��Ż���G	��S#Y�"� �5��#�I���?�ų:������_[� �}=b�hU� �l�@���Z0BmWq
���)��G���)mq1xA�K�	�EpI ��ƍo�R��G9z��G7����r+ ��V�D� rN�~ハ��?�d	�D���Jj�Dq�K
j�Mh��P��AZ��
.<��(mA��`�)$jc�QHx���*z���ڊ;�D�l�����@&�͡��n����RĲb���J4��1��ԕE�-bdP��VM�v{AƜQk��݈e[��DD[3Eps�s��4Z�"���ڊ�*�湼�
�"Di}k%��I`�����9��`�*K7���aX��ZH4��B0-9�Y�,���jc�v��W.0���"a��\�8p�H�P=����q���(K	?T��B��`uTc�q8x�*��CG��1��﷞��k����1p��vۥ�T�p�0%5P ��X�R�b��#;�L!4	���8&��V�O�q~Bq�8�g�C����l��[��wL,�;��SL<���:����Y�߂�	c�E�s1��|��� ���;{#�W?�3�9�ć:]!�i#L���Y��@k�T��������8@Xt���Z�:��6��ȏPŲ�";G��D�a����kxGQڽ;B,S)L�$V�nGU��� ���i����Y�߄��+���t��ݦ����Q87� �0І��ɿ/��	Mm
���GZI�b�c������!&�#w�!'�����{N��� #4�0��G��?#�~��q.�@�|9]�9�*S4F� ������W�\�䳳�?��c�4��9g�>��c?�|_��/7�e��@`������~p��X2�K�J`D�*Ԋ�r�H�dNeN�'0ƀ�q���g�@�-(�#��(�C�����>�BY��CϠ����=S���>�+�(m}��ȯ|@?:����n��;�m�&^w���F�0:tn�o��y4Ŋ3y�� �s
���n��V��J�(FOP���Ea<��G�R�	ג��SyHt�G��#�&�0�a5y�~L��D�*M*��ʘ��UkP7l�O3ל3]@?���i�ζ#�{~.$����C�-�+@qp�~A����Rk�����v�(��l�K���I8}Q*+������-�8�fp�*mv ; \h�.\�q�mM\���h	U�K�>6X�5��g�8:>>��z��E!!��q��"-����x�3I,�Y����|_;9��ߟ�-e e����9��QJ`�xT�D�����\7xǶ�0Dl�	�QJ��W0P���tH]���()�`�!b{�9p̍h[+�"-��'Jw��Go}���N$��Y�>��W��߃�8�z�Fm����ZR�����!�j�Ud�ϣ$�� ��~+�!�����'�{8�ƫ�9/� �C�x�����Q1OߗE��DE~�X�	zSBq�% ����և��{�����p �� ��X��SA���կ~��}�G��������[ <� �F { ������<�+S)dI,֘I=*�b��cL��B� *���D�\d{��0�h�M�0%�H��`��<b�\�6.��5E��R����2��QV��@�  xG԰Q�q���z3�|C�;�j�UM+E��+dd��]�8Ck�;��fM�� 2��ň�t*L��|/c����g�8^W1c�9_"���7�ſ���5�F[������v7B���ek��t�A�)Xa P#�Þy ��w*FKt����
78Z��c�q��ۏTz_�V��S=�s�k*hᘘ��"����p�~B*i�d����W����@d,�W��pX���6v���㎻}D��� ~bk��x��]�w��97-<�/���!G��2Ͽ'�fx��]����KK�sI�^;ϳ ���!'2)~��!�f�p�΀��`���
@v�g�@���%���h�����.a���,�ꆤ�J�a��+KNF�gx��Gt����"�G�W+負�D,t<O]�	qY���� ~��k~�{!3p�n?��gNG���)m�!m7x7g���P8dq�0ݴw�����'�{?����o��pI�d��n�
V�y���,Z�2�O%Օ��S=
h�=�-�L�����Kr�1��� 죏>z����KR�\>^��d�X ���@�A*���l#\�bi3�L�!�XeQ[@�]��u	⭩�D�haQZB	�J)�{�P��C����������3�*��bsV��Z�mPYm��;�ʹH;�J��a�T�E����V�F+��C+���>%�k�s0������P���
��b�@7Z��(���Et�Ge�V�̒��Ɩlk�
�`Xϕ�
M��=w ���!�Va�2%��\�=1'"��~ϙ;4���[��E�w�iz.�<xk�� �������Bc�4��F逵bV��=#Z��n@M;>#f��6�Ja�2؞��9s@���.���Z"�CD��X,s�>b�aK�Pp#����e��)"ǈ=R�͉�~	�R89�����#�8�K!|�k>cq�^F��PJ`��g�F�&uS~ñgQ�\A]7
�#!Y���:��:�1`jZ"��Հ$fz�68�J��6������xܿ;`p��*�Ei֬T��������<������� �`�)� M4�ҍr�wPUJmU⍥���t�&|o�����a-�"Z���������,|AO��ZB��_jI��X��ZKp�ݍ�����.
�i0	 _���9���s��?	�E?.g`�g`�o~�[�����
S���:JE8���QI[��d_g�^��	�Qff��Qk���c�M���n�K�����p@�v��áp2jm�������C�%X)�F)�`j�8a`*8���.�ǈ�}_Z��m* �D�����Z��3�nߏ���"���8z��B�X�B�CPY��G8O�n����UI�+�S�<�#rʸ�aw`1��;���q�l�J�񽏸w�ù�̩�*؇�L�kl��MMֻ�B���5��/���m�u�����)gr�+2��߇��Qx��!Ђ7e�L�Ô-:�;fՇR��+㐐"y�!f�p�!�vEM��5��p�D���Nq>3ٝ��~܏�-�9$��i����އo��������|�m��M�����r�?����3�R�ݧV�X_�'�;��Ab�e(��ɢ��xH�Y��ȠiY�_{��#�!������J�C@�����Dp��,��PUW����dB�죐bB�P#3:�������}������Y�ٛ�k����\׹YD�rF��ق�G?��@'R��_+ɮ��E� ��2������:�s?�sxRЍ%��}��F�����=爈J*X�O�mdz���ɮ��gj��d7�b�  ܾ}� ����X L�\�G��)��<~��B�(���Vq歕B�(x�����>��o��FX�a�r�(T�L�����AL,Jd�f(�0@`Qը��V�6�<�6E��k,��������Z��L�*���"�����׍,"F�1����YÐ$�3z�Џ��q~`��VVs<!�`V�ȱ�1��(�����N��d@3:1򥢭��=s�k���<ǟ��>p���Y�M�w����&b�89��@�yĐp�Bi���k턆h�ձ�jm�4��r�ZHH-�\(-�Rq�h��"���R7Dl�F�{�Ǿ�%���\#�6	mi[d�M�b��L�O)�M`������=��BmN��Jc��'>��`#dl�=�>X�Ʉ�������=�c��_Z��G�y��=�a��m���G�;����`Qi��o�� ��/�w��2?m�&��}m$����~������؞y,�4�Vή
�5���Xk\�*)���	�B�ڃ5���Q0V �1y��;�ÞĿ�>������d��u���6�s,����E�����>��~����s�譵�; ��;$��3h!�r>C(�Y�{~iy*��;�)�����/R�7��[^�er��=���o.g2�]Ӑ"Ǳ��?�f��~d�&���5RJ��w�7�� �@��8;;{ó�Zc �7n�ݾ}�Knݺ�C/�_��r, ��
ԃ'}`������V�J�(�*2!C+�*YD��ç��)�D�    IDAT#aD�-��p)ba4��Qd���Rd �<��Ck)@�/B7�����]�a�V��-	���8"O��7� w�>p��E�!q~�nk�g���Am4���h5TJ1t(ҭ�\�O�u�c�0:T������0��2��1h��9�1c�e��	c��8���lG.P���������2t+�)���,4�.��eh*R���bAYh(#�+��hO�gFK��z��i7�Z�J��w�9�;�~ ��a	D{O��,��T��<2Ƅ��i��,�Lp�����3���՜�`�d���e�Ip[����7�3{�C�2.�(F]?����Kx'r�ω��:�q@�ɍ�C�p�!v��3�����_���{���z�V-V���me�������e�X�~8�Z	���O{ v�P4!GW-��XxGq�8&q�:G�d;�;�"���w���x��b؞�TU��:�Tһ���n<���`�Y�dX��d��(lZ�����"�!��x�}�NO�ө���}��K��*����.��2Dau0���i[�W�`4��ڠ�����m?�O^॒�������z��{ �)�k���;!�J z��R�`6��
�$^g`�o���ʕo}�_��l��7o���7n��Gy�S?y /G pqB/�1�9��_��;��������$!�;F
�a�.*��iQ+#����R�0XZZ��������xjY�%u0��Zjl��a`���2�Δ�zXePz�32B��WK��8�����Fi�!�pGT��@Ujcu$��`5�S��WP�l4ۑJ))p������0�dQ�2TA�ET�ٚo �-��7�t��pe��ï����g�B]+�% �3����f@Ә9w@+=����ۻ�4� ���R89����ȒIϟa�uhS�H�c@?\����P�ilߏ.����Y��T���S��s�n
]G!�\īF�mIC\.lQ�+-|. #N���-�E��r͂��	r 2�]B��sRݵ/�G�'/�ݖ��o����Ї>��w����;�{�.�ݻ��; � ���0��*�����zQ�J[#�V�De��W^��oTZc*Ʋm�O�d.�S'��t��&��},财���dD���Fb�!��u����Ց��ł������!�S�o)���<�Fa���#�+�l-� )�W�RG�9g���0Vᰣ�8E��aZb<�o��o�k��[q���g}����}��/}-�Ҙ��5L^mkB,Hnv��"��)g4�A7:l�Gs�w��G���szz������/��/���c���'�\쟱d� >���A�ePr2�M�x�/����������%S�O�T ܾ}���͛���۷�������^>^/�Ӊ�\�Q� 1�3�q����1��7�`�s$T����!�hT!2|�p0!aZ*�̝�v찮�Z����,TR�n�;�\.m�ޏXV5:�08OE}�/�T\ J�2�!��O����ZI���ap�Ja�T�)�tG�nD���%5pp���D��|H�|�V�����ek9�s��� E�9Z	,Z[\���K��T
9+�V�m��8s5��ūm%�0?t,���V�馧M����EPLm.����-~�$�Z����i%�W˅FJ(�G��ܟ�g���;��G
���C4����at��-�Z�"�K1���w�}(B0^un`G�X������X���tZU��d
�F����R�]�^��Ƌzs����~�����~7~���_��J�b����
mUa�P���9��X/2P�^kP�����P+���5�Ι|t@���$��_PÒʶ󈑙�C!,���� T6'#L-�\����ا��%�Y)1�畒Xi�eft�b{>2+��a��8:��9s8�u�Vbu�4���N��0R��F51����V��>�Q�(aY}a�������/y��4ͳ:oB��o�f�����!3̤@�c��苘6��Q\1N:n���'���NNN�o~3~�~�<�()�V��E�_)�T��v�Q�A���U��mw��O� 8���?��_�qvv����k� 7n��ݺuku��Ϳ	�'oݺ���<���\  Ow\�l��{�;�'��x��4��y�!(���*i�r��-j]�����5+%&�I�}�R�����!��6��0l�E���E�%Z[!D&�q�J�~�PH&����JYv���#��{�����ŚGA���B���b����Q��jdYvY"�2lGn\��^���C��ih	|�d�+���{U�����5�ѣ����<�/R�k%8��1����|��%�p+KηRr�lƈU���+OWA���n7D4-��8� _;�p�"�k$��S=V+�������X�}8�X  ��\ ��*r��3�;�S��Hq\(�]���)g�2+�������S�9e��w�s��'~�_�T
/Ƒsƻ��.����x��G!��7-��2���r6j�Y��Ee�V�Q���ze�^� �Y��0>pg�em`��w	�����
S���b�ϓ˥$�s甁R�n7�+�Z�v�+���n�1e!�
�"�Oj���������F�	�]��?e�t넔�,$r��m<�@��ф��!��,n_
>F�n<�v[�s���	���RNd�Mu�� ��䀟��o�W|�w?������I��5F08�ʪ�	Oh��G: ��~��1:�<Q�`pJ?�e��c�����F����},QN����Jb�C
�J"f>�,lI�%�8��k@)���ޝ��)<}�?�����, �r�ʛ��Ξ�I�4 ����?!.##_���\ \�N���8��ݹw�ᇮ��J)Ξ�����~U��C�,
r���R�����G�*H���JH�}�����2Vi$�Y�~�a�K[S ˊ��Fid��� �,$��2�Pf��%��FIԕ��
yAb�/�w�ں��(����S`)���#|���#g�S�@H	mm�����prm�@$�"���ڰ�j�������;FS�3�-R
4��] �RP� �Vc�h#������/D��ŐQ7�r$`-�?�U�f��B���Q0���Z�R�AH ��ست[Z����nr�2PR���b��PD����\��k��O/$[��R���1[�g�K��X���!���A�E��g2����_�W/ʍtrr�������~�߽��Q
X��֔N����Z�o��?��3��u_�j���&�bU������W�O�⓯����x}��]�Ozh��2��ܹ����Bƪ�R��!T.�Dц����p ��8F]�j��9w����zY,5�V��F �h�1�]h�Zù��O�І��I���&�0��=�Faw�p�h�!a��Ȋ�XUkԭ����C��㞌����2R��*I{o�y(��=r��?��߈��Moz������7���:�轢E���ժB���S.���d�XJ	��<|�?��?�7�� '��d9W"�J���3,-��ƒ�0=�K�
"�TB�)`I2������}��o����g�����%�  s�*�,?�s>�y׻�տ���|���1�F\X� 6|��}���k��n��!q�Ry�+{юV2>8� !j]cjXe�.e�8 V���k�<�e��w�|�؏#iz1@K2���?�#ch9� B ��B���d:.S�ޡ�m�B����]@SY��V��0���Ұ�b��3�cD}�ȝ�������P"�C,���5�aĢ��F#U�-��~g����5�ӏ,��z(
�z rypf�#Z���D,43���9!�d�KɎ���<����SXP��
@�Áv��hW�9�1`���6%X�P5
�%%h,(X]�C)r!j��}���!MP$γ�H���U*��C������/���?����a�ˢ��2�DH���(���BS)�L<�_�70	_�����#G�0V�=����r��6���#9��#�  �p{�Cƃ�;4��Ys_'��{��;"�?K[�K��s����$8ƘQ��M���3{?'L�`���Hc8p݈!��y]y�dʪRڪ�� )9>ș�L)����8�m!o�����(܄h-0-J���[�t����?�k���{�`�һ��yok�}9�t��1�6��(�De9e�%�R)S$�(R�J��bB��6�e�p�FA�8B�&[�A�NU���EhZ ti��}.{�uy�����:=����f(�V�J�3���>{���/��{�o�߮��Zk	s%ҹ�F|�Ɖϕ,Z��ZWjo�������Z+������ �1P����b�O�L95�$��Ƃqό����,;&rCi��Y��
)��e����ߕ�����  u�֭��y��qYӽ�׿�.��z�`�8�7Ź�E9�]R^��
_��/Ȩ�_�5"��
��
�	5��)���h����K���îH��i�q2�#�P�1	K  Zg�R�$;W���j�>3��b0xg�h)kF��(���!&>�F�/w�EkI d��9A4 �^��B���(`'�6�+�����"�<��m�Uk��h+�$�k�3�1"���5�W8�4Ǆ��i۔\1��qJ9b��41=Q),��|�%l��m#��9�sw�?Ǳ p�#r檨��x����Ƅ
�[�*��*��x���%�TD�	��,.�1�O���yz��������Y@�ucO���������9����0J���s�u������o�Ͼ_r�������=t��W}%���o���������N�;l�]�a�?6���\G�A�u����Dc���*t[ժ$t���{/�����ӕ���;�Pp~��9"���������ej�ǌ�Xl*�iKpv�t���v�w	1��ϑԹ��X�,��z�1��Xkv�,����QX�H������XHG��B]��t��q]G����+����?�\3uAb�5Fc�jPJ�݋��?����������z~��o��
�
�7�F,Q�����4��6�`AƩ�E�L��T�$�t��ǟ��x������KN��5�͛7UJc�!��E��� ��-�{ ���?������LDB�"s��T�R3R-h��R
S
����F��f���e(Ra�3T�;c0� �<+�
*��+c2�����ki[��[�(�ZC)�ȭ�x�����O3�my⋎)c�`�y͑
w�mkq�r��e�*;a�aD���sFJ���0z� (I��e�9�����g���k�@?�2�R�u�RgQ ��� ���5X�v���2Y8�P
�P��C��d�)�?��H�ƶa�a㌀�Ȧ�����
]k�G�����~"fP�+��������u�i�lH�\+�/hW7�]Y*�Ř��4DϢA���pe-ҕ��p���q��n���_v�1�[�o�S~��Ͽ���}�'��]s�6z�4ن�u�ᴝ�m�v0����gO���n?%"���Y�0@�ZHv%)��a��^�j�}��>x�Q�3q��ġm��K���p�3JU�;�cV<����� ��
O=1j%�j��^J�gaI�4��z렬4�6Ә��(�0M��r)8����5kC*��g�g-̱`�x�8%��/|~b�Z��7�Jw��R���G�Nc�>&l�-Vm�7�_��诔��x�{����?"�
N)8(���"��X�Z���f�ߘ'h�<�X.E��pEa�F?��SO��.��y�?�^�����������֭[kp�j�_� |��{-��A������ԉ��j.����X��F�PMk��6�9@�Ȫ &�1&"\���%�'�?��7%	M/a7���C�%#�p�1��F�B�r�*��[ �����Q
��P�B,̙݅Á
��P�RAH<�#Uٍ�s,J���ƀ�@b�81@�	bF�)b�B4j}�B�M�cH��>Jh�j��W>�����q��C�u9 �� CD*���*�~V�`���s뀦ab����tB�K!ł;w'R�v�12$(Ƃ0� �&J��,�`J+_�lyG�����T���U|�j9���L����Zx�W ���_\�?jE�ߣ�۶�I���'
��_�o�31T��p�n�BA#��*��N���5#[�}��<"��q��ǂ��a�#�pざ�;c�r����z���2њ��R3TNn8&�#�쎯S�2�I���5x�	�<9��HZ�'�5�lX�O�XY��X���Ϲ��K��is�?\�h�BuwpqF�KӒZ+@m 8ի��b,�8�����␱V�:��~�s�����Gq*~N)Wlל��'��{��fI��|�R
~���y��;~���ݼ�
��� $�U8U-p�
��,�Ȅ,9-\�вK� 0'��h��/��G~���=x������~���	H�٢I}�֭��b���fK`�sȀ .>��O����͵`��T�֗R3�<!ֈ"��X|�H%!�*J��T�䡵��YS|�Y�Ɯ0/6�sdh��4�;ՐY�V�1��(�A-�/�$�| H����D%oL|ड़I�j����x���-^�T� ]�R�$T�]?����yO�ǯ�=36���%i�a�ƪsجF�J�-MI^;��U'���/�s�XwV��Fʚ�v.>e�$r�0�(�Z'>���rj&S`J����]o�^[h�K\�`N�W\%��@<0�ΐ�`5r�H�+k�����~��]��3O�����,&�(�R���MS�00�J�V-<���F�2��oq�U	�����k���^4�]�ݧ=�>����0��OI�d!�)���T.��}�#����!�:���X0��f�q�Ҳ潯���,�FAkRg�i��b{l�v\?iK��7�z�{���:�+ÿ���"�C����נ[k��i�j�a���I�8�Pp8��Rخ���5�8�3a��4���GU�5kM���p"g0�\#�c���?%ܸ���}�e�GL>���L9�����Ջ����]b|;g)�T�C��(S�w��?���SQrƯ�������hp��@����s͂��� �����h�Ym�eB+�i�b��@Zi8gPU�V�<�������/����S ��7o��G}����>�ԯ�R  �o	�8�� U�Z�V�)(���Qi
vR��2�2ZSt��+װ*I�`
A{yL!��Y�X�
�t�Ak	����e)N�m��~K�; &>�@Z�O	S�(��0N(�`�Q�|&F/�/�v;! �>`?zĔ�n��Z�:g�%�ҧ��v��8���׏W(1c�,:�@��n&x(���!�@P��g����'��FxAw�]�����D
"�s���
V+�p��.-%�s�b@�4���c�
�/<G�� ����h;�&����-�z9WD/���`�10v��;��b1�@����u,*�f�h���*�~j�62IQ
�/>ٯ֊<TNX9����?�W=x��Ю�zt�!%:j��g1�	M�	Q�������n0\��, Xo�P���>��4�t2=#�s�P�r����3�� G����� ��nE��	��T�J���Sfv��$��ba�2{3W"�*)y���Z��@���S'])��T0�,|���l��AUu���}B�����qv6a��`�K����J�T�1x
�˃�W�2�Ki�Yɵ"���q��x���<�>�o?����7�$*�4V��AcSg�:% ��99r�����r�t1�(��~�#{�!>��'������{����͛�	�r��WJ�9ŀ���͏=���d�9���G!���_$���P+�T�E�i�
��S��2���%ي+���L ����ш�)�$���b�S륒E�&��Z
�b    IDATlZ����n�2%���b�5�a>�@z��0�sY�}ˮUn�10*��X�Y�Y80zf�;˰�R0�>q��p�t�"d;)�g�5�#]Y�4�������| d���mj���CB�a�X>R��E8�c�~�?q~`9�J�%�]�%���£Y`5-m[1�@��4%d��Oc��9e�cF�D�6���}D�TsW<�%+�cµ6Gd��Z1��&�
�V���E��^V�whe��^[��O��il�dX�ޞ�Sh5��"K�ߴ~�z�:�՚�2g��j״�(<�VX�-w�>�Z�����X2��� ��U(U9U^s-@	��V'�s�H�0<��J�o:7������만�e����+r���'A��@��;E�W%1�	�:�j���JYS�P�"|�������|����n(�T
�FF�Tp�}+�׎��ި�+��o��W~˿�g�)�_V~9A�
o�b�_
'���yoz�&S ]*�����I�>E������D���ǔ�<��xr�� �x`
+2Y��'�*�r�g���������ٟ��׆��0�}�k���~MW�^) p)|�� �����O!��Q{EY 's���TA3��4S������e-Pj��N� z������z`�� �R1�@p�q�1§�"-Sa�_
_�O	���J����c�g4�t1Q�5}�1�Z�-�1�)-���G��	�uخ]"c��� 3��q�}+ !e���r��a��a��H,>���C�m�'.�cl�.h���]��Jq$�K]ug5ږ�	�	7�����C`���8m��j-V�E��(�H�����u����Ppյ�F�tE+��	��Y�J�ѻ=g�Cab�Zl6,��� C,D��q
1d��cQ�{��SV<��#BUl� �Ug��CJ��}�c��������~����x�o/ѹ덁k���%G�g������)�ݥ�>��U�a��tg�E�p��GV����T�)��w��)����lI����� ���(LAv�������u@U}�IX��k�e����c��S�/W4[�>[�`[�iѬh�3b�*�p`��m�L8VkN�B�88%X�Vk~����d��z��5�Oܾ=.ɂۭŃ�b�8p��}d�桭4`[�����]�ިUF9�3�����Ѽo*ơǛ��F��=�S
�68*�ΪZ�m�>�2E�!'XM4z.\?�>� �(#�ںX��5��S�O?���'p�����{��^�������U��{�/5 ]JyY��WZpo0�7����E���g���9�Z���B�y���d3H���L�%a�,Ho�4��j����6%!��e�^Y�U���Z�T��\V4�-���>�q�^�Y�tl������_�y!Fz�e��S��ET�|L\=��{sʹ;�m6֊�?F2��Z�fҠR����, I�<�XV<0g�5��7�#�@?쇀
�����+#��,SH�!A:����-��)d�����ȅ��R�?j��,�F�c绸�)&���]kx�$��6�J�R�^\p:��q��-w�J���� &k ����A4|�wk��k-�>#��/��I�x;��U�~��w��]x�{���_� �T��/��6]4�zl���ħĘѮ���-��0k2b����1��>J̮�S�1�d�S�>���Y�Î�t�#�Ep�A�TA
ˁP
� RJ]�����E��OL����󳀪*n<�.�m���(�sw� {mE�w�`�E[�zc����N�9��O	��H���"���(cd��1�82,k��sD	w"�~Nl�������q�v��8j����q�f�{��e�ĵbc8U����9��cd���}���>
�l:eqԭf�/���	9 �e4
Ra(@��Rjqc��_��UD�������g���l��3& �u��_�����^I ��5�\ ,L����'>R>�b@#�� �DO*Xe��-bMD��7��FQ����#-;%����R)�b@c�=Q��~Y+��9���S�m�j�X6m��Dow՛�Ac(&�Fc�)g�W"�c3�2C��B���I��������~�R�:#�t�"n_�ȵ���Or�[<xm�0��8E�ݍ�����
y�{b
�f��B��TƂ�0�Ο,����ەC�Z��8�40F3e��h:s�߶Mgq�%�7��L�Rqv�q��
��[qG=w����4��&`�NhV�ar_!խdj
����V��  �UGI�p��@)���#G�נ�;0O^���ϟ����w��|�;qtt������Ǌ�~��4Zc��h:��d�v�mhk״��X0�0Fv�T�'�L{��/0�ݪ�~�8?���G�
}i���bw��������%��`�%��}5U|��}�d?P����iCujœ��nď��4Q���Ⱥ��?$��=��tzl�-�s�8F�Ppr�b��Xmxx�ՠ�L��[
8\D<����M�	���w�����H�6�=���ʰ.�'���P��ſ��W�����Y$}�O_m�sF�	���w�}��+p��_i<�;�U��/���4P@kZ�h� �H�"��MG��ͨI>?,�&����ßz?>�������}�U��9����׿��/��|�WZ \Z�c	L)�q���"0�:��SN�ݯ�8S�K-���i�(���X��\�Z�ZF���(��\���9b�!E! $�~h�ZF�����P� �)p/�r�Ѫ]��|��"��d���U�`
IlxK�!b?�(�끜چc99�Ԇ�����k���\p�X3�������B+�J=D��p�l��jt���=Q�Q��s��V�<p�Mc0Li�58>j�^7��W���J�Y�sQ�9��7�	�����I⛹�����neYl�D�F�k���^��L>c����i����R���	���?����������C?�Cx׻�z||���y0�=�֠��6�����������N��(��#'�}F�&�X��E���"�a���,�>b�c����L��\�̂�*�r%k�3��a*��k��8W?Z�e� ���ʘ����V�2�B�Ԯ-�CD��{��U>��O�[H�O�z�iJ��<bp��F`Y���b�uDW����S�1O�f^D�]�B} kCN�1`�D�cǯr���q 7NV��?����Y�S���~���������o+�s�_�]Bb��)b�ZXk1e:�r-0B�Ja,4RM����\�b�*�3��O�>b����|��ׯ_�ѫ~�=���z� ���� p��O<�[d�sGUj�Q�8z�ˈX3] ����JV��s�Q�!U�s�;ooX��=�58nWظk��Zf	�2��Ԃ�4"
���ߋ<�)D8c�sF�P�8��	)4�!Kq�Á懦�t(a�3[�{��2����SʰZ��Q�GkhH�[��BD-�����sOYk�y�����ޏa�y��S��@����t�ϯ��@#kkI��[���(��q�<!B�3�������G��N^H��^q�Ҋ+�Zq�n�:BxPhu�Πk�[�		�;\�EKb6��
b,�l-�>��U������ă�[Y\��a��Q8�����tv�?�?����'�/8P�o��Ӱ����uJ�Z���#+J=�F�ֹ92�Y4-�'��4J�K�ٝ 祐��`uĎ9��A�t���[Y��#�_�\(����������X��c��#� ��Mg�9�X��k8>qPZ�����;0�kݼ;���,�|N�J��a�&�mx05�A�'���t��(�yfb�� CH�$�����yrzwDJ	Mc�}F���lC�*R�h-$5�T��s�[���Z�������η_�6�.��ǟ���}o��`�_I�3�Vj��WP%UNb�<�f-��d����UUA6D�e��U�h���?���3�����_���|=� � p�����ʯ����~-�� �,怠gYﱻ-�xk�� ��Q���Î@:�P �9cjD,��_�.E0F)$I��b��r�,��>���R!Cm�4�m�R*�DA!�Aj��]+�=T�E|.$�{Xj� �6F1��:��R�������S�p�p_�F�^���4Υ`F�.O�\�@X�̧���kk���UIr�t�/hW,Rr&�o���p�)#��aLd�:��3|$��(%B(- �k���������$������R0NYv����m��1f�6NR��εp݊��idw=M_��
w7��Z+~��?��?�nK���+ ,kZ�3*�_�  ,
��>9��Xr$h�����U���: (�0r�^
�m��;��]u�uI̋��9��ϸ�G��b��	 �+�l	��V�,"ħ���7c�N
�F�i }A-\��\��rJ
���q�i�8?����3vA���dX��?�(�C.@�4pZw�6ARZ�ҫ��U�W@�O�����
�k&���B�ϊ�
�CD�BJl��� Ɉ��{��gߵ�ױ�l�p�ɤh�o~3���ҰJA���/�Za�S��:q�$�����
�\[>w�櫊@Z��"X�����oi����/�uvv��W��{V @�y��[�2'��`f�;8p��o}�7�Vv�
HU*x���]�*�)d�o*�T�vc�&�a���n�C���~#~�����[��+��[���!�B$1XPh���W��}|�a9�q�)1mj��Mg���' '��,~2��V- y�\�#W��%� W`׏�Ja�:�b �u�BL�8�((�Dl�4$��]��&Z��5(2/2Ax�N��%IM�5U����H�� �x��--bZk�Z$�0�
%�Akh?�BZ��2p;�i�����h�1�0���g������80V�[q��΅~�e��/^a�_+j-@)�����S?�z�Łb���v#���}�R0�;-C@M�(J� {��%Bu��5��_0T���"�ڍ��8�8��5�p��@�
��� ��O����H����_ʥ��{�������u�!cѴX
SFԘ���9�؟G���ڨ4w���H�lCQg,8��,��iʸ{{D�2k"��(U�9"d
Z��X��Zɩ�8%X���V�bƑ�c5bʴ��)dX��C���h�(�-�y[Ѹ�3S��o����>�k���~+{S�u�5K���dTB�.w�S��3��:��جTTXņd�TT��I����祔3|f�_�e��;d�_����~�� �R��Kx�n�Yp/��}��י
�`�]*Ԋ�Xr�h�p���,U*Q�s�_��T2�� ���
;?��_H�r�_(�_��r��Α�7'&����?��)DLq�K�kEN����FB~$1�p'�:��V�'����K�H���_*�N6�JU�up�2��
��q�~�B��Z+�v��3��̤>����=6�׎Zt�e~��|�9�VL#-L]k�^;��@%�41^6�_���}2G�Q�u1�����''\KqX�LkS��-h�Ox�����aH>c
B��N	}�K4�u"���uӐ�=���/��޿���3JL���?�ce-V�a�8�[��9����E���>J��=��V�ß�͟���,R,ȉ?C>�i盩{�ל�O�r�5�����Ozh��V��t05P�[�6)S/����b)�
FW8ǘ�y?ܭ4V˃���E�j����%S@���1�	�)\���zcѶ�y��]@��}4��g:�ф<ͤ:hRK%�BIj>��C�F,����
NR3�>-���m������Uޓ��6�(3͉���1���������_�X�����
+��2�*�9�Ԃ)�(�*��[�@)`�#� "n����9P�����O�w����x~����y�u�P)Unݺ�/W�J�~�k��������O��}��Q�H|�ϪU-��F7 �U�{�n4Gp�@a�
���R���Xɗ�u�!W�Z�u��c�{C1 ���Oh��ц~�Z�6����T+�)э`�^�Vi�)#���|�p���8\߮�8���Њ��2��0���I�Rp�\0���EB�F��8ߍ�qm���^x��#*�&�h��Mc1N
�s�\k�v�2W�h�LW0
���Q�z��Z#�'��"�"��D����~�XY��]��n�!��
�Y}����;N	Ge �lo�ժ�s|P��yt��M;�d!��
�3��Y��0&�h��;������"~���۾���X�{��������*�"`�F!�=ߥ�=9�Ɨ?p �������m�=}��Q8�9¾v���u��>1`sl�Vɱ�k-�!��@۲�J��1F�{����
&�8�;Q�sj5�K�LGT�­�ІP�\��1��Y��#�X0M	O>6PW�����G�ħ8��vZ��Ҩ0M�H�R9�/��# i"R"�,j�G��b��=����I�
���R�Z�'4�A��g��0��� �R(9�X�9�L9C'�7}��o}�a>�{�Պ�>����h�Z����*y2?@mFk2�آ�ӏb�f�H�_���|[Z����(D�����Zk]��s���0=�K���L��S �3���r��Ϳ��~�/���: >0������c��TUEꞖ@�߉�(� �,Z�0�X�Xy�lkT�X� 范���"��<��V���c��>0�3��6�r>�BϬbVg	|!`�'� gUl��~���ֶH���[� ���g�B�Q�	!��7v�*|��؏�1�m,6�]�r���9SH�{>p�-��94�`�mKJ"P�}Z��А ���u�a�8ۍ�'z��� w�2�Δ��1x��UX������Z�q%]���9D����L#t5�~�<Dv�Mk�uV(r�5@q/�eR�G����!i-��L��E~�k��jN����x���~\[i<|���G|���k_�� À#Ϝi��*Eh���s_p�4��2��)21�z�'9�y�#��k7�;
��k���<�C(Xm��@[N����C[%S��Þ���*������N�l;����]8�]�|�zQ�[���!/�ӣ#Z?g��aः�|F�'\\��0��a���==��*Ats]�Ɇ����aGX��&��ZمNc�0�1�2�m-��fA~�څ�Ѷ�K+�.����A+Ja	��J�n�7}÷\�!����=��{ߌi�T
�̠��:4�k�,����d���B,T�R.;~��TY�j aa�p��`��E?]���<~��?�������<��e{}�� `poL��8���o��489Ĵ�,��<kB�]�\���1�!G��C{L��T��(v��b�<�S)���v0��4U̱d�����������v��VM��� HaV@N���s�4-6m�|Jh���Hc�5�����M!"�$ $������N�bm�6+�վީ>���ۮ����}'+�
V�BH��Nc*Re����R��=��K���#��"f&�(VM	�q��k�ʣq�]b���b����Ɠi=��V=-��>˿�xX)H�s)8=��<��dN�;�9&m;���x���]���ַ�8Mx�[ߊ�x`�Ɨ�w�/�~�����H�`�!�)O#r�(���lO�R*��òֱF�E�~L���j�+���#��~��ЫV�j#0�w���8h��p-M?e����:��֢]YhÃ��Z�ԙ	o�H?�1��[�+���L	��~*��I�GGt	�\wH���SN�x��|W+��3)\
߷����
Ȋ.Q�[��d�P�B�H���Aa�v8:j0����	>F�W��H4r���fz�UѵF8�����kC Z�V��i4����\�V����'>�q�*�P��{�2Ǔ��n��O9c�}�kFkbIH��m��5ڑ��9���ɽJ"KV� i��Tե������俗��}�k^ܺu�SJ �5�y�W��u�[�ԯ�\ �+��@sp
���Xk�Q<�T�YQ>LUT    IDATȢ4�nV�	�F�af����C!���U�{�%�q����E%E0&&^L=4��α������9:SkM~ɋ�`�v�E.SL��1�K�5����(�,�D�g:�,1-`ۮa��фU%�^ڕ����a�)�"*K��V�%P&�c��2~_u�JD�:ɍ'яs���a�H���|گZ�ǟ�8ڴ�;��
C���C|�k׌�-A��Ô��Gv�bU\X�Bk�����5����4�Z�X(���"
3=}�~q��G�;�0�PsBM?�S?��'��F7xՍc���1���k��/{Dc��jP5��' J����_+�h��#��`s�����b�f��(LCƧ>�SM�+�N'�S���!`%��S	�1,,�yrD�0�GKW�5% ���+��2CePŊʂ���:�����#�����jmdUD����	�Tl�-b$��H�S�	��a��׶�}(`ٹ֐�	�`)M}BY4�1U�����'�Ql&*�����+�v��C���?���H�� b8Fv����
�{Z)�D(����o��c�9�\�����?������8� ��h�y2�|�F)ȵ.��D?�i;�����k�I�0V�D�a�.y,�����<� x.������\�N j�E)��a�_�� ��<7���;����>�U((��];+T-x`���v�T���_Sm>w�
�[i��X�T�,8� ���#m3U�>&) 
|��AL]���	�i�Yf�����ɀ1&F�Z�u�k���G�'�k��)E/���)"�
v�h
�f��y@Zc�6v9�b*8L��n%k�!�C%����!�
,Yp�CF���5�K�y��$�����A���?g�i��Z��  J,{����
����#y ]G���L�l�w^P��Q�K,���t-�[Ne��))c�8�0�eV����;�(��/�<�?Y�+��	�߮pl<�Z#B�{���9-�{���x�1"����x�#�6���	c������dD�0u�:v����`�m�N�GZ��q~7��O�����ͱ��Z��w)fLS�����E�2������)�a� �~j�є:<�ԀZ
ڵA��H�Ɍ�g�
�����O��|��L�lZ���Qج���R+�%[�x�6B�E��޸�<�i��1�>���x����p���"����9r���{�&��}�/Ă����Z�9+c������ĵV<��Sx����
~�*a��ZG{�^X�1F:��Rh�C�y	�A��ӧ#��|�2��T�_K�J����n?��X �;����I����߻�����7o��nݺYkM���4�K>��b�b�XM�p�W�Ŀ<�\��T�X9�fp�A��F�%.�V�1�C�K�x�ƒ���$�`%������X\��N�
G��źi���ֿR�i;PH�Q��ံq� Y��2���9�;h+4A�]r���Ǆu�0qOB7h�㚣iZ�Ů�0y��s�H�mcG�;8 8ٴ��S#iP���>7犔���P.�k��S���9���N:�A(x�q�i�Y;�P���䯧T0���mα�fm�Ľ�#��
n#��
�ض֝��֡?Hƀ<�B�P�v����ˢ`��p�����?��o�­�X#~��?�V��th�E�+TQK�h�Ƶ�=�i��=R�KW��?���p���AL;����J�L]�:�����~��Y�%��?dL}�4@�����v�2d���{$N�-��Ӑ��ķ:����ǫr�XC��8$�w��|Nn4H��������ڍ���t��SӘ�!��H����>b2\kЬ8AhZ�{�Fc�68��`,��8��ƌ�>��b�-�V�#�Ydr O=�c�I�Tp����]�8���3�Bi���|�iJ&6!�%�4dw@����B���z�����WW��.�R
��{���^��
_jV8JZ,}jѭX�i],yaP��$��6��9�Q�jY�ϵR�T����	����׿�� �����b�_�����y����>��ڶ�b�2\�],n  �}H�?szx|i�S��4Zcc:��gT�qB.c�0e�}�쭋
��$K��M�a�r�^�1M,���Ӹx�gqP�>G䒱v��A�F�s>
�F B�$8k�n�Z�5����D~`C��'
�o���%�	B�PJk�	�#�?c�1a�j�6�(�Z�u�ଡHIF��>$�Log�?�.�M�pr��Y��m�U���f��)J��=�X�b&O_)BZN/�%]
89j�&Xp~1a?D����!r���N��t+Z�R*˸w��JF�q̙+wµ }���@K�O�G�}�W���qŻ���������.��k�`����ۦA�c�<
'!;5�[O!����"C6��ݞ?�0��N�k�>���(�돎-�)aw����#�!a���!e"y��k$2�N/���8�� �N�"���OSC����b��"q�3�i6�,HdhC]FIt^��y�Ѷ�p�W8:qK^�Ҕc��S�c���G�<����0p�������\��6�~�jE\�
7�!P�?L�Dc�8F��p�}--�Vr�����R��5Ž!f�:qr)觸<frf�o����C ~��3|�#�%N��wj@�,��{j����ºm	�1f���b�+� ��47JUh��	Q#)$aj��F8k�{O�����c`�vo��4��s\W���炀��:��5�y�/��/M_�W�Y�/ �>����ǟ<�7�/x���T	�={�AU�*Z#���02�1c�R�R#�A���X-�R$��΃�|b*U���l/��rZc8�I�JHaL�ⳗ����o6�@�	Vk�S�8yĜ��PεK&�?�ȍ"@%����1d�D$Q�Z3�V�8L8�Oȅ�*_S�O�9��;;\���i-�D!�K�P)��P�a�":x�vL`,EH�ܻ����Z�w9�쁮5��@�p�
���^�q�4DRu��H̛��@R\9Bv�v�k��nV�~��G�����h�⾣&8e�X��"� ��S|�4���Ԫ>+��{( M���O?�B��9���4�Va�5���<��(�����
�-}�Ә�@'�B<2�rA�
��`�e��I����ˮ_ �P
X�;�����̜3Nn��3{gw<��z<�Ԉ�;�lR
�SB�\5-W
�,��Z�g��0����>.+�k7��4�����s�V8���8L�B�)�
R���L,jؕ��-�X�Xg�Y[�S@L������������Z+^���ѵa�W��"$�N�D���q�&��v�RF|�|ȧ�d�C�iU�'�t�F6 p�Y&�>��铿��O�m\���������ם;w��u����|��G��x=_, �-�XQ��sy��0}��@ժ�ƈm��T$�%ƗaA�>\Aˏ[+�)y�z	j�E�S���{��{2�5n���4Ԃ�|JrP��Jwc-z�rB?y��,`�A��v�����d�¦m��mzO���#vÄ�qK��Tݧʇ��kR��a7B,�CkI��	MЇ���TP ��sFQX�s�V���H�z�{�"ϱ���D?F���ǟ>��<�������xt��1N,�����P��ZWp=�^Y�vG�v��B:a�ٜ�����Q^�
(T,����V�����\���{��moC�5tTpU��q��O6�h��R�u �CAC��%��9VC�p��4q�BA���B��q<J�}�(��G�=�Z���.���H��`�h:�����m�0M������_�z�;��bdHSN�c�՚��9Y�!p*�uGǎ���P��9ɡSD-.���,U�k����qJK�c)�]X ?}�E��qz:���qfT*!QMÑ�������3���,��9�}��i'LG���p�����;�����6_��Q|���zT �B���b�nv
d��Bu?W<b��Z7V������P`�X'�����*�W�sA-�����/���=�����g���{��7o^ H������}�{9^� ^s�\2�8bz棟|��>����.(p��*�*����9[�b��)����r�Œ0%v���m��ۼ����E,!'Q�V�ED���33ƈ��?#��8���&r.�EH!e�!�4��M����M��U�~�(�b
F��s�Pc4 Q�1F�eL1f\J4C�� ��q�Z�kP�%ZX-��V��W�!G��\z��C�k�Q}�O��p��ܹ猐
��?�(�}���'5�b#BHP�I�Vk��0�5#6�&m���CQ��qtԢ�uCԂX� ��� 
����迲�x��ކ��9��a�: j<�mѭh9̙
��k�-�z}Ȁ� �|�>/g@aw��u�Pݟ3!6����Tz�$N}^T�Ð��S#�C������)���k�$�8����鱃R|�����u�k%��Hg;`��u�Ƅg��uŝ�';��>"�-��<!�|�8�<G�Ӕ�s�����uZ+�c��LE��`w�J��1
�����	^

�.�Jk�1����b#I�t�h�DY�R�d�7-1ӓ�* �v��T���\�,/|�h���?��+>?���o�&���-�3L�d�H�<�M�S��:�t�S�ٖ�Q%�O%���Y U%�I���S�����+�����ݻw��e��R��^�:�R��/ ��\<WpV�����{�e�Y��|�������>�=��� �.׌�R)���M�vB%eW�*�R�#��J9U�	���	8��2B K�( $[q�̴"3�FҌ����\�e������uδ�rFf���j����>������}���<uc�1cM�PrcQ�P"\�M�i_�d��s�_k�$�@V�f�t�!�4��'��!%����)��Y޼&-@EAȬl' P*Y�
9Oa;>Fl�����T���X�F�R��Oa�)�T%b�Qڀ��>e\�_�s⦿�S}�F�>&��kE̜�ǘYգ0W\*b�y,��kby]
y Q@A����C�h�A��U
�{�3r��B��`qJV�Z���טق��
I�W./(��jVi�
yO���W{�V��+M�Y�Y���G)���1A��}k���?����i#�_���Wp�W�X�Y@ѓ�ea���ܳ�m��Ҙ����36�-�xX.-��!f�_tB�c^EeC�_� ����Wup�F�`�j��5p�U5���.Ï�ㄛ�=V�M�SE�4L�~����B�FZJ��m�Bj�|g��&����֐��\Y��b���Љ+�\F�+�ۈ�G#�>K�&��Sl��tE��BR��x���N���֚FĂ���޳���<l&Q��yAw��8��;gŚ�k�|���g�Ѫk�w���_�����̸b�v묞��z�� ��@0Y%;#�(�dXej��V��(��8e��Οy��G<f�8���D������9�c�_�~���~��W�~���_�g�����t��=L\��>��y��'�*PU�(�QOÁxSJ5�1N[�S����ܐ6a�Zg� �a��c؆�JY��t���H_q�-��X8��È���GS8��o_k-�e����*1������xȼQ�5�6AڎL{a�3?��2)�Ҍa�|�x��(ĳ>F�w# �ղEk�A͹�d=�W����7��|����I�y4b!*F3�0�S���94�:�+V)3|��<m8Ð$�]͢3���S��|oa+9�9~�X�9���ѓ��������?x������O���X5���kX�n�Ð���il�Yo7ʵP�A�II��o�1�����׽�<~��C����Oػ`矡5q9��G�K�X��aH��_i�վN�nqt�C���nx���`���w�Z���t��8�^,����9���������p�b��6�X ��}�4��$�r��v	^6k+��0d���|����x�-)��?0J��z��].-b̸q8`��Ǆa�es�L	�{+�֝3X�Z$1�R�!y ��4A
�ǐе!|���8���E�����{S?]�X��x�3`$i�W �vS�i��n\#����+�?~���0��(X�����������<������7��;�瞯�r<�Z��x�u�(`J	<�`�d�?��;�WY�=%� ��S*�!�]R� M�_��kK��[aQ�V��G#`�i�$�M)�(�=M�4Q��R�:��w�c�8ka���37o��/���[���3�K�h-��1� 0�Y�=�����i�|fJ���`�k�M@*��!��� ;1��W��j1��1&4��hv3Ve��e�� ˮA�1]�Џc$Ph:L7�R�ș�
�Kc��*�T+rvg"t��)h�V��шE+���6�j��B����H�h�捑A?jF�ŋ��Պ��ow��6h��N�)C�pt�Ci�qT]�}�m�>c�4����i���q�`:Ğ��psU
�.���f���V!"w_�����e� a,����+���)V�fb�g�"�n�0�|�{��8�����ҙ�ؙ(���ǖ� �*�[,���K�[�;m|��j��3]
~�hȊ?���}�ne`��fq��(�6Mg�����턭�J68���O�$��O�@�����k;��1T)�|C$럐$r0��j�t$�'�/
aC�#Ȫm�jC�����_̽𙗅t#�Vx�+_	��t��=2sw�F���˒�+�#�T��(
�Fb6@M�1������������O}l�O��-x��S��}�upp�]GGG�"+M �T��& ������'�������3׭] ��Q�!�G��CW|�C����6�T�)΀*g�}����m��ܘ�D]������2�7儅m$�/a�'��6��ª��>��1��|N��1�> �-Z�1���3-�)��6���~ i�(4�w!��_u��ڦ��
f��ޢAJ�!�²�?pc�����C'o���$+�����n5
��T�@L�@$��-�X���Y�ݻƊ"��l�p�"��!2Vu�����s&6 ���|dd���n�/t����ج#v�H���M?�����ŊM�q�rm4����s_���ۿ����?�3�k�7���w^u!fBn�(�����u��E��[�6l�B�<�RP2X��%x��7�Q�%�n��x�s;���8f��4�1,W)�M�4
�
��9&?�!f�A��qfD���2>��7y��$/��� ָ����O#Ƃ�D��� �����#�t,��3�#C�8>���ߜ
�m�n�4�a3����ϲ�����,F0ǘ��P��Ȫ`�q�Ђ[^��PU���޸�	�'e� c4�8��l��DJ�ݿ\���ǿ��o�g.B͌����?��QtI�u�a�[��,��*Q��2��3����!�9��h���w~������|�_���/�:#� �Rj|��~�{��=��=�������X�}x4�z�_��&Ҳ��e��Y%V�d� s�p
�P�"4Jca[ �2�6�I�����;�b�la��y�3dlWLn��s)289� >E����>b�=��V�[�mjJ�����Fi,�E,CH�js&0'gv��
�4Ě�c�=�*>��إ�Z�
��ئm[7o� o��8R�,p��i�UP.l�6����+Z��c$[���d`(�Ř�\��K1�mPھ2
@����S��KE�[��>\��[�l"�,J��� �|�XtK��>��v�t������g�v(��0�������R�n���?&4����!J�)���i`;��~��ϛ�z��\���5?�xB�0��ws%Pqr��Yρ(���=9�
�3r1���5X,4J��t����~L�@�0�^����BK�ԹP ��h�����7�
�5��]�Y����������u�Lb��+�Œ<��6O �U�H3D1�:�61+    IDAT\@���}F�����6�FHa�r���N8gwDv��Ơk�����C�h�(������`ٱ۠��"�]���L!�R,�5���|�2Z��U>Q�TS��	�U������Hf��(��*P����@)���s�'�h7�G����/�������?w: �+)�����o����{�}�}���s���g_g�g� G�E������ݣ���I�G��* @� ��3<�@V-(%�Z׎9ى*�T�:��'37��\���fk� 
F�bմ��WX䧱����Ak�� l��P[���{�5Zgg�pH	m��r�����P�
���JaB�vC��B,�w�@���)� D� ��iC̢���v����<�� ��q�
���o4u �gXk���ZX�FD�7����bg�4��R*�0��������7���V|�i�q���A��+��F�rB���o��������w���k0J�s���E�Y��OY�r��8%*���h�8�)��9��z���L����a��Cp���i�_�h�����Œ]�B�5�SBA����]Yt+��.�h:&���sj�ХDX��o��"�Xm�;�\.�����v �PprE�o�n�P��'a�E�9��������N�aN�k��������#�%�A�$	����v�bɔ�R�����F�ж�q��b�m�lW�Z�8hZ��*�E���f��U!׌6�i���
kS�9�U@�@�$�s��ϴ�Wd2 T����<8>uc�tH�	�V�G�X����������>�֊����� �7���{�瞋_�'�������Q@��]p��a��2�*QS�ͣj����
� ��P�m�� B	Ȓ&�J�V}��o���\�\�	0Έ9#$V�׊c���e*��Z�'k Dl��X,��%��}��ɜ_)"+�R��U�!r����3S+��1`ۓ
��hgi*��}�9��f@J��5�%L(&���9���s?F�FƩ�A<��.�upFa��3��"��!H�X����̄^ .U�����D4Z���[���ZW�8��8��/4�Va�
l���j�D��|�3W��x��a�BkZm�~���.]��#�=ɘć�n�Y�$[,u)�A�I���?Je;9>���X����:�݆�����a�2�qmD�<���yO޾u��Ü+V{˥Ű������$�[Z}�h� T��ۈ0f�j2�g�3�vm�Y�и@�Yě�Ls�E]��}��W:��M#��u�fp�R������x����\q�RC7A��=Y K�h����ݰ!����Lc��ra1��2*��ݤ��gt�����&�{R7��矧��CJ�����s_gO>�$����[�Ͻ��/�V���{���nK�c�o^�K]��	�a���f�((e�n>���'b̏���7������d������}�����m�뮻~���������K��^x�> <���0�'�)'��Ѧ�����T�
 �����PVE5>� ���K��	`Ȍ� �� f����H���
;�|Z�3Ƅ�r�S��&�g�=gꆳ��9\X��8;��3L(4
��
{�s�*: +�~m����Z�r��0V���.�-�rF�z�3�^vz��,���(c��~�~!FZ�xSS2�TsKS)��cʳ���m/['Lr��z�*E�<wޱ��� ��\9�:�⡠�Hܾ��}�ۛ���CA��'*����:`�`���ٛ�����_��_�͛7��9�Y�"��F�P���s�&�y�L�X��mhk�����Ͽ�+v�|��I��v9����o7u�����7��d���rť��v���I��Zѭ4�|U��U89
�m"څF����O�������f�AA�0_J)����[_�z�T��R�4ԣ��AL~(��Ԁ�I��]������I���P��H�`�B�˯X �>|�3ON�޾E��@T2#r�at�l��ZR%��� 2 �:���x������z��v��[>e�`ւ�%��9�z��a?�����{���|��P�����*b&i���y+r���$p z�+��M�ϠJ�7ZU����g����7N>V��&��U���X�2 �R��ի��<���9�> <�z6[�3���'Ov�g�5�)Ud��}]k�bWU�a�-�4�_�\�)j���������7ZaLQF|�3Ch���m���= ,����H�S��*�1"��{I-A��&�Nh����&B4�"��8Uc��1�0��0��D�W};	{��LǘDxEz j��ndo�0�P)t-�S!bKgI��7��S��	�{jeXl,Z��zj�<�Z
��#�j��:�k��&;q��R�%������6"D��YZ�@���)	�<��{��;�#������s��I}B)���޻mB�@����T��c��|͇
��[����W��Bd���^��\�\�ˠ+��!!F
���珈��Y�R��&�T���Sőh� KR<%W�I�5��p�r�ќ����GP�u�<iA1_�� ��_�7 �3�կ_p�Ú&qj)��|�������c�)�"�bcm;KȕUs2fGL7((,n2@r}k8�q��h,*j�X-����Z�5!Y�@��ο����I�}�[�����[��=QJ�9�|�sD��N�hX�(`�r̈́��X�|pe���V��2�<~���Q.�)����e-���@�k��=o�SZ� Ͽ�
#>�x��'�~��O}�m��>89�Z`�F�	�p��Qĺ���(�i���=%삇ӎ���h!�C�(��T7�"W&jͰ�`�ܜ��R2��p���0D��K�M��b�JØ9�5o�1O'�Rb�n�Y�1���\&�۔&(������Eq\L���V�7$��`��PـFFZ+\>��9����&)��բ�l�s���'/��4'	N���i����EQ��0p�/�p���P�)���4�����o������_�%��k
 ��^'��T0z�]��Xc5@J>�P}���6��= �''���o�����b�K�l".^l�Z�a��4S��7E/���O{�g���Q��\{�G����0��8@[j$R(B\d��$�`~b�C	鎖Ɣh�+w^AU@?��H(��>EuӘ$H�r��#�\�=�ޗ٥2	�P+�'1W�+���x���E�lw�l��\����11��0Ms춭�6
�
aF?R7�E�2��]Z�ϋ������a����i������o?�	ܸq��+��~B/���O�=t;��V�B��4�
2b�D�J�ZAH�l�<������<�_�z��S��R*���p�]w}�K��n ^x�*�� G�Q����ǡ�0	��0?�6�f�ZP*�u!d����9-pzd90�������_+��+m�R*��P�j�f���Z�bB��q�X���y�La�!B1�#�T�Y�a�_|+���2�1`J ���p*�9_4Z����QBLLm�
�!���PK�Jİ��B)�w�D���11�g�B)��S�Ժ��KI�s%�A$IڿF�H�R��fv��&1W�*�`�(U1�����܄$!I�@�#Ëx�<��l6���{gougZc����9�\�\��\:v�R��: ��,����$�z��R
'����[�<��U���W�4��X�R�sgC)m%�W�.��0��Z-�n�Tr�n0�	�TX��0������[Y�h�T�;
w�q�J�ʴ��Y6��6�bET�m�|�h2��`o�͙ ��+��r��(�+����1�¥w\^0���E�Z8ߟ�8S��8Ô?��v��߶]cq�B�����~��:[M�m%�Z^��� g��Z�f���Z������g̦_�[�����)��y��|߿�$� i,
�Ҩ
�Ȉ5��_���\�q߃����>q���T�w���e��?::��y��Oz��Zk� �x� �7��M/�#������ <��#O_mC7�oQ�.V@��5�i��k��0ŀFi�9b�:�M�f�!'l���[.D��E�_��b漭�v�l��L�V�ǻ~��}1���I�݇�~d�#�@!�$4���Q���j!O���D;�O�BHRJ���Y�A�}Z)>`��fX*rJX- \s�(�*����8<яl/#8�`�ܘ�}@���Nڳu���X������,�eCn|C�o������)���dd�ۉG���|�â3P��Z�[���}���/��ݎ����_{��e�y�6�]O��Ҍ���E�Ф���U�x�u|"z$9<�P�F�F��&��f������4��Ǎ-�q�h:���
���*r��Z�b�lZ+��qHbLi2�"@}�����c%��;`˿G�}Ay���	�� �Z+-����Z�֧9&ƈ�'m�;V2}��2�Si�m-��hr��x��-�'T��C�P���aG�&@r,���y�w��>	�*>��ӎ��V1� ��w=����eSPrF�?�#?�ׯ��JH�/����8�����ϣф�TȈs�m���2�m���\���h���'������M�������}��?|��	�f@)>���/�3;ߺ} 8�z6B�$�ޏ�3;o(������c��µs^�T�5`�^6g�)�)��b�D�>8��(����n�#R-�>E�d�?AD��"�9.X5��q�R
���s�'.��e�P(��,�!��Q���������'���A�D8�Qw��H�+��ӯ�&o-�~ˮA�����Z�M�j���ⷢ��x��I�w�R��ͩ�r�z�1ȁ����a�p�hL�2�6�ZCBۘ9�'F*�s�.����1�F)C$�����GGGx�;��n��謝��!�v���1��{>_�+�XC�ޞC�2����S��?�8:>��KF<Z+���kO�n��3��q1Dn����	.r�ʩ�x��v:d�sZ�9��
�V�]�
��X�qL8>�s%���r,4QK�6V\�t���p�P��6b�&�O6'afEX�G�VF����Vb��0�)zt�`!v�R�Ek���`��8>pr4�U������z �4R�@S�����7z쯚��R��	���BBH�]��Z��8���xlw~��}�gz��/)&�k��U����>�o��u��p�Z���o�����_��?��%�N��J�33��.:	���_oƇ��Q�/����u^@����g  J���JJ��o|�߂�����|k:mN��i0a�o��|�s
)o�� 28p� �H5���*8eg
��8U�`HJ��PjF��1��g,Bb�`��_.�	�R�)�	�e��zP@�����i�)k��I��d詆V�h��E����Ʋi��.A�	�����ý�=��cB�|�cL؎������G�1�AB����sd�@�m8[<ŕ s�&r�:
�����|F06��q����@�����\0�Hm��ܼ� WPg;��_,D ��(A,�T��qr��$��?�c��������#�J���7�o���c�I}�H*]�h��}A�17�iY7�ƅ�����'�Ǵ���^k���_��k9�B��}�j��ۥ��2�>�Z��b� TjR(sF�R�_P3�-͜��S|Ƴ��E�(h��6��@߳X}���#���Έ��~���QK��RF҆
g��r!�`$L��5�������vp\���r���CP�dh�\���YC�CV�3]�`d7�\+��{��s����0���8~�_���K�g�O2/|:��t�wJ�O��K��Q�}V��)-3 Z�z������]�)��e���b�c�=vVXY+I��Zk��\�?�e]� �_g ��n��r}r����0����:ۂ؋�X�懪��H{�b,�Ē�c�}b�KF�G�D89[ܐ�M��3�79"����C�st0@{�4P��XΔb�Pi;�)&��Mb�s֢�����i�I��hh(�J�o�c�<gx�('P[PD�E"� ��T8��
|�	�13�&gv#�T�'���0�8�=��ҺT�r���e%�,&or�>�\#f�10*ɁZğ9�9�x����s_h׮]û��nAFt��]}
1������>9Cp���t �D�z��+����y�;	5��g.��d��i/buӺ�8=���K��Rө1�}+�W]�'�#y�>pH�.���������j��������$����$T�ȮU���26�����'��[
��;�U� G�{l���t���%���E�C����%��y�,�!2EV��(QQ����f0�1�@=1+�\׹��Z:�K.r�"c��B�rŏ��o�S�SB
�v��������(>�U�A������a�Z,�F�Gw�������Ͽ��),V�2Ǡ�"��0[ ���*2���>����)��eE��u���>�����`��nk��7}�7�9��y����[��X��� ���'��k�
L�u#��	�1�d�̃��C�^�����ߗ��õ�9��#�l�4Ɛ(��Ƣi�);'@ R�| >tٰ*/��8��]f�>8��g�l��C�8v@��s�6u*��CD�F��1�A J)�"?�5FA
O�)��G�
�i=��Af�D�V+�����.-��K�*��Fx�E1�A	�G6M	�>�7^����C?D4��5l�k����JF�sqi�3MI����� ��������w G�c�r��5o����T�� ���9������q}Ow���?���J=ӯ�w��k�t���g_��N7��ҡ��v
n��>��v�t�*��Z*���a��ͩ�P��]h�}�/�^3Lg!��3��b����W�z�
K��b��.�1�듀(��0��Vr�DA�vcy���!J�V�j�����W��\7����"v" tN�� 
ҚtǓ�(ߗ��ԙĨDh�����s~��V���b��-��3o��'���8,����=���ض/g��S�����%�Ok�}�Vp�!�CU)��)L,���1��'��$��2U���y��#�L�Z��2\�z���q|q��/�} xq���ψp�3�ݸ�UP)�q�Y��D���d["P#քT��C�=r�PJ��}
 ��Z�ц�}(&��v���9D��shd��Zk0F��bkaDs� AG�1F::�d�Ǽ�)E%�^�tt�C+����9���8>�N�e-L�*i��CZc��Hp��Yt�����  ���ɯ�Dc�e�^�n�RkM�4+ty�9�x3� U^d��Ɇ3ݦ1�5���툜�|�/�m?����4��8gٿ������ߑ��Ak�Ρd
��]��Z^��g%M
�)�H)�]�1��Y�h��§�R�޾��G�hlw�F؆P��I�0$���qȁ��
�[	�*`�n9�+�Ơ�4��X,��c��$���7o�|�J�j��U�Y��J7��g�d����3�|�(�y����](U�71�Ν �F
��]��0�h�f��u�O�l�YK�}3�Q��F˃�qZ�0	�-�1%�,��I/����3"12�C+"��� $�6~���m��:%g�q��d�}�_�>��U��
-4T*X��(�GQ�(������~�k��|p�8�c!_r:(=��4N������u|~�������:� _K��w�W�^�z�}��/�Ӻ} ��s��p��O^}����)i�V�Ӊ
s&�*��V#�� �܄��g�_*	!��e��a��Q�߷F���/��M�Z�J �tʟ�n/��Z9+(X��	Kb4�M�����dv
]SFA��v��z�T8���C.ˆ-�\
vcD�TI7�
#AKڙ����틵�HKV.��t��r~%�h���p/�"pl��1�E��!"����!d�k �/�ܨi��l#��(��@��y��R^�=�l�    IDAT��?ơg'��5�U�e	j��s��������9����ɏ~�5��+D�E�.M
�6�' Q��lcb_�����$l�<��"�:�J�����V�����8j3P��0���7�A�O?�c�9e��}�@ b@(�W��+8°m��^y��W� �d����׭�3�i����K:*�7<��C�s
�1-r�wU�  h�T0qz�QJ!V�ym�OΘy�+���݈���������9#� ?���#��;��e��s�+
u�Z��NG�}�Ȃ�^�/n����y�|�*���Ҁ��Z+*�d�}��]?|������Ņ �� �W�^�K����w��U��sϋ��Ү����K8��xz�.������2�(�O���ʔ��T
|P��9��4����,3Nv�0Ҋdx�%�U�q���r(�m�P)DW��r�P�)���X��YtM�Z*6�($�I���J�ҏ����m�1D4�Y�dn���'կƲsX-[8�*g���9#`!��G�����V6oޘ|�3�=W��B!�0�|�1π�$m֮��)�9�ѧٶV
����f�R
]K��2FU�%��㒌�`p�	J�G���o��=�����Z,�E���Ѷ���).V����c����\��g[�0`G(����_D�������6��2�K��0HF��!�`��t?��+��.�z����`�9����V�0���!m�)\�ҝ>٩r�ٮ �-55�y�k���0&���ZZ�FK��k�Hn���-�]�''��6�����}����
�v��xhCw��6��`mgy���R��o#6�)e�
1R�/F��`�jL�����䔑R�����3ob��
���-��h�D�Oac���Ԃ�:�g��-美^��_	H6
��SRa*�6s���Ï��H)x���[q�/�� �����y��=�~���@�뮻�y������������ip� ���[���]?�>�ч��CUuJ�7����C��
�FPվp�1Ȩ�Cc�d׋بJ�$P(�*Û�V�
?`��M�~��AJ} >�s>��C�؎��5�h�>l��@UX8'(\��q�f|�������@-����;�D�c��h�8XJE��N�2|�
|3P�<U�N�/�V��kE�Vt��$��5��G��$˕i�1���m���7�ֱ�1�' �L��V,�v"��͖v���?���#�������h��_z�k�\�S�A70��~�V�k����J�Mےg0�ϻoޔ�7����)�������E h��^lց����j߉p���(j��58��¶�u�0&9X_�Z�\Y
.K��8��E�s���4��΄��`GM���|%چJ�1d�v�ٳ��-߻��'E�FH��j�L����(�<���@�-�\c��GCH$H*�g�����p�
��.\���e�-���͇U��։�D���}~R�9%����_��O<��$*��\��Oq�j&�����ω��t~+�Ͻ�}�+�(5��Hɨ�"�>���Wq����~nm��������9�cy䑳�z���WX�u�]� ��{�m������@ Oov�s-[-6%�@��y���:ma��/F6�\bI�5�\����㙰'$T�b@�v�.�9�JFY�8m��M:�0{�X�R�E�+mm�u��$�1D���C�9�w7�y���S��
�����G���0�`�	��8���8��E�U�HLi�M[�*�B_&��1���c��k�����6�	s)s%��l��ؙ�!K������ml�g�l=jR����K���_��9������o��8����}-V+�(�o�Zt��Cu&�_��֊�1#�r:c�;�:<<y)px4�'�QR�j��~#چӜ�N�7o���Z9\���X�����OH��8�ox�>a70Ǿ[�z��<���Z5w�����3���(��5I����+q�'>	ﳀ��>r��ea���-�B�F�'����o���ʑ��4J��9C��ь���e�M�RE�P!v�*HFL�X�,)U������&�S=�R
o~�/��r����?�����=(�ĂBAa��:����1&�E��F���������v�k�mi�Պ߿��a��{��_���>���g��l� P�뮻RJ�(��/�s������
�C��<u���{�0��X2�J])���������b���Օ�o��"b�h�.�l�t��=U�C��l�Dm:���
Xe��u��l�����/�fN�IX���9�̸c�6��u?�Ofwb��6�j*�GVM�!0lGS�==��0b�	F)IH|o|�mr�I��z��
���`$��@�{Yf��'qPI�����9wx2qcY�$z�`��6Y��d䜰�#����W/n�B����>&��V[l{�5;	[��M��(d:U'O>�ҍ�着/*fJ4Ja��X�H�[�	�`��Vnd�n��)���)�!W4NcϢ[h�p|r�~W�� k	���ã�Vt-��C�H��B9W���������_�����_�U�Ƿ���٭0
m㠴��J�!d���p�@-���l�''��g7HS\�2;S)���u��`�p�>q�#�t��R11�9B�54���ƚ��9J���Z+rL����ǟ�����j��i��ш+'e�nK�b4�Ԁha�G��W|盾���ӿzϿ�͟7? `���>>�����^��,7�/p�p��x����Zo���q�%r/b�> |���Q���	�Z���'n�?������4ܚf�>�5#�_�i�E?@r[s�Ћ�!�5�S�#|��`��S��D�#u]���T�h����붖�ZY���(u>lX�a�n��ZV���B�p���7���z���K��F+<�R����Q�S�7}�ԖC��V��Z�؏����#&����8�zj|��z�nH�c�(�՗s��o{μ�E���|�R� a�q�mc���ч猈�α�0��~�v��h���M_�:h̓P1����R�v�*��E*��K��D�0��x���ϳn޼9 ��ni����T�ۆ����+<���p�RK�t���SO�qm��S�a�d�j(���*�B�n96�Z�R0g 4���y���m5Q��U��*���Oc�!��՞E*l�S�_�n�n]
!$4���}�v�PX,Dyo'M�V
���<n���P3 D���>���X.\�kqq�A۰���T1�]��@+t�Ï��W��0D�[���a�P�"�%s�T2���m�E4F�0�ԧ8���f{��Y����*6���������~�Cc������Y��G��� ��}�K��n ��5	o�N��� �:>�=xx�?f��V�9XdrXm�@D&I{v�@O���T"��ڊp�H��.�\X�N��Z!]/-kx��9���1Af|�UT#��HhJC0Ȣm�[�!&��pZaZI�c�>&$��D~�3����FHL�SPt5�Ƒc0E��HFչ�~*�}�\;�"
u��w�&�Z�xU:�po�ث��S[���!Q���
��,��X�X����?Ԋ�yI�T����缊*����	+ֿ������M��\8(��[ Ɗ��$`�a�Sõ�C�D�� �Eh n޼1��~�����S=�g�*	�f��0�֯
3�g-�\��5Ί��v�\�M��.R�`�1"�	o����$�yz��^�������p ���_��7 �����v���IJm�k#����=��!d�D_�RA�>k4���� Ą�;�Ré��Ǆ���E�9�`���H0��lw^8!�Ҵ&���	g4������Q�<����s?�V|�ӏP�S5x��
�RN�e)�i�J�3�L��뤚0f�#�ӿ��}M]�t	����N��zt2���)��V��D�{Y�����z�=;��>qr�]w�J�����/��} ��׭l�i0�b.�}��/�����(���f3��
@(�&�dPDc�Eg[��#��:���v√(n�91gl� �;_�m���K?���#ʁ"�R9$�:+�]`;�؎!sF9J�^j�7u�����d��ˮe���p���Z��G��-�βS����Zkb^���"
�|��2��'$k����������x�������-f�F'�b-�j�0FsC��b)qe<��c���~���ś^�:��+wB)	a�
2����� �*���d��诀���s��kp�+����h�W��׼J��F�[X\��@���}�U��M���TMCn�lK�W�f�(t�A�@�QлNr�R��r+��2{O�q7�[[+����!@k\�r�. Y!�Y��a@�֒�0�0�5���㢍a�t�aӰ��r�z�g���'�ߴ�#�����!T��)c�v�b�ͼ!Ô)���~��7�i�D�����������a*P�' ,�9�d�?u��
P@cH�L5����W�y1�M��P|��Gz��8���*�8��_������?8�c�^�z����:�����R� M���K��C���������O>��4�8"�2'Հ n��
�rM�D���`�~� �
�Z�h'68=��R�9�1NQ�N�w����<]��\
4�b�q�,���v>`���!WVC�Ҟ�Z7+�����d7ps�B<�I�_��9c;xl�Q��l�j�$A0��^��3P s�hBRZkD�H[�DΛX�x��Ϗ�?��c*X�ٷ���)Ĉ�kx(8َ���}Z��=vC�#�����Z@���[�	�����#׮�X��K��ys����TQ��x�i�T�"jNN<��d�!
�O~✝���R桫%<)���Ȇ�{cv}����1�K�x Ն��9�3[���!���>3���B��^��c�B�ұ�$�I�rK+ZI��,�� ��q;�\�#m���R�@�&i��o�d�C�(%C�TT�KA�4ږ�e�`�����[��� Yđ��#��#�9:�BB�[
��o�"_���'�_}�x�[�U S U
t.�%#HG��[+�����ب���Pӎ\�b��-�����տr��
 ~�-��O=z�c������?+�{���_��������R� N�����ԟ޺} �Ҭs�{��{��E�S7U��p�>��Θ�4��/lO��9�c
�g�kY�k��'����@�*��J_+���%�O+Ͷl��c�6���B3J��C�b�p�y�D�:�ʨ�l�*��3��~��;��l�!!�f�3�6=߯
�3�d����rȘ���gy=���ǩ�E�Z�6f&�Y�R�ޢ���o)�v�KB�sӔ2��?���j؞����5tQ�E�aH8<Dg�5�4�4E?&�˜;�5�Fc�	��+?�̶�v�:P����0${���
v;��-�)���?
�#�9��1l��
R@�n�;g��18>�8>�>d��)qV�Bv~�;-�f' &;���ᯯ�����l�Oz���X5�U�lG�8:1�Q�+���9e�Z4��XQ�O״1�p�><���]��u��Bw�R��!��y�f�]��}�s���ۛl�؃I�@�W��c�g&$x��@�?��Lj�R��� c��
[�B��`�K��V_YX���zW�]������wνݒ���e5T?.Uu_߾�]�{����}��o+l��7$��`|^�}Q�l������/�o;��a0��h�VRDc��N��3��.)}fc����22�%�;��ׯtm��C��_��k��<�s���_�E�� �+ �Rj �����	��)�úZ |��s��Q�Y ���C!%��4�ՠ]��Wk-��]� ���4��*c1h�c���*�.y���Ē��]�#Gܧ�.���8�u�Rԡ0u��~�}��n	� ��b���P�	Ȳa+&%`ޑ^�TL,�Y�p�"��Il}����tZI�A�#Z����F�@�	fK��QU�&5�����J.KI	)�q�i%Ȉ����f� ���Ӊ������ŔRD��H{Ke9p��KO�_��2ܴ�ǭ�bw{gqhR��x��:g�T�}�BU[��<�v�=`�Q8x���C��;�(�(�~��ƲI��V=@�>��,��>	SԧH�R�2�y�Q����Cg�R&�t�ڳ��(�|���))�Mf�����u�m�;�@㫯�E���B'�%$�
BLh�D���Ʉ����s�G�����c�l��(AQ��}�X�TRf,�DT��Òs�2
�svɂ��*x��?�#��ï�����ϞC�4je�����c7(�ȼ�F�4|��{l��I��>�CdL$����X.o{ӛ�l�~��ṅWl��rי3gp����_�J�]������/1�úZ |~�~6��!p���]��y��s�*����0����t7P��RP��:�\KD�}��%���V�J3(��70�fG��ִ��G,&B��D�~Μ�B�*@e-BJ�8�"V��xT �5�Ȭ~�w�%���K���3'!�9@����3��[F�Ѽi������ZS	Z5��I��ź�,�'��Q;+mU�򵦭J��=���F3��8�����EG\l"I0�'Ҙ2��8oZ[<P��#�ˀi�p�@���Rp�����P��8���Çj��Q��eC麀Im�4lUkI��#?���г����B�n���2���	J�1�i���CB��
9]Q �=)�m˖��!����Ѷ}|BU�+8��%�����]�2m7r�b ��	O�,���a�B][4��_�Q�����߭x�S�0
h��ı����^g�i/��⠁}i�}D���~'��.����F����/!	���������C�*e�K��Z����!?���"�d�n��#|
{:�a45@V� ��oz��� |�����C?�>\�Iϵ����r��=v�����RJ_J� �i���-oy�j�/�z���µ���x�P�/��O���i����C��)����22P��O9ӏ���*�K↞�؞SZּ��WS�D��C��Be��D~N+
�tѣ-h-�T�> +v	����� ���Z#��4�MǴ�!��؇ʾ�;Q�F�۞�j����*%�M�q��H*+�4�r��i����} a5��s�#���o�˥GNueG�6
0q(�.����2�3m��*�
���f��C����w�꯭p�P_p��]�([4^��=��ښC]&�%��	�q8���u�d ���a��`O[u�>}z�,���5�T����^#���5'?F�fp�R�J,\��tw���]J�hj�+�D�EN
�Z)��?	��:����*CϱO�񤮰�~���BW���h[*uE�a����
��h2��2�g�g��R����[YvBBU���i�Tځ(q�1�����m��'{Ѿ�{�/@���|3>��@���4֔a��1�)��� ���>y^�%#���X�n�P e�lb	@)d)���
Bpn5���?�?����[�Ղ��A�Eo� p�ȑ�_up��?�:���;������v >��RW@��G��ڙw�y��3����"�_����ZI�P�0!*qlpeb�{������}ܣ��Ih|�C�@Hl�1�-cK��1�wk�@g�^ڇ$�z&襜1��f�?&�� H2�{N[0�ܨ xS�Yv�֥�~h�璙���t �BnBL�C�΂�C���`u����AT�9�Q ������?����VCi`{ޢ�#B*X�Th�E��@�[�v�J�]���~�3X.�B��x��^�C�O+*�c_�J,��h�Hd.D&�TF��6r*E����+ ���ٳ�3U��W���	�?����\�B�kT"�3�'��< ����N� �D��R�20�%�L�4ucq�@�I�k6��Qd3$���7���X�    IDAT8-�oƯ}�^��[���뮅1ct}���)}OQ�t�Ia�tǮcg+_����� ؙ����� ��]��Β��R8{ AU	�t�BL̻�~�����g{�
b�����+��e�\P)�2�R�S`k�@�~���=|��0����^�G��CZ�׍ˊ�=tY4����u��Lց̱��z�N�o�k����J f���?������ /�z����p���yw��'���2d^�2�J(����xA�J��6x�w�#�*�j3*����-��6zĜ�V5hlE���]iۃ' �	*�ǿ2dL]�>�Q�5�*c����R���0*�;Ї(-xڟ:BkL*Gb���d�����H����	�5p�0�P�V2 6�~,��ؙ�#�E+`:!��Ȝ�����D5���BS3۽����;z�Ύ<��E���*w�~;�p4����#��Ⰴ٢��Jc�ִ]�+|�
ˀ�h;BzV]�Ξ�����l��K�G�'T���	��.)5τ���K_:�ܼd<�t�'��Q���h����RY�s��&��jǟ5�����<C'a�XT5��\����׾�2�<ac8��Ek*g� ��yU5����W�`�R
&�r�걀Πp�ɵ(t����H��1��!n��_��?Z����1��S'��?�n���.�����1C��=��`1�ǽ�P &��3v��ç � F��j�,)B���
x��~��M7����d}۪���O���`a�l_w�u?�B<���Z �0k�<WV�9 � <un{yw¬`�F�<4k*[a�jd		�Z�#P�
�)l%�Gj
�5�1�2�cΨ����.��0b9�y 
�(ԈX��c�9G��R����Q9�L&���"s����.���
��a���vp�� c�\��Fև����  aQIdjļ�%_���3�m`��{o�3�jL'��Ǆ^\�O8�V1�<�R�3�F�K�m��o��o�vq��;�
Vk|ա����E����(ڔX�Y�M(�D/������P8?_��=}�ĵ�����c��g�^��	�	�� 1���>ak��7G<�X	���h���Z.y��i�CM�L����z4��|������?�G��5_�1j8IB��C���zXka�F/���
�]�ښC�{,����c�2
B��ı�б��<5�j���8�a,A�>�;�~����}V��0����~�����5��UJc�����0�%S@� �Y�w��ǜ$���%	~U���`�3����8 ��/����׼�����~����������s)�SJ]PJ��+a�\- ^�5 {����Z.��?}��?�!ϕ�~~����B��f��E$��G*	θ="2�6��y]0"4��Yܐ�)��? �7J� �� ��n%r��ebp{�x�;,���T�M��\��8��J�B8q���>΅!H�'lkjk��u��!���{�>`���"S�&��A]9 �m'�s=v��cgލ�R����,�!1�'��Z��O��~,jg������왳x�'�R��ub��z*��Q��e�����\�G�Z���a�LƼ1Zz�NVƶ���Ϟ�����S'��O��0�i:e0Q�d���~y��E��50�:&���i�n����U� 0����y�2�r6������q�� ~<��Kh� /����a��e4&�����2��=���0%!TZ10h{������J�i|�9e����[*��W9�5�����_������W�}��=?��8�ē������U
KO�	��Yˀ�.zt1���AGҥ���a��q�����TZ���N�ʀV�^����W~.�������77�����v�������x�m��.�/-�;��J�s �b��u� xa� ����=@�ɐ���N�ż�3��(Ī�E@d^1Al���'rz��˯4R�r7g���g&	.� ��$�x�5�D
[c	�Smmj��&�YmF��� m��{>�Q�0)S�և��i]�Ql�!&̺�'=�Z�T��{'e�:/� *a�.����<g�Y�vSA����v)�}��)%t}@瓄��Ĭ �P)�Vc}R�dA��tQH�_��5�Zd���a�Jlu�6�I.S��(b�����y�������WV~L�Ξe*\w�e�%�Ԇ���s�3Ο�Xx��y��68p����ic����0�v���r ��g6�=u��u�/�DY�Y2�ʠ�ܤ�����s,���F+�X���Z�pӻp�%�2�3ƌ�ɀ�N��9tNcw�!�en�X��f���l�/{���ڠ����I��C��Ya���U
�������{6旅@����Q|��]�E4	�:��B��wϨ�X��5�lRI�Hr��c.�Pd��z�X�f����;n����'���/�{��+��>������x����+i�f3�y��_������?�s��">�g�+��|E p��I���1��=sӵ_���s]����ѺS+z���.`��;� �v@W!�=�Ҙ���a�N e��K?pQl�����X���0)��T)k�c�� ��C�2.���L�ʲ�se��h�!���.� �oXk,;��1��^E��)9fz�e9�Ɲր)(E�` g`4*��^� �sfg�����ZZ��b��$j7��k�����y���?��+\(G３����p��&R�&�3[�V3>I9�)�{�',�m�ͦ�z�Up��ӹs�(��Mm�*B�R(�{p*Pod\%-�^�%�}j��ɄHݮ�f��<-��uJ쨤�q�p=z�Kf�c#c��PZ�d;�:��3\h�.)���ߌ��r�Q�A�� �G�@e�F�E�:Gd����� {�,�8�knmB;�����'�,ch�|�8�U ����;��?��P���i�93?�$��(��/���iiU�=��dv�|��`z_ �/�O]��j���y�����c�o��o�� <����koM&�Cozӛ~�o|������O�R>t����[���+ⴼ�馛����~cc�cZ��w^ć��u� �¬�z��>F������O�k��_?����]���|
X��v( ̆����@Xs�0刨+(�s���Je� X �_�PJ�1ku�R�lH�E/ mf���Q�c@�*h�$�E�0�h�C,Z�s ��M'��jM8IbaFA�L�
�M�.Da�ghC���A�=��M�d��bĤi��������>$Xk���QW�$�@%�>�д��LN�/=Ꚕ�#�j�����<{+���x�q��w�Xh���ȑG��^���H�s�J��gԕE�r�?����=��V
G7��W;�1�o��l��%R�0��uM�@n}S;()!�3����ɝ��1ÇJDcE�,-p�j侌l��"� �)���k,�M�jk�E��g�����3��]wnvQ3ԇ	�t˄@|q�f;=��G10(�H�슄iS�*B�\ʘgЅ0d9g����s���d�~�w~���7@pJA�Uϫ7�O� ���Q�]�>����=$�G��)��Qe�7�����J���Gn�}|�S N�}뺾�=Fk=�Z���^�����=��w��կ>u�?�󵶶��p��~���~���e��TJ��9�q�������n��EM���n���g���@��{9s;T�8q���BR�X�ӐF!��s�"d
KhNm*��D�;X��9s� 0�	W	�}�@&�<��b��Ba��Ot��q��P�<i����4��c���臈�|��'�<����=� c�x�# G�{�	] ]��,>��Z��qC�1�9r��^���,�Oީ�5����G�(<|ދ� ��6��~���}���ڍգ?rZ,�kS+�JQ��}A�X>T�ʘ3*��vA�x�<��S'Or��5���b�ȩ�Z�#�+L'M�M��Y�I�[����E�HH��h8�N��
�������`,7���8x�B]���M��F��R'��a,��X����K��K��6�z�25���"�a���2$Ҋ���rf�EG�d��n(vO��{������?��3l�7����ĐĂ���dI�,y�+&DĘ�8IX"�gM�)�(�#(_<
8rD�@ڋY. �n��Qxzkq���8�����_����9���R�p����y���n>��sXG�9����u��y|�ӟ�Z�;� �J)��h����Z |!�*΀� N�����<Y7T� ��3%�UFeo��U�/	}�(���E��,ϊ��g,�5�v�7n�����e�(#��!^x��$1�7��b<qH�c����ȣoH�3Fc�x�^�~�T8W6R �Q;���qCH	m��7wjB�(#����z,��"�w�B�"n�HeZ; 
�K:�7Кb�E���<��Z�1g�(��;�X.�[p����7i�W�)�>f�m�ao��s�u}�b}��s�Hӆ�-F�&i���
N�8A@6��

��p�ֈ��=�� �e�\n�K
�B�|�vz,X����[�(�7��Q��d��լQ�9\�jqa��ά���Ɉڐ��K��������3�����XJ@ϐkxQY����5�(T�9�$\I+��(�5�Kh��eL�������.�U:F�v���������B�Th���?��tR��D�d�B!p�t��x)� ��F��<2 X0$Y�,�ޗ�10�����S�l>�a���R��9�E��$�g)���?�� �_�j�������zl����'>�hpY���c�n���E ڿ� _�5 ��w��p2��ؽ�����ԀM-�0)P�����>�EB���CZ��C��V�q�1-�c�S�ں�s�����N@.r&��ᢓN�۶��Ee)���Ce�u���w�RX��(��F
��v��q~��})e̺3I$��I.J�Q9�E�#��ʐN7o;q)��\k�pX0�z��{����E�щ��(M!��k��߽ �QHGԪ��~��#����vh(T��k�D���X�q`�A��֣��L����y��f8ŕ	�ɇ�`��m�l�� 8y��FS�ܰSʘ-<拀�<�p��4��d⠌}P�B.{>�zϢe�ԕA��] @�N��tft�&���d2��ck��b�~�v� )�)�Y������7���RI��Q��!Q)%���+�BM��(��P�j�e̗�\� �����-|������u.X+FZ�d�i�}�؏�W>r�>H�c���Q��YI1?�d@����E�k�Be�D��O�����t9��������K��m� ��/�/pG�KV���� I)�������= h��Z |��s��'�����7^�iO�.-@�r�!��9������B�b�"4(���m֎�Bnpm�yE]����v�ͅ7��)��n�:�!&�1b�3�xh��,�T�+�\���7
)S�����F�
��1;���ƴ��qc/PB�Sp�PZp��r�,��ppm
�H��-�E�4�#��'N�����p{�J���]���SO��ٳ�� 9<E�X(��ܮcAb�Ƥqp�`��B�5��O�:�6��O�J)�V����j%i��̗mD�%A��Z9&����1$ԕ�Q@+�<b Y�������<>az�Ic9N�i�م�q�`��5g�%#���������B`:��*s��\��0w"��0�
��P�LK�s��T�`ڸg<��O����ݝ��������
SqCI~��UJ����T2*�s��L�������4����} D�ǌ���Μ������7�'�����4��u ��}����ȑ#��^�������Rz��_��kz�/�X��֩S�p�}�����t��] '677� �r�úZ �8k0��g�ԓ��ɏoϺ��(�Ry��р���֠+]�(Ȉ��$,Hk��S"xڞJ��w9J<p��F?�A�ts�2��B@c�H�S����mn�G<&���$�Yc`5�.[�%f]�P�21��a��z� �`}R�kp�`RW �N`@}�6eJH��D cg`��9�9c�{(�;��w�NJ}$ܧ�Z�	6��Vd���gerd��j�z����?�̭ҘN*x���0MP��ЊA<���\x4����հN��Ǵ1h&Y}M���J,j�O��3N<�ܥ"S<��vL[� �ڡ�8sv��-T�6At֊��g�0_�X�)]��3#�/�${��Y��1A�4|�H1�(�ex�����~
����}��*��W���c!����^�C�xeɡP��P�1�$�똈�^��[#�����/G�s�#?����m��*j`�X�i�*0�3e���f"�����Z�#����l�
Y%�?($��$DD�>���P?��q�Ξ�=}�ݏ~�h����� ����߿5?W��y�g>��J�o)�|�w��Wι�{%���c��������]�ԅ���������믟�X�������[�2:�1�"�$���}����g�-��
J6\�d	�i��i^Z�N�;mb!���Q-
2�1X�^ڂJ��N[�@E�7Ą�9��^Mx�+�UL�ȅ��Z��BD����oB�0��%�cV����m B�3:��Y�9�͐1��³$��B���? �OH\lg�5#`}� �<Σ��|�h};��+�75jKH�0m����ns�}����q*��c��X
� �4��*����PPXkė�����E�1[x$)�S��cԳR�����\�1�p��)XE��W\s��G�Ǳ�������9��i�3�8�a�b%����uŢ�9C%y�~�������$���׉����<�=��G)yL\e}�7||�X���.�`."O�x=B9�y4�⩍�ȭ�����'��56��b���_܈����'O@��lQ�> �K�.x$��B1`���2�gh���r@*Tƍ"Av~8��2�'4��9"9}v���w?�I O�O�������|�K^��X,.{��{�K)_YJy����o�q������_�B����~�r��� @[J9u�u�}�ѣG��/]W�w���xF�3�N�Z�@�fhm��7FT��Dt�S�g ����ء �1��h,�֘Q2OZ��6(�G�<h
���A�tKt�#�(��\r�X�kQ�O늀��P�w�]��z��e���4(4�-X+�s��ҪN":���s�CW�tV8~H1cޓXe�� �,z����v�=�@>�TapVc{�b�lJ�g{�K�<�M#���@���u�y_&��Z$����3�TV���(`�N�������cZ�����]���#�=U8��l�/�$�B?�&�p�T�l���Y���zq���߻�7�.`gލ�H�B��(ؙw���ёVhj'�;�3��ջ��ƤqX_��Dϑs����-�D��UXt;���2zr� 1�X�����������v��:u�����?��=���X � &L2�I�cWmh��K
������~��R�n��?�/RS�貧�EQ`H�� V[�mX�v�c��'���x��0�ϒ���w��#7�x�l��fss��v�UJ i|�u�{��u���S/pK�_����<�}���_� v�R' �zӛ�t����}>����_�V΀!8����n9~��g�V�P�����b����Q�k�T�}bPP��0%�="j[�\b�k��D����������Gz��6����d
�y�#�(��K�%0��ǈyۑK�&�C-�!���Z,{�6�Q��r�����HrZ�8p�y,;/��¬�QYf����I-�C5�w=�>�5���v��'��^�MN)�GEm83~��E����c�΢Åy����
�^���>F��&    IDAT�\�nˤ�p�@��jX�ѶUE��ڤZ�1��ӧ����B�m1��T�'Dn�Zt>c�����$r";�H�teR)�^�>�vC�	�\�)���I�h%���)�(������	�.`�x�w��U>o ��Y����`}���ڲ���q��EN�����HI�.z�3֚
>̖�-u� ?������̙3�~��}����G?
�JTP0�F`Z�u����(
p� �A.y���Ԛp��鯔��Ql�Y�����.��'dp���qP�w�7��U�7������ܷn�������~�����w�|衇>k�����x׻�5�d�Rj�e9�oll��������_��v�o��.":P�u�����̭��zE �u�����-6 �.=v�§��y��}%
-G<���Oi~�K"��*�>y��Mק�Rj�J�Qf�-0YC)�̝1�f���A,�jd�Qt���1�)�h�R����o�Ǽ�xc�f~�s�C����Cz�����S>=�C2����6cR9,���QYf���PI�=��֎D�\2�:TְmZ�X��<�fK�k����(!E��mo�V��K.x�ᇑbD�-����G�����q��/Z��5�e@aR��Bn}'8㩱؝w80��5k�� ���VhA���3N�<9�/�}�K��������:ԵA�E4����.��6E���)���X0_P��B�b��ٹ��F�1P���<�e<��@|�P�T�zw�������k1 �����O��߉��kO q�E�>&��'(�pfP������!��VČ������~� Bx�����#���wߍo�1R��U
*e�̀#�od�BJ(9�El*�i���g��ˠ�|�h,��"|��QHH(�]��):�(��?Z)���{�{��M�(X�]LKp����? ��u��w�u�?p�����˷|������k��k�k^��/vw�|�GtQ�P)E+�* M)��1~�f��ymmm=C�`��:��z��ѣ��H�y����X�e?#`��/N��(�U�8��^���tIn���_�-�,J#"�=�蕢�`�9��P	m�g,RI�'6�Ux��1gie# '�F3.�(-di]CKQ���8G���8�$�~#�C��'u�x��3;�h�D1״n0﹙Wr����O	����e��Ee���@�jgH��>"b��aHG�Y�8k�x����&o�%c��լaz��IZ����c)�j�ɷ��AX�a,���p֠v+���D�(�M�N����9��#$'��£rZ,~	/�f�x��+������n���5d	t}B�{�O�kS7���Ά, �gs�!�k��h�����c �5Z1��PX1
i���"��BL���Bql���ZScRW�Y��I�>$t������Ө���5�R雱
���2+vJj�(^���b�!B!�����9Rӂ���Ng�L�T� (b�����a$p��������}��56~�#��Olll��3g�<�?�������8\�n�t%�]����'^��J�C�Bǀ|� <��:y���:z��� ��������Ğ3�8s{�n}���CFiٙ�	�CFP@�{d,S7
����6��|�P"o`��~�����L'�&ɑAcE؞�ʠ�a��x�	
ID}�(r*e2 GP
1G��0bJ[a1��bR9E�O���[֚��T
g֛1%�,[����4�K�t�e�D�x%�Bg��) J�x��a�Bm�lr1E9�0�[ᥰ��>��&Wزޙ�Xt��6w�m����!��A�%�B�����9q��=�0�Y{�Gl�z�n�TF�O��Ң���C�#Y`�r��E��	�(���Rd�=�E�0EO+�!� ����ʇ3�>���y���3��ݫ}��B�Z���5�����'v%�H\+V�٥�|���#�9��\���2��Y6�q��>:�|��l��A��u��O��g�9�z����XHe�	 	��Q�"	�H��V$�eA��9��~�a���S����q�����/���3��Zk���7� �����K�ԙ��M�.�9E)���p�����o�ye-��kkk�WW���}h��
�nss�<�R:s�n����J[�f"���Dx�n;~��CJ+ڡdN?x�����uc�ԗ�X�8��%1�E���1�����$�K��/��1G����yߒC n�s�!䌙_b�[�}�֣�ך��C�S�6)��G�p�����Kv�{�61ѝ���y�����xڍ)1�M��!E4��)w�q#�)�FQt�rA���_���ﳿ�R����C�*�B���A+��'24U���]x�D�[����)�<�R
�ŝY��� �}?�������h�?g� kؽ1ZbPȩ����d$\�jQ
�Dh�s�Jc�׍Lk�	���<dB���r�Zc�̖=z1�T�|��jgR��R����`����H}>R�E72�G�BSL�<	V�a�b--{f ��;�e�c�ֶ��ц�Wz�/�^,�je�*T8�8}0�I%�G����1v�(��z	�Q���zβ�����$�I��t>��F��k�?tߣ�o��������U�w�:z�h ����M��ͥ�?�g n��ظCZ�;�����M]J��X)�R��ǎ�w�7�������7�x#����)�����}��cJ��+�W�]- ��ui'���E�Hn�����l57<~Ё���*D$X��o���hIS%�B��e�%�\�N��W��|�a<����J�}�oc�O����ܲ�1�;x�D,{ƾ6���F�*��
hi,T�/{��2h=�J@��8��G����zQ�+�H�_L��rr֚~m���L�`�ǭ�0�����J�h�K<�ē� *M����N0_z,�=�q��k�Ţ��dM'�|ً͑�|�4g�s�9|��C��.�p4`����`���M��u��,6=m4u�#�����X��yz�	ۋuō�GZ�v�=�Q!"�4�c��H�f�Ƽ��}�ʎ��`e"��o��?Ld��b�]vhcDd>T��A� j�hH�s�����a��z���"���x1I WL	������!#B��A���j��GO�����&U�X"�af�=J��|�YD�v�7h9Dp5"�����~���������������U��	�������	���Rn�i�������ƽJ�Oonn~����M&����7M.��=�����) +���K������{�J��_W�+s�w�/���8��������d*)�a#׊#��䔠�Y�����!�	�	9��TҘ*�K�\1p�[XcQ[7ބc&;�61gL�	֫j��2H)I<!f�K�֝�,�B����r��sFȜ�j����>o��ޏĴ�#K8Jf�K&��x�$�npӚM*�)�2����>>� ��Gz�֨�A�4|h{/3d����%��Z��1�n�A��Yc ��p�����
[Q
x��'%2gn\�g�2[�yxb}dDl�1f�>J6��u�����+%����=v*k0�-�bl�1{�k%:���əGH��J�(��\H�D������+= ��_��80��0k[LGѫ�熟�pa0U���Y�х0Z�ޣ�����E��lG@O���ĭ2��BO1b��'�,vx��6 ^�<Zc����}�ԓ��2i����|�%�QiZ���:��8��3w���~#���� ��zk{�ر�o|������+�>XJ��c�^�����J�?�����R�oll��׽�u_V���[o������϶�9�S�~�]w�u��/�+�����G)u���.��u� �2�0�ʸX0���'�m͏���-9)��B�qH{P��
	�xd$t�#������R�4��88c��ܼ�}B�r�b�H�����h�q0�$�䐈{�)�"���Ae�C������%۞��S���EK�$�/�a9�*��"!�l/��Q�Ι/�ZSamRC+ōENzo�K�8��|PZ�0Ҍ��s��h''<��Р��t�,�a���4)��RWU�<�ҨO���,{,�~o���z\�P
�?z��U
�HM�p*.ƭ����⾏L�$BLX�}L��ۻ=f�^�~T�쐭�B������L���]$ s��
#�!�y۳S�T�����d)���LӬ�a�p���@|�&�#]��_zw^ =>2D��tp@+�̍�q�s�b@�☝a���U��W��gq(�rɈ%a�Q�;�Pl�[M����IS����a�o����.܋g?���������mo{��رc�;��p�1�# ���� 7lll|����/onn~���oy�[>�P����p�EaOU|1�� O)��+u]- �ܵ�����Թ�;�{��'3J�J�]2��Rc�[�ID?L��3@im��C�L��q�	�L^ah#��<���ˉ&��%%К5�O�4�(0�Xz�!�]�'q�	��Gj�D�X�6� n��E� Zd�;�B�e~l��@�a���	�0�
!�a�-}�ZSs#�Dݞ�/��x�{PND�>��qv(D��ٷ�rSq֌_�~!���ԩa�<7�>��qD�ֵC�X= �c�E�_6='ķ��
���{O-F�ږ����LK��Me�T�S��,�c��s�������� I|]����ײ���� �\В�v ;F�Ek�`45 >Di�+����_�����p��:�$`.��6�3Xz?F�R��ɗ��ɖ@�5/XGd@���#i���j��R1� 
���t[��5V�a1+�p���GGYe����Eg"��#��r�_����[w������Y��U�O��Oe ����v:t��ѣ�@]�wi����ܼ ���[o�����9�˫~����q�m���R�� x�رc�����~�zE������W���Cz��8��8���_t� ��l��dXeQ@<nm+�HaP��P&$x��R��T13)9m�yK�O!g�D�RKO^�؆��m衠�E�������Fk[)��B�5p�i��e��+�7\)2�`��\֩����bS$�UK���l���]Gm�0p(r��Σ�)e��i�Ԩ�� ��Ν9�4jcѪ,'ℐ�
���P���yGp��6��# ��ʸ)Fi���;�;B@Lb��'y(2���G_�R���P�V�K�����bA�[;v-BN8rh(#��H�4G61#���¬� �7{� YĆ���� $���2�1#>:���t����	��pu� ��9����G��$e��>t�bNcd��)(hC��������K=�6R��j������|q�h����g�hN�`'"\(R.��{����gw���K7�%�y���7�K�~��m�ݶ�_E�B��.���ۿ���;�essӖR.lll���c�~�����(?��*��_�U��3�~F���Ig/������k���/>��
%�ڤ��8O!��gd����G��� 2������d�U�V#�1�('B��X�#�aO���P+�i�fJ)p������ǀ��T���_���:���GA;����:��!7D�ѲUmF,�Qz�����'O��JWZ%��Z�EOI�Ze����o��vs�f���s(��భdn- ���FS'�5J���3�Jm"Z9��-{X͍�'��V����Q�}���U�:�h!�3�^'���{$��b.p��wk5ߏI-��ȭim�"o���G�<E�%��E�1t8��B''��:M���3cڸZ�����B���ޔ��jl��Y@Xk8
�NP���3�B}${@UW���ֳ�	%#t�P���N,���=h�m��7K/P�R�P-���%K�$䌉�f)|�B��Ҩt�$6�����b�lE@�R(�e(�4Px����.,>qn�N��w����������y�}�ݸ�[��lll�p���! ��j�<��\W; 3֥΀!Bx�>��c'/|����;I
H_Y�v���w�'Iҿ�3e,����g�Z�RI�b'�B5v|hc�M��V��S�H���g��md.y-7ܜ��4�2㬸�f9�Ơ��Tx�+rB|�>�촳�D�X�y2 F�M�(�)��V��_����f-����{��>�VJF��X��P r*Xt��>%��x�	ԑ;�3Fi���)&̗}���<i�.;��������5۝�ܹ�Y��W�5��b3�6;�2ytA(�0��E6��vw|�l�cDe�I��Z��)�+d-Hq%,�8����fn�ӆ'Y�d-�֣ ��������|�J� �����c	c���=��ք�ļw�/ ����a�צeo���A鞲_I?g�)G�9�٢5�v��@�j��c`\$��b�Ee��J
.%�zA4���
<v�c�=����\���s��;�wx�O�/�������9���o^�U���<���R�+_�J�,��[W; s�0
 ؆���8���S�{��\����ٵ����9Cw�0LD��ܠ���c�6�]� ��Q��6R�4|N�(hL�t�-��2��'L�b*@*<�k�a�%�Nb�z3�Ӝ�����=2�.FX��U�/�(�oN�?{�l�U�	�����ιW/?0ƀ	q  �	��MB��RyT'C������̤'T%C�nH�C���IWM�CȐT�6�@ �8��וmɲ��,ɖdY��}��}��{��c���cY���,�]u˶|��9�9�[k���7o���'+��xk�?+�Q��w6����,n���r^!ĬE�ı���L����!��kg��£o1C�S���B�+�΂!H�Q��n��Tޘ��ϕ���fX��Is8HYt�5��A�E�ŗtF����("Xj�w����4��I�P�:��[��j��^�rFRNX)G�^�%��pĽ�.8��Q�B$�s������o��8U|4�z�AR2�hPW*#�:�f�
�ȭm13Д�&���&!�ϓ��^C�t�.�|��̜MFɨH��Kq��{b8x�#��Vt䓠l~8�,%(�n���z�{�>r��������O��߭��+������_Y���~��x���~�"ԟ�A"z ����gxn���B_���xڽp���S_�z��;�8:^��-َ18�Ʉ��cn�D� �N�Q���I�Q����l���z�` T. 
�c���Ify�>9�����s���7d�lB��F9u�Ʌ����h�Ue����a��q�0�:��X�g�$0�TfS'H=\�n٦����\�i��E�8q����TUP]��Z3��"��������h���Q��� 欤4@�����N�+� =��C}3���9�I�Z܋�DV�hLj��,=i1�S_��M�?��ȏ�����Ԩ*�,�I]%������k��j������$0���`�Z��p�X������ͷ<{���������rFΌA����i���+�ϫ�A BL�:3�B�ڼy�a�.��B�?��4�����0*��b
 ��_Oj՛l�W�
��gg>��/�+�4���3K':t�����!<5�����wI`���3��O�x�Bk	�8�����9��n6�9��6 Ͻ3M
,n��	8��=%�p��������s��:�#$I�]���eA�@�"�{�.�~�X�G��ղ�l�n�1E�"IaP!A�;�A�&)��̮X��ˮ��ȩ��r�V�;sa+��6F%a����t)��Z��ږQ��+?!�*۫����ܵ=��l�Q�`�I�L.�x�',<�LoϨ+�A]!X�L��G]4Cen���_��|R��z̗�EBL�<M�r�q��ݽ����^��t�Ne>��XcTWʂ�I��p    IDAT���r]T��.+�^x�{�S�Č.��0ZCJ�ө3�8�0Ƹ�䂴?	b�[��)��f��t]bl0d�=o��_��v����=�~��1�-��1�}��A�́��n�b:�s.��!R��q�(�3�ܙ�OS�d,�1XT���\m`��0q����<���I�{���3��;����ǿ�I�?��o�I�/{�K�\��m��l���� N�^ s;v���w��Ϲg�xn��q��Ok��?��Ӌˏ�H���;��"��2�C�0!���#�-+�-8�͸�������38d�np��@.��x	D�*x����+��v�0?У �C�:��c��B�6����@F�����!`M=���Й��1�"N--���������l��b��vf��w�H,���ԟ�*> N>��<Τ)3��rf���1����R�B���tQIh D,�0Ko7[���]0w�_���>��P��C*�ޙn�6�[�R�hZUkhӠ��	Xn�)��̠gF]|���ń�X�m�{�!������d�O�͡ū�23$Mi�)��@eWfi���D3ƭ�ZVNw&�K�Xn[CA\�"��f g���m)��Nə1�Z��]����!J6���~6-��r�^���<4{Cum�\P�b����O|]��!X����N<�p|��#_p��xj�/�E�1��/��1g<�����+� �͛7�G ����o������9USW9 ��S��i@�*Aq���v?|��:��n|ŋ�0;��C�������`T%��˝A�l����S���	U�]����5�ܡvU�
`������}�@�Q;F�k�#�H����'����Y�Pt�L�Mc��y��"D��4?Y���1�e��e�xb~�O۫C���l�]��Č'�|]ʘ�� 8dNf����� �I�pP!�r B5z���P%k3<k��f|1+�Ǐc~~�P�BT�f�q�z��hԨ��F�i4�2�����&K�='5�!��a`���B�-�\V'���)cv8P΁M�m� |�V��i�S�U�0�Z�	"�=?�3�����������ko�	�5D�6��u5 d2A��f���6E�d��;$st��Ä�O�T5D���:�,�-P�əM�I��~����-G��<�H���P�>�����x~��#_�B��1�����OK�.I������������LD ��̼���#[�n=�}�����OqV���)���<)0N}u]��}=�_s�޴fX�g1ilh)���1)���HL��W �2�E|�=��E�����=�EwYm�+��FN��\��bH���餕����cgf� ����3*�����鰮ԅ���k������~�sʑ��	;ix�Mt���Y�$�'O�� �9��.c8[Uf���L9Fc�J�.K���jC��+�1���ʑ�ݻw&%s ,���ksԦ�aU�0x�n�l��O ]TTf�iQW�U0n5���h]"@��uɮ��z�	 XV�G"�GI&4�Fۙ���UU66��R�Ę��f��.�M��st��iO�$��=�VŬ|�FPk&�GdYw�@䐭�*|�ȹoj��K�]l�#�I[մ�n��D��� ��\e�~����/XXn����]M��N�E�W��
ӿ��/I������o�>|�,����Ν;_ �7o���5k�|כ���6 ��#���n �W��]��|�����eX���*(�Y'{e-'Q�:TZt�Ó�-�5'@o���z��ڝC�q��o��T�$��05��!��<k�Xh�~�Jz�����i�z��^�S��6z��I3�����Л��Ņ�V�֚�3�I��5�N��3U���u_|!}9�n<��'���I޼�aԖ��Ba����1v�s�~0]xۡ�Fm�u3�3#2��%���ݻ��	`�4D
�71��6R޹�6Y�㔴Sƚ�Z'�Ek����X�戧�� �~ŒX��ƭJ6A �����X�sF TG� x�(oB@��6#mT���/(¢�9OJ�W?�S����+�>��W�+o|K��uY�*3͈��q�^�'�Z({Wɤ��hRkrL�PVjYU$�}Փ��O\5�qS\2wD3�PWL�� `Ԥ�����v� ��vj�s��\��%]�/����8�Z�<�y���; �c�u'�l����{�S�����x]J{w�9�����tb��)n���^Iw���=����a�MP��m�1ꓰE�:8��T�S�ڐ69�1��V �ŭM+��+Q���jC0�Ĝ��!�B�Ѵ9��Z����ACKm��]"J�9��Io�$��&ݱB�F��afE��f��x�:��sF4�c�p��4y��ZĊ�L'ZeگTV"�P��E�?�+��_�ܳ<���&�={��M�~���9-:�,�p����Ĕ�yt)by�bil.��}l\�.�^��%#[�n�%%�9����`�J�5�!xQ�6��~��$�X.@!��~�
A���39�����?�=�wX?�n�]QK���*.�y�RŁ� 4��W%I4�3r�� 鑬�WÞQn�J&�9���u�!ͼ`�0�P�!9 ���/�O߱���.��S����n 
�ɲ�`~~�o.b����������gL��OxDD�#��s�]w�uc 1}��U��:����OCb�q�#�Wm�}�+��7;窺ҘSNb7��ۋ���:z���#���;3L1��.P��.GԮ�`����+���5��|@��2����ȩ��N����i�	k�,de]Wޣ���f"$��̂f�o�<�q?uv9�lr�/���B�P,..Zc���� ��Ɲ���
��h
"�+�PW��6$�%����(I��2��JN۶8x� �i���4���]T=;�׃s�e�,�'aXk�Mi���U�LR'c��C0$@�%"U.t)!FB�*ޗg�� ��`f�Yk�N�/@ +'�D�]T!`;�GV�h��w�������ꊮ�*旗Ta��\�U����|���@��7Y!�Δ-�:q�������kҦNH�H�a�ʲX��I&�"���dp�$���9n�}d���K{����i��%��:o[�7>��#��O|"c"�>MDGDd�s��;v���W��޾}�s���Ym .��l���5�鳣��������orި�~�<#�edx/ Q�Z���L�ݼ2��(aGJ�
ά�!��X���gа�9[��$�!VN��,��Z|#��fƠ�4@�]��T���8f�A�]6���3�apޘ݂�z��ެ�Mb[���?��;�s����Prؗ��P߮�
1&SE�~��cP�v�jVD�lN�윹��:����'땧��}p/8g%C�`0�(ø�H)c6�MV)袢Α6K���:��� )m$�38�o��6�9���Gʌh�zm�wo1�覚~ݙ7Q���1U���{�e�,P{e�&dˁP��Ŝ��+x��m,�qx�"���ٚ�d�F���,���� �_!r`�]��лJѧ��{7q�t�C�Y@�e�|����<ufy���?������{�����)��X$��"r�>�ǎ���5�Ys�}����n�+�K��@!�btS�Ag�s�?���Ѩ[pΉ�$E�JX'�*��A�-G$IhS�(	����<�I��B	V��!Лqc�}�#:���'��<�(�o*̄a����hM�:���C���N�Bm)+�K��\i�9�ɍ�q��̢�:��XZZꥉ�Щ�����Z~Q=<��C�I�-Yj�ޅO@��M�q��ř��ܹ��T�,�f�� �AO��Y���1"牝o��
=̷�4��tE-�h*������MΚAa��=����vI�!��uU�lVO�4Q%3uPa�4>���1� V���Ʒ��Z��o��}n��'����qjM\�^�4���1�y�j1�LһA��:~(�z�-��_�X�W�?�9SU������di�]غ��8ufy'�o�sn��eU�/�ϟ��'�޽{;X��<:77�3 v�ڵ� p�}�-�9~�V�K�(�h2�Og��9M�������m��{���HqT�Q���XZHB���dD��ka�S���h���� ��q��M�sD���#_�1�:N�VI~�ii�k�9cܵhR�Ql��2%|���6j�`�J���4Q��U�M��V9\d�r��ceF_"��Ѩg�g����������x��B@U)��t
��>+�l۶�E)523ڤ�m�=j;,Ǯo��9�j+u������f�a�Fu,��vf����'R���]R��Q�����q�)��)� ��Φ|5�
Ϋ��9TN!ẅ́��+�� �-D��x��޼��U�Ǿ�E�������z�򚻡J��+��	��S�<^�(		Q�w��+2��\��Qy���QU�E����k�>|��3K;p~s�s��%��>��?p�@���>�Bђ�D�ڴi�o0�������[n�$��K�E��g=(�^�Χ� ���8�Q������wL6��N�̨�dŎQ���"����|E߬�{��:VMy�@0��V�Y�}�y�Yy���57ݒ��OVӼG��,ȃ|��
<�1����u�$�*X;;�&E�]T��`E�W��1���Ғ50��ف*��� ����h�����Ά��R�9Tz��C�N�Z����`ԶhS�}�+�0,.,�����ޱhS���L])a1g0Fm�����=��̭�2�;�6.d;#(6]�tZ���/*-T��[R��,Dx�Gfƙ�r���	*#U�H���e}Pv�Ij�'��n��Lj�gv�01��F+��φ',t�j���M�������/�&(&?It�V;��02=�Q���| @Ȋ�Þ��;x��{1����_b|/+}���"�?/--����}m�uc��;�̏�ڵ�_oܸ�M9�G���S@?�<��jpy�g#�@� �;z�L�t��^>��5�y� V�<�P 
�cx�z$1V��kk�ɣ8BMM�f{�If��tjf�F:TXKGӐ!!M�sTHz*1�{#����8yk0ԟ���U@ʂ�� �3�����C�B3ư��l�g=v{hl���к�x�5b�v�J�U��34)�f;�;����QW��\��Ν;,����cc���b\\㄀&&���gfj�(�̘��]ou�3�N�mT���3��Q��0�m�Yu����"��������Y�ZWm�pЬ��2�q��à�J%�dH�5�8#@��6x��n�_޽e���3�|?��7 @�!��~��УN�H�{�\{�GBF'ɜ0-s� �&�|���N��3����C?y�������#����'��N�?}������\ď�~���رc%�����{�ƍߜs�����Yf�<���Y]\>g������X����5w��ǟ\x�~�+�����t�7�b��4Ŭ������3�Ea��"�O�#`�+��i��#gR(BaI-�1�ڱ��Zpj_!�d��j���� P�9�l�<�+��J�0�V3c�c*�.o���N�"�dB�&w�¸1�Aƨ���{%D�'�H��Q�Q��*Ŝ��H3�[���z�V�MD���A�0�<D�6isTL}�j�֚�@j�S��7=���f�J%�YI Xb��/�f8R��q{æAs�8F������C���H:���]�6G,�-�]7y�e��[4.���}ӊ� �[�D�;,wJ��B�s*�5��t�A�.���ּ��C�yQ��P=���:�@���{��'�>�c����m� ο�?��C��M���/ ��?��t�=�����鍊n�I94Na��uI����:����0�gl �{��ߟ�_>ܓ����I-�Mӎ̀D��l��uK�T�L>����A�c��*��Jen~��,*����9���h�C"��ƌ�����	#��e��3g��bsQgF�E2��Rh���/t�XZ��0��lku>l��޺�L�@T��1�Y�H_��&Њ�aƎ�͜	�N���Ow�fW-��B� 1��i{���gFc�)�^
Y�;�:x]w�.i�A̺�NY�v��s���D	kt���^8���������u�UiB�dʘ��S��� )���������[��c	�,�;C-�A���2j_��?{�̘� ��8 ��G����n�]O��>���Gw�>�%���!���1<u�/2��n�\���|�=�ď��c�;	ਈ�9?����Gn���Q��3����y.���4 ��?�|tv��^~��_�ff��"�L0C�N\���7G�]@ι72Q~M��d7k(ę�F�@���٠�N:@t�Z�
_��Ʃ�0�hS�,G������+ Y�`�MgHmW���!�Np{�S|M�[n��L��v�z$A����E����!`�mM?��jp��b\�hJJJtR����p>|'�x^%9!���H �򄥔�9Am��Ap����J���A ��{���=a���C"��C��(a4x�CC��
��&0Cm�9��>�����*c׋!G��/~	����
h[�:�������Bڹ��{�sox��Z�fp�"8UzdLIN�Ų�*n�����|��*J@%���,,5gw�=z��b��]q�+��1.O}.��˱c�����;Y�A�8 "���:�uݓ��rKx.�����" ��F�B`���C}8
u;�8jw���ح�ͱ�	fN�C�˒�r�w�����^��V���fiɁ�v�ń'�NK,�r�qj��qP����a9��h�!�zD֐ 2��5�!e�A�ڍ)D����/�erae�{��sN}H�2�;tI�w�N�����9R#S`�4�z���)a���D[�nU�"8�vJ��R��y���1� �-��Wִ0�6k���Z�MJ�"�M�dC�4�X5gV#���ZZ�Qi�l-���:1%,w-�Z���U�ka@�VC,em�Ll�"D����?z�: ��ٻ��Z!5�)M��6:�y)�@�	�Ʃ0��
!8u��5�ei�<�|���o[Xlva2���ڷ@��;��j�.�����b�����fqqqzpHD�{�0�񺮗�l�rI&"�" ��)�iӠià^ m��yin����/�r����^��1�F�! "�.�y'�B�y�+C@u�Qc�ӕ*gQ�I4^�<�ܡvJLk9�&Mfk9� 49"��DW�SϨ}�ڦ��L* Z���AY�CW����G3й�1��j ���'%�d��[Ljb��LRf���^Q ��.+��w�y�a=�7B��B����WGT����e ��#[�������Y��љ�!h�R�j��Ӕ<�oǜA��Ĥ+%C� ��2��5c���]DT�i$N@��7�	�DJLI���I�ᐠ��&E����(>y�E"wߋ�~��i�B�(�B� (�5q�$�>�Nl}�M��ĔK�c�#'��:��ȩ3�cB�{:�c�e\Fv��t.��c<�����ݡC�����c ���{�M�� "����_�Ym V�<�׹\�:],X8�М=���?;z����5W�}�s|V�?�ɉ#���,%G�8'�(êF�	��r�,�`D�注����^�U
��,�%Q�3*_�ÛU�GE���4��B����"�dK�^������
m�0P$`��0��1Sך\ȩo 3 b`���숰n84�\}�U�p�/[.n#"�?=����l�@rK��y�́6'�bg��Ča��;�`�p�.EtY���:Փ�	��#Z��^�AЕJ�խ�Е����0�A#���f 0��d�Q���]o�s����Ȣs�'��\��(��-�W����t�������󅻷�g^��=��ʢw6�C�`�A5��,    IDAT���Wʑ���ȥ~|���O݇	�_
�<��cz�,%~ 0??���#�R����}݃>8p���8BD^�����ι3���W��%zV��SδTp8��7 Ξ]j��.5��=z�����o�Z�LJ�3��O��P&������2���,"��F o���2t��0�_!� Q����JB� �H��	A�4�A^��*Y˒�E5iq����Β�Vz� �����>�'��C>t�-��hH�	�����ܶ��aF�+�Ew��`fXp��`��;l�x�EA��4�1��d�U�kD�!TA#�T��ʟy�Q�z~@�3*rଓ�3=|��s�gqv1g����J�]��;�j���Bex�`�@��)c#C��	�$�XR�������ް$���'5�	jM��@^y��Τ��[8�8>y�C����'�E������2�_v�r��� �������| n߾��^�'����>9@DGc�O��e/k�o�~I���=���>�[	L�	�8O ���������3����/����Ϧ���D��$�"�p���ө�i�Ɉ�u
u��hF�rPX<[P
	��5a�ֺN���Jh��9�E��P�G��|���
�*$^4��~Ȉg333(:�&g�P��R�+�%a�ǁI���YD�>`Զ��0�� +V#3n�r; _��)!1c�� �r��Ya�]���֨h��Cê��۱��V�~����0+��Ki�xG����AbՊ8"xR{���9��22�F����d�{dAu�K�!	h��SU.M��>��$0�5"g,u�������l��t^���;w��tT�O�1�� 9�rVC���7�wh�<:qj����Ƿ2s��KxO)��߽s��/+K_ ����:��&~T������׿�B��q G�s�w����o�����9w��+�l>��O]��Xm V����V�rJ�����,�3K���}{��Y�v��W�p��.:�����nWY�E~�,S��~�$���Y&\�[\��U�>�p)5���b�vk��vMk^H�,2!�� �m:l�Z6�Z��M�٦c�dA'+L�#�5�\c�Z\	�T�0�����^��5b��;Փ̒����r�"�?�ke�v�O���P���7��Ԉ9c�ms�$�sm��`�`�'-s��F�\2�*��1��͒7g��ǄA0j;�&�q���wpp��tRIv*\���F��]?a&Խ�� T�9!�N��;���4Q�.kC�RRu-$"U�ᔐ�m��!�z�֕��S��� 𳷼�65��� ���gU�����Yl]\Ƥ����2�w�H��I~��o碋���|�#�_���L��ƣ���~��_�4�c��p�e˖��k>��j�z��L�������h@�,����Q{���������W]9���Zˉ�Y�B�t���t����y6O��f���^U�B�E�����TNad& s�'5�ɆD8g�4!`�)�_��Qט6��Z�8�x�2+`;����`���y��:pV�.+Q�[�B2]�U�	��@����D|����� ��E��$ǈ�;�6F+��C�l��� R���I~e׽�4�}/!@ʄ�l��̔\�Č�#c�pFQ G� %���o
���"�`(��=B;U��]8��:B��I��-Ш]��w�z�â����	w�����o�l���|3��N�2���^3��t��≇=�+�|Z�����/a"�;���r����������@��;F�����ͽ}�ƍ��!��ι��۷�,Y�8���y�s>$�\�`�AM7 �Ę��{��I<�k^�}���5����zmL	���`E�8�������5�)`H�����B�z�;�hs�i� o;גVGЉL� 4��:@��%Q�vɒs���#��[A�F�
���kB@�""���b{m55�AS�$9�ؠc%WC�b7�׿~;H 5bj�Q�k��S�L�!?j;� 0��y8���7)���6�P�d0�@qvT;`E �s��7BeJ}���J�lSB��h��l=@[Cro��ȃP��*L��M����iC�- �3�KFDF%��04g`j"է8�����݄/���5���v ��#����K��a�ƥ�����}l+&ľ�����_vp?p���3������sssE�|�c"r  Dd�`0x|4�ݽ{�eS��K$�`�|ǎ)�m�l5���f���� 6 ����u�찾~�+^�#�A�&��`�N��[�ݾ�ZՖ}���m�c�Y{rj��5~�*��Ep�N�Љ>8���
�`�[�����Y����H�Z��\tB�)��m�<�*6�m��=�z7?|W�ܓ� 2�!����d���^爔�5`L|H�����D���?�ČJ�3��d�	D�B�MQ9�0S�%m�����a�cB�ҧ�4�~����Lg���9�H5Yz2��-�a�I�5���.G$a���Lj�9���h��L��B���d=��s�$�9v7,��=F���ؾb��3�_x����u��Q{b߹�"�.�����eR����o?�~���ٿ���� �h/=LD��={������o�s~.�U`�\�9�LpZ*�;b�X��FM7���O�_;s�+n�v�`fc�H�!l�tEo���2yb0<t�*E�Q�UV��NpZt�(�_@�W�"���((u
C��,J`Σ���'�8E��g�]����_�/�����q�7������Ƃq�0MǓp���q��Zu��x���#UU��o|�s�S�!!�U!�4��͸F��Q����={���D��]�ݫ�OQ�mJ�g���|%#8֤ye�#r�SRdo�,�����LRg&>"�μ �ٚ'r�m/�s��I��M����x'e�'�G0Ը�K0�
��7ބ[o�u]��ڟ�|��w����+�Ä�W����M�����_VS��Z��}������5ǏC��q ���ͽ n��׉��;v�ej��� ��o�4� ��k�Z(��U��< ����o�bÚ�_;x^J)�)d9�7� +�E������/ΦB��t�e�6b>Gz�w�5�:
k�*���$���0*
���;��rJh���/���qE����z�%������;X¢���%�s�������-/�闰��'����Q,�r�����7cf�
I�Z�������M���-�{6K^!1C(?�P��k_���,�˧ʁ��
C�iR�uA��B�X�g��,���X�wm���cD� �)L�R&	b!?�!A���q��׮����<v���x��߅	���"�����{����m���}��m۶�i":."G�� 3?LD��G�o�^��%��?߹,����m;�H�4'�� ���q�0`������c���ȓ�c����9o��v��;8Og��^�v���3�~+Fy�7q��^������qD�[u��ûY4��E��0J�^(��+i��T���x`�~-����'Z���A�O��Xq��VEm@���/ciq��)	PmNhYy"�d���J�����F-/������*B�X8�@,�(���̢ΐ�7:�#����+�Yզ��J��P;]xt���������ʓ(v� ���l�S��y[��gR�A�b
	 �8C���g���	~�_�۶^�:�����WA��o	�9���ru�{۷��m��}�C�#�ȸ�%"zRD�ȁ���_e�� N)^�n�<.���6 ��[?�
��8���y�G��}��#_mcZCB�@^�f"��j@p� �p^w�Bq��?+�D�Xb@o�,_��R�K^A�
�c��D�ΛW�2��ꫯ�+^�J-\�b��"kZ1�S�%4�è��i/3[v��3[�q�7����o��N�V����B�� dM��FMZ�ٮ�֞bѼ۞Psֆ��u���Un�:�ys�~r/n���.��ɱ��T�A�S"��p/����;���h��%E��<�d4Ҙ�F�?��͘�		�	�P�`F=�9 �����w�mo���S���������1V9��ܻw/��]�J_��e~��s��s��<B8�4͙-[�t���?��X=߾�L�OK���g������ȉ�6̼��ٸa��y5RbW���W��33 �־UO��Ȭk�b,�A�iuB���WHY̌�t�\� �֩�mZ��(Ç�*���7���>�!8��k����@~*l\�V���Y�ٶm�>b��Ɍ6G\1\�Ĕl��rL!`���܄`�D3u��@f�bĬ���	����P�d��#h�3��GN$�*.d�� L.��+yp� ��
i�,�W��xP��Q�N��.�B�(�SD�Fb(�@?�g�O��ռ8�2T�
��=�~��m|��~��������/�˒��s�W�7��?��?͟��g;fn�hID���:�}7n|��]��S0�2?����v�s���/Cozg�$��䭒6x ���g��l{��:�ĝ��x����A@�|pSS�y�;�l���6p�����V?�iqJ�J(	GdaDQ��@�Dβ�uRns�������7?�P2��?��יLN�C�	��h��Β1-2#�.E�Ͷ�/|���>�Ϡߙ3cةĮ5v|��H�˝���|*�W:N����G�{�<w���i��prDf5��ۡ~E+�]�{L�4�Q2��2��>Mn5iRTy bCoQ1~��!]���λ���<�aI��R��hڥ�PyT�Gg��Ư��mG>���I�+Z��={��U8���e_�.��y���_����O�c���"r���777���ܹ��4Ms�[n����k`��z�iO�|�K����i��:�|����+��_�vf����E?� ">'�� �s��	�Up�ę�^P���0���Zp�$J4,�2�o�J�'�*�f��u�3�xuL]D3�k��U������("���m7�ϯ���Erp��z׊.�0c�Ν����[�EP	P���lQ�z�ө^��k����U]�r<g�?��xB/>��4	��!B��"���%����ć�Έ���%UZtQ��&�	R�����I�S���1�kW�6���GH���+@T'M�5�~���)�Լ��I8q�c����ٓ� 8�?��}�;�Q���o%�Ը�2�'��y�{�|����{ѦM�>=77�sX-FO;B�mۆ�}�c�g�Ƅ{�h���� �c�G��x�ͧ>����h��Ym V�w��<s#����D=p�s�*�↗<oӕkg��V�Z���A6����'���f�S��+P,��λ���J#hA�jW�$j���m�.��9��:�M�w��O�w�\���&S�)
�ݓ�g�}f���'����C�X���1��_-d�^�:�`&��%qY���H��FJs�es�7H,��&�Ú
1@���ݳ�C�tݢ�?�1Q��T�Q��\/,�@�*D�$+��ʾR���)�93�TC��',��E�G���;z��^f.2��PT��ƍ��/|�����������W_� ���S�N�}�C͎; KDtZD�����������ϿSD�"Z?��M���;����ފx@��I��p��3��C"�/�pdݺu�[�li�^�w�Ym V�w�ؼ��F`Z:85Z�	2PЁb.t��^z�k��z��^B��^vĀ�����@%n�lqQ }�<����&׊<�~���T8t�����3�@�9%��p�,���?�S�؞���b$�>�����\����]���g?�?��G�D@�!9~<V=������S��.�Mnq�+�9�A*�8؄���(����߽3kn�H1R*9:�넟��zR������X�
ř�z���k�@&�4C"Um�¡_�(�_<���� ���g;��?�V�1ɾX�D�כ�lڴ���������뮋G��:��s.6�� � phnn�?�����_��_�r0�� ~��{�C=���{����������"�(�����9�X�4����6 ���L7�Q� 5��#0�	2P<�f�u3/�b��K����3�:��Y����XIgNtu��<��  Zї<(D� dnv��g��d�/^�/����3�����mJTF ��W�y����;W|AE�����w������SΨb��]�)�1㇈�-�|�"�3��W��gad�� =����SX�x0���
���N����4�2���WV�b o�=�7e�Ȓ��슥I�u}�y0� g����\�J�s9u����#��,��~��_�Ĳw��h�7o޼����h��y��v��?o�馟ٱc��o���۷o?��7�28�6m��9w���"����K���^��XDNy���ڵ��7m��Vf>��;�_޾}{I5]=�9�����<�	 <��p�f`zM0�
l�+m�����ޑ��Z�����L��LQ��?��Ή����É3��yZ'0ḡA/��ʶ�����M +�@��?�#�Q��W&���}7�"mg��O�	_�ۿ����qFݵ�p�����2�6G��=j�~�m���=k_�7DZ����e30+J��P;�\	��r�I΀'�r?�J4%@k�����n�B��P�ǒ� ����w���x8�^�̩��hǞ����ٶKO੅	�/�e
-��(_xӦM477���7�1-ѩ�  x�9�Ď;�_�}��͛7� ~JD^��/;�%X��} �������7����iN��[��j���� ���s�j�|�@�
�`�90���`=���+_5;[_=;S��T &w�	���:r�,ά���/�5�)E�9�`�����W���)�h�)�L���\��s�E��}7~�w~���3<3B�pV��M��?tu��ɒ���\����yD�s�N��$��R�t�i��T��䛢~���o:m�[��<�^��;������_���3t"����ҡl~�u��p����O�$��'�89�t O-���@��E���O{�?�{��͛��;"Z��"rv0�ݺu��[n�%\.ѳ{^���^�R�a�	"�YD����{�M��8ND�m���s[\\\ؿ�e��_�Ym V�wә&^*p��`=�u��w�3/�.����\}#���&`�l�@ d�²��^�P�ƼWq����ݵ�y>��-��g������o0Z^R�?�Ψc7a��4��MD��Z�uJwO)��L|_@0_�]+s��(m'�
�{������P&��LB��U�ݡ�A���!���+��z~�B�0���d�q,�=�ă�dt��ٽx*�?�_ �sCz�U˿y��VU�.//� �ݻw�X���禛nz3o�YD^�k׮_޼y�#�#9����wiii����6SwV����zV�
�PD`(��B$,����A}�@��x��7�0S�0 �e�(D�U����D&r�3����g���	��ߋ�p��@e���w�'O� D@��1�:I�M&�>� ��*����]��~��ߜD��RXl%�&����8��ؔ�5��;8r���HA�:�EE	 PI�9�9�<2C'W�t��A@ܥԶ]�~���B�$"�&�Ą�7]�ϝ��!��I�|��
? ��U���á�[�N�l�2��z.pn����c����|�yB8�s>Ὗo�f�{����y>�j�z��υP���H��L�
�� X�����Zs���Z�fx`Px�]6A��Q��U"hŧ��K,-��Kw�}˱�+=����o�&~h�B��P�dɦ��Uӟ��W����~�_<22��VH^�@NI}��W<�ɐ�b�SSP4�ȕ���7LT�h�6pP�߲��v��������?�A��  	�IDAT�Q��G������]��䩥�GO�ݏ�����x��?7��\Þ�u�[5��&����~�����7m�tEUUC `��4MEQV��pV���\94�O��K	��������i�u �9�׿�W
��{���e 91����>���E�<�C\����Kw�l���x<�?�A�u�7@"�dxxa�0�;]q�9���������SqAԘe�U�^
�"�����EYPP 5�ѿ�����1� �����<�*���k�����W��@��o$@~����s��Ǟ�Ì�xf��4�_
~���M�;w�������_�E?e��P}�j�z���|�@i<&�@�go���X�n���X�=�_}�kg�֚F^�do�d� !����N�*/$��ι�������G��U�/Y����J�L3�TN�jDT�
ɬ�=T�� �b[���3j�Ԩ���`	|f�E�|�� 9�C�X�X�����<�@����q��Wr�SW>��2G8��3˧9�G�K�cxz�/�;���Sw�ӓ����B��g�<�j�z�����V��������k���<�)�۰~�JA�Z�!`c��������UU�^�0��߆?����Zh�C8���8Y=�$�@��a�Eq��~ެ}E��͡�d�H��� ��dC<yI�˯ȃ	0-���i�����9���X����� x�(�������U�a�3I>�RZ��~�����w������e���
*��@D:)m��	3��,l�8�9S�5��d����z_ۯmk��w��ߺ��zs��u��eOڰ~>���?.��$ x���d ߂�a������<��N:��~���.&ާ��C�@�m����/�ԙ3g{p�"`�J���]�xQ�/�&p�w��ONU�W���_qǻ��/&-�i`}��_)��}
��"?�|�X'��&l���l�r=����
�Zc�S\o'sl8���~���<�X��z��,�nVU5�yi�øn����������%{����> <�%8��´%�]�G^|�uc4����ų��I�1�:�c���G�~��?��'N(,#����^ 叟Ե�^�����Z׮]K�R㝬��jY�$7�]C��V)�B�4���3q����8�:0Fu�Z�*D�X
��Ż��x&����v���=R����C%�O��H�Z�����߾�O6+[�x�����e����}�����A??z���O"��!�A�8�@��`X<�>WU��p�Y8��+�_?z>:4??V��?���>��C�;wNǎ�p8�wi�im����H��H7n�ХK��q�^�b��Cg�R���o$?nw�K�5�G���q�]��>�����c�_L]��@��cڳyQXv���0���̘TЗ2��;�ڍw&��t������w��Jf�Jۓ�mh����z�he_>��z�i�^ހ� �,�@��)����ힶ���ī/��HUX�.�z��~���,,hcsS�w���;!�0q8?�w�mM��*�%_����غφ�3�(�p&��
~k���n������D��W�E/�ѓ�	�	��&�oG;��~�c��8��5���Ưkw�V�` �z��/u���z��|>A�A���a�@��@Zb��HX�C�ݩ0߾8O�%�/�u��1���c�	����ؗ�*37?W�K��q��":k��w�&���~�
�cub=B��0&&�*�ɂow�s>�y���Iz�;��?��\^���=ޮ�m�|#kjy5֘�i��[n���`�����=?�r��}�{?�/��@  �[Z�o<�������iIBz~��ɓ�/--]=u����VRe������n�w��4u3������=���X?������8��]x�w�ݨH.��+�*xy��1/ɸ��o�I�ķ9��w?�\�Ό�\c���S#��H��jkm���sW���) �����&���V��|>�H ���@�aJڛ t%]-O$����+?��~����Y��4t�Z�L��
��yMy?O
��{ײ��y���z|`F$ �t&�͛-Z�g��C��u]Wڛ�<�^�eO�������es��,��	 0�Y�������}��z�����S��[�u�ƻw����i�>����}D 쏇%e�P�ا���U����Y�A6�wȓ���ʍu������ ��t%��i�ҟ�Ht}Ϭ� \N	t���z^�׺��`<$ ��Q��+���z��B��W_"P^w��N��gH ����d�o�?j ��wU��                                                                                                                                   f�7(.�_��    IEND�B`�