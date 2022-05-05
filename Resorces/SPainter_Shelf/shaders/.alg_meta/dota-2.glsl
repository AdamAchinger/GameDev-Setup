        r e s o u r c e _ v e r s i o n       /5950a14a37b891b796535273d86a4f6d068e663c.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
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
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   9 
 # l i n e   1 0   9 
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
 # l i n e   2   6 
 # l i n e   0   1 0 
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
 # l i n e   1 7   1 0 
 # l i n e   1 8   1 0 
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
 # l i n e   3   6 
 # l i n e   0   1 1 
 / / -   l i b - a l p h a . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` a l p h a K i l l ` 
 / / - 
 
 # l i n e   8   1 1 
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
 # l i n e   9   1 1 
 
 / / -   O p a c i t y   m a p ,   p r o v i d e d   b y   t h e   e n g i n e . 
 / / :   p a r a m   a u t o   c h a n n e l _ o p a c i t y 
 u n i f o r m   S a m p l e r S p a r s e   o p a c i t y _ t e x ; 
 
 / / -   A l p h a   t e s t   t h r e s h o l d . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 3 3 , 
 / / :       " l a b e l " :   " A l p h a   t h r e s h o l d " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a l p h a _ t h r e s h o l d ; 
 
 / / -   A l p h a   t e s t   d i t h e r i n g . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   f a l s e , 
 / / :       " l a b e l " :   " A l p h a   d i t h e r i n g " , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   b o o l   a l p h a _ d i t h e r ; 
 
 / / -   E m u l a t e   a l p h a   t e s t   :   d i s c a r d   c u r r e n t   f r a g m e n t   i f 
 / / -   i t s   o p a c i t y   i s   b e l o w   a   u s e r   d e f i n e d   t h r e s h o l d . 
 / / -   S h o u l d   b e   c a l l e d   A F T E R   t e x t u r e   s a m p l i n g   c a l l s :   i t   c a n   b r e a k   d e r i v a t i v e s 
 v o i d   a l p h a K i l l ( f l o a t   a l p h a ) 
 { 
     f l o a t   t h r e s h o l d   =   a l p h a _ d i t h e r   ?   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( )   :   a l p h a _ t h r e s h o l d ; 
     i f   ( a l p h a   <   t h r e s h o l d )   d i s c a r d ; 
 } 
 
 v o i d   a l p h a K i l l ( S p a r s e C o o r d   c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v o i d   a l p h a K i l l ( v e c 2   t e x _ c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x . t e x ,   t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 # l i n e   4   6 
 # l i n e   0   1 3 
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
 # l i n e   4 8   1 3 
 # l i n e   0   1 4 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 4 
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
 # l i n e   4 9   1 3 
 # l i n e   5 0   1 3 
 # l i n e   0   1 5 
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
 # l i n e   1 1   1 5 
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
 # l i n e   5 1   1 3 
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
 # l i n e   5   6 
 
 / / :   s t a t e   c u l l _ f a c e   o f f 
 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - -   D i f f u s e   M a p   - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   d i f f u s e M a p S a m p l e r ; 
 
 
 / / - - - - - - - - M A S K 1   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 0 
 u n i f o r m   S a m p l e r S p a r s e   d e t a i l _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 1 
 u n i f o r m   S a m p l e r S p a r s e   f r e s n e l M a s k S a m p l e r ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c S a m p l e r ; 
 / / :   p a r a m   a u t o   c h a n n e l _ e m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   e m i s s i v e S a m p l e r ; 
 
 
 / / - - - - - - - - M A S K 2   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r W a r p S a m p l e r ; 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 2 
 u n i f o r m   S a m p l e r S p a r s e   r i m S a m p l e r ; 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 3 
 u n i f o r m   S a m p l e r S p a r s e   t i n t S p e c S a m p l e r ; 
 / / :   p a r a m   a u t o   c h a n n e l _ g l o s s i n e s s 
 u n i f o r m   S a m p l e r S p a r s e   g l o s s i n e s s S a m p l e r ; 
 
 
 / / - - - - - - - -   S p e c u l a r   P a r a m e t e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " S p e c u l a r   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   f S p e c u l a r C o l o r ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 6 . 0 ,   " l a b e l " :   " S p e c u l a r   E x p o n e n t " ,   " m i n " :   0 . 0 ,   " m a x " :   5 1 2 . 0   } 
 u n i f o r m   f l o a t   f S p e c u l a r E x p o n e n t ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   4 . 0 ,   " l a b e l " :   " S p e c u l a r   S c a l e " ,   " m i n " :   0 . 0 ,   " m a x " :   5 1 2 . 0   } 
 u n i f o r m   f l o a t   f S p e c u l a r S c a l e ; 
 
 / / - - - - - - - -   R i m   L i g h t i n g   P a r a m e t e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " R i m   L i g h t   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   f R i m L i g h t C o l o r ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   2 . 0 ,   " l a b e l " :   " R i m   L i g h t   S c a l e " ,   " m i n " :   0 . 0 ,   " m a x " :   3 2 . 0   } 
 u n i f o r m   f l o a t   f R i m L i g h t S c a l e ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e ,   " l a b e l " :   " R i m   L i g h t i n g "   } 
 u n i f o r m   b o o l   b D o R i m L i g h t i n g ; 
 
 / / - - - - - - - -   A m b i e n t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   0 ,   " l a b e l " :   " A m b i e n t   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   f A m b i e n t C o l o r ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0 ,   " l a b e l " :   " A m b i e n t   S c a l e " ,   " m i n " :   1 . 0 ,   " m a x " :   1 0 . 0   } 
 u n i f o r m   f l o a t   f A m b i e n t S c a l e ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e ,   " l a b e l " :   " I B L   L i g h t i n g "   } 
 u n i f o r m   b o o l   b U s e I B L ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e ,   " l a b e l " :   " A l p h a   T e s t "   } 
 u n i f o r m   b o o l   b H a s A l p h a ; 
 
 / / - - - - - - - -   T e x t u r e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e ,   " l a b e l " :   " D i f f u s e   W a r p "   } 
 u n i f o r m   b o o l   b D o D i f f u s e W a r p ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   " f r e s n e l r a n g e s " ,   " l a b e l " :   " D i f f u s e   W a r p " ,   " u s a g e " :   " t e x t u r e "   } 
 u n i f o r m   s a m p l e r 2 D   d i f w a r p ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   " " ,   " l a b e l " :   " D e t a i l   M a p " ,   " u s a g e " :   " t e x t u r e "   } 
 u n i f o r m   s a m p l e r 2 D   d e t a i l M a p S a m p l e r ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0 ,   " l a b e l " :   " D e t a i l   S c a l e " ,   " m i n " :   0 . 0 ,   " m a x " :   3 2 . 0   } 
 u n i f o r m   f l o a t   f D e t a i l S c a l e ; 
 
 
 / / - - - - - - - -   L i g h t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   [ 1 0 . 0 ,   1 0 . 0 ,   1 0 . 0 ] ,   " l a b e l " :   " L i g h t   P o s i t i o n " ,   " m i n " :   - 2 0 ,   " m a x " :   2 0   } 
 u n i f o r m   v e c 3   l i g h t P o s i t i o n _ 1 ; 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 ,   " l a b e l " :   " L i g h t   C o l o r " ,   " w i d g e t " :   " c o l o r "   } 
 u n i f o r m   v e c 3   l i g h t C o l o r _ 1 ; 
 
 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - -   D a t a   S t u c t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 
 s t r u c t   l i g h t P r o p 
 { 
 	 v e c 3   l i g h t V e c t o r ; 
 	 v e c 3   l i g h t C o l o r ; 
 } ; 
 
 l i g h t P r o p   l i g h t A r r a y [ 1 ] ; 
 
 / /   L i g h t s !   M e t h o d   b a s e d   o n   X o l u i l   S h a d e r   (   h t t p : / / w w w . l a u r e n s c o r i j n . c o m / x o l i u l s h a d e r   )   T h a n k s   m a t e   : ) 
 v o i d   P r o p a g a t e L i g h t s (   v e c 3   p o s i t i o n   ) 
 { 
 	 l i g h t A r r a y [ 0 ] . l i g h t V e c t o r   =   l i g h t P o s i t i o n _ 1   -   p o s i t i o n ; 
 	 l i g h t A r r a y [ 0 ] . l i g h t C o l o r   =   l i g h t C o l o r _ 1 ; 
 } 
 
 f l o a t   F r e s n e l (   v e c 3   N ,   v e c 3   V ,   f l o a t   X   ) 
 { 
 	 f l o a t   F r e s n e l   =   1 . 0   -   c l a m p ( d o t ( N ,   V ) ,   0 . 0 ,   1 . 0 ) ; 
 	 r e t u r n   p o w ( F r e s n e l ,   X ) ; 
 } 
 
 v o i d   C u s t o m H e r o D o L i g h t i n g (   v e c 3   N ,   v e c 3   L ,   v e c 3   V ,   v e c 3   L i g h t C o l o r ,   f l o a t   d i f f u s e W a r p M a s k ,   f l o a t   f l S p e c u l a r E x p o n e n t ,   i n o u t   v e c 3   f i n a l D i f f u s e ,   i n o u t   v e c 3   f i n a l S p e c u l a r ) 
 { 
 	 / /   N o r m a l i z e 
 	 L   =   n o r m a l i z e ( L ) ; 
 	 f l o a t   N d o t L   =   d o t ( N ,   L ) ; 
 	 f l o a t   h a l f L a m b e r t   =   N d o t L   *   0 . 5   +   0 . 5 ; 
 
 	 v e c 3   d i f f u s e L i g h t   =   L i g h t C o l o r ; 
 	 / /   d i f f u s e   w a r p 
 	 d i f f u s e L i g h t   * =   b D o D i f f u s e W a r p   ?   t e x t u r e ( d i f w a r p ,   v e c 2 ( h a l f L a m b e r t ,   d i f f u s e W a r p M a s k ) ) . r g b   :   v e c 3 ( h a l f L a m b e r t ) ; 
 	 f i n a l D i f f u s e   + =   d i f f u s e L i g h t ;   / /   O u t p u t   o u r   d i f f u s e   l i g h t i n g 
 
 	 N d o t L   =   m a x ( 0 . 0 ,   N d o t L ) ; 
 	 v e c 3   R   =   r e f l e c t (   V ,   N   ) ;   / /   N o   h a l f - v e c t o r   s o   t h i s   i s   c o n s i s t e n t   i n   l o o k   w i t h   p s 2 . 0 
 	 f l o a t   R d o t L   =   m a x ( 0 . 0 ,   d o t (   L ,   - R   ) ) ; 
 
 	 f l S p e c u l a r E x p o n e n t   * =   f S p e c u l a r E x p o n e n t ;   / /   f S p e c u l a r E x p o n e n t   i s   f r o m   t h e   U I   S p i n n e r 
 	 f l o a t   f l S p e c u l a r I n t e n s i t y   =   N d o t L   *   p o w (   R d o t L ,   f l S p e c u l a r E x p o n e n t   ) ; 
 	 v e c 3   S p e c u l a r L i g h t i n g   =   f l S p e c u l a r I n t e n s i t y   *   L i g h t C o l o r ; 
 	 f i n a l S p e c u l a r   + =   S p e c u l a r L i g h t i n g ; 
 } 
 
 f l o a t   s a m p l e W i t h D e f a u l t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   f l o a t   d e f a u l t V a l u e ) 
 { 
 	 v e c 2   v a l u e   =   t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) . r g ; 
 	 r e t u r n   v a l u e . r   +   d e f a u l t V a l u e   *   ( 1 . 0   -   v a l u e . g ) ; 
 } 
 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
 	 P r o p a g a t e L i g h t s ( i n p u t s . p o s i t i o n . x y z ) ;   / /   B r i n g   i n   l i g h t s 
 
 	 / /   G e t   w o r l d   s p a c e   v e c t o r s 
 	 i n p u t s . n o r m a l   =   n o r m a l i z e ( i n p u t s . n o r m a l ) ; 
 	 L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
 	 f l o a t   f l D e t a i l M a s k             =   s a m p l e W i t h D e f a u l t ( d e t a i l _ t e x                 ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 0 ) ; 
 	 f l o a t   f l D i f f u s e W a r p M a s k   =   s a m p l e W i t h D e f a u l t ( f r e s n e l M a s k S a m p l e r ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 3 ) ; 
 	 f l o a t   f l M e t a l n e s s M a s k       =   s a m p l e W i t h D e f a u l t ( m e t a l l i c S a m p l e r       ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 0 ) ; 
 	 f l o a t   f l S e l f I l l u m M a s k       =   s a m p l e W i t h D e f a u l t ( e m i s s i v e S a m p l e r       ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 0 ) ; 
 
 	 f l o a t   f l S p e c u l a r M a s k           =   s a m p l e W i t h D e f a u l t ( s p e c u l a r W a r p S a m p l e r ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 3 ) ; 
 	 f l o a t   f l R i m M a s k                     =   s a m p l e W i t h D e f a u l t ( r i m S a m p l e r                   ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 3 ) ; 
 	 f l o a t   f l T i n t B y B a s e M a s k       =   s a m p l e W i t h D e f a u l t ( t i n t S p e c S a m p l e r         ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 0 ) ; 
 	 f l o a t   f l S p e c u l a r E x p o n e n t   =   s a m p l e W i t h D e f a u l t ( g l o s s i n e s s S a m p l e r     ,   i n p u t s . s p a r s e _ c o o r d ,   0 . 3 ) ; 
 
 	 v e c 3   F r e s n e l T e r m   =   v e c 3 ( F r e s n e l ( v e c t o r s . n o r m a l ,   v e c t o r s . e y e ,   5 . 0 ) ) ; 
 	 F r e s n e l T e r m . b   =   m a x (   F r e s n e l T e r m . b ,   f l D i f f u s e W a r p M a s k   ) ; 
 
 	 v e c 3   a l b e d o   =   g e t B a s e C o l o r ( d i f f u s e M a p S a m p l e r ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 v e c 3   f i n a l   =   a l b e d o   *   v e c 3 ( f l S e l f I l l u m M a s k ) ;   / /   e m i s s i v e 
 
 	 v e c 3   d i f f u s e C o l o r   =   a l b e d o ;   / /   a s s i g n   t h e   d i f f u s e   t e x t u r e   t o   o u r   g l o b a l   d i f f u s e   c o l o r 
 	 v e c 3   D e t a i l   =   t e x t u r e ( d e t a i l M a p S a m p l e r ,   i n p u t s . t e x _ c o o r d   *   f D e t a i l S c a l e ) . r g b ; 
 	 d i f f u s e C o l o r   + =   D e t a i l   *   f l D e t a i l M a s k ; 
 
 	 i f   ( b H a s A l p h a )   { 
 	 	 a l p h a K i l l ( i n p u t s . s p a r s e _ c o o r d ) ; 
 	 } 
 
 	 v e c 3   a m b i e n t   =   f A m b i e n t C o l o r   +   f A m b i e n t S c a l e ; 
 	 i f ( b U s e I B L ) 
 	 { 
 	 	 a m b i e n t   =   e n v I r r a d i a n c e ( v e c t o r s . n o r m a l )   *   f A m b i e n t S c a l e ; 
 	 } 
 
 	 v e c 3   f i n a l D i f f u s e   =   v e c 3 ( 0 . 0 ) ; 
 	 v e c 3   f i n a l S p e c u l a r   =   v e c 3 ( 0 . 0 ) ; 
 	 C u s t o m H e r o D o L i g h t i n g ( v e c t o r s . n o r m a l ,   l i g h t A r r a y [ 0 ] . l i g h t V e c t o r ,   v e c t o r s . e y e ,   l i g h t A r r a y [ 0 ] . l i g h t C o l o r ,   f l D i f f u s e W a r p M a s k ,   f l S p e c u l a r E x p o n e n t ,   f i n a l D i f f u s e ,   f i n a l S p e c u l a r ) ; 
 
 	 f i n a l   + =   f i n a l D i f f u s e   *   d i f f u s e C o l o r   *   a m b i e n t ; 
 
 	 v e c 3   S p e c u l a r T i n t   =   m i x ( d i f f u s e C o l o r ,   f S p e c u l a r C o l o r ,   f l T i n t B y B a s e M a s k ) ; 
 	 v e c 3   c S p e c u l a r   =   f i n a l S p e c u l a r   *   S p e c u l a r T i n t   *   f S p e c u l a r S c a l e   *   f l S p e c u l a r M a s k   *   F r e s n e l T e r m . b ; 
 	 f i n a l   + =   c S p e c u l a r ; 
 
 	 f i n a l   =   m i x ( f i n a l ,   c S p e c u l a r ,   f l M e t a l n e s s M a s k ) ; 
 
 	 v e c 3   r i m L i g h t i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 i f   (   b D o R i m L i g h t i n g   ) 
 	 { 
 	 	 r i m L i g h t i n g   =   v e c 3 ( ( F r e s n e l T e r m . r   *   f R i m L i g h t S c a l e )   *   f l R i m M a s k ) ; 
 	 	 r i m L i g h t i n g   * =   m a x ( 0 . 0 ,   v e c t o r s . n o r m a l . y ) ;   / /   M a s k e d   b y   a   ' s k y   l i g h t ' 
 	 	 r i m L i g h t i n g   * =   f R i m L i g h t C o l o r ; 
 	 	 r i m L i g h t i n g   * =   ( 1 . 0   -   f l M e t a l n e s s M a s k ) ;   / /   M e t a l n e s s 
 	 } 
 	 f i n a l   + =   r i m L i g h t i n g ; 
 
 	 f i n a l   * =   g e t S h a d o w F a c t o r ( ) ; 
 	 d i f f u s e S h a d i n g O u t p u t ( f i n a l ) ; 
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
   IHDR         �x��   	pHYs  %  %IR$�  �iTXtXML:com.adobe.xmp  UTF-8 XML:com.adobe.xmp x���n�8��{�9��.�!�D�fC��Av���i]�I��m����%�-�IBB�ϴ��JR�b�}�}���ǋ��[�k7|"������`}��=£d����c�/�����e�qp�/��,��h�Ygޢ�&o���.���-��}�sQ�]�δ�L�f��b��uݖi;]���f�{�{��v=��aK[_zp�~�){�������4���|ޚ�[2� �u]�-dY�jadqNF�}Z��>!�h*�\�X+�ɍ����~�U���f�g��[T�Ђ$�la�$bt�I��h�5F����y�tf�.��\fSy ��>V�����l֨���}��2�|H8:發K)ޫ�|j�:���X��F��)jN_���f%�:_M�7H9�ez)e���Y9��`�ܞ�O_E��<��G��&7��@)m[�e_��ױ���q�a�l�`$�?lL�0;���Y]���m<*-�=T2���T�V|��2��<32�(�'>�VZn��7��LU�x��QSq��t08K�XD<E�D�*���r4�N�,'1�a�
ZB0��Y�s��KL��5���mnb���Q����fJzWD��[%7&������s�X
d��V4F��m�`����U�j�?R�r/�*m��0C�.6O��Îi�!�`g���Io8��5������2#^�vKˊH,3dBҌA��˨�k�B��#�En�r�3����R>?�����|��Yir�!��|NR�y����).�j�h��&�f�{̾��y���W��<͂q*g�&�\j$I"AIa��c�N��X(!��q���>~�}����ն�tJ�	g*�e�GZ1v�tx�U�����v��p�^��آ�:�cI��V��A��V?J|��{{^y&�٦r���y��T�f�Vz��&탍�͑���Df�t�V��Ƕ�|�ڝ'��z�z�˗����=y�;��SlM��,�rN>hQ����Vk���⠭d�@L����_Kݭ�wڮk9�ĸط��}��3��'�۪?c��Z�W\Qoǫ״��P8�ݶ}�_��8]�BMfV��6��h��Qy}Py]S�����f�i��Gj���RM���@ �   @ �   @ �   @ �   @ �   @ �  �9�7��Ǭ�����?�Xb��i7    IDATx��i�,�m-x �""����MR�$JOc���3��If3zz"{�%3#�`>��*;Yu����^���526w H`Æ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6lذaÆ6l�_�S���6l��㏱�����_��aÆ�X|���K�?�ؾ����/�_�X�+��Mas 6lذ������?�����ߵ1�c����K��;o�>}b�Ͽ�����!x�~����`6l��s�[����2�o�����@��c|�x/_���k�_�����:����޻�����׋���1|j���o�6l����-#��u~�O�����u���}�؞�Z�/�<�����;o�ӗ,����[}����^Y�߿v~v,���w�����ş�3��o�~F�\m�����]=>��������s§��k���c�6���kF�r��>�f��Z���%οi����^Y_?�f.�����/9��$
��g�\|i^����̧���a��O9矊`�2|���z�]-���\��[T��r�?���5���������?E_�����u}_[^c.#���/}����7�+���p��$s��ѻ�sp=��2��6���):�K��}��1�|�-��k���rl�˿}�6l�)�Z�ژ�6�o�KC���!�6��߿�����N����9G ����p:��p��@��9J��8���C��p��ӄ���M Vf8G��9x����g���I`@UAD  �"����Hm�J�VKi�ZњQ�Rjk�l0����yy=�c� ���z fǀ��އ�w;����}��c�^E�A� (����y]O��t:O��x���c)e��|�� ֋e�x����:����
�)��-�|�O�J?5i\�}��`|��/e>��p�5��-��-o���~vy����)��ژ{��6��K#��A�W��^���!�c�Dg�.� " @��`f""��|y,l{�<Ҕ��Ο"�~~
ܷI���JWc��b�b6�-*B
Pp�y���\`�C�{Ϟ�cGD�E:�-
@��&*M����j+E�J)�6��ڊ6-�֦��*"��;o��u�N`v�Ȯs�j �~%rL�(��>���1������M���{��\�� ����u�i8�1��#ѓ�<�!���0_,Ǿ>��ү� ��5��; ���������_>~+Rx-2x�Nz����!�6ꗏ?e�?g�/����ז�rZ�C��/����[N�[t�5���?�~�~��G�R����ct1DbBH.Ŵ��q�a��ct XD��J�,�
U�c1��X�������
rܤAk�s�/�9�c%��	�4Hk0���L�)U1�A! b�U��Ea8�`��@ ���֨���J!J)9�΁�އ�B��#"����ʎͽQ@UTT�j�Z�H����Z�Ҥ��֔��*�J�Rs��]���R��@[��kkD�w�1\S8�zQ�*�"pp�P�s�s�B�������|{wK�n��"�sh�T� ��*��<����T�㼜��rʥ���j�[��5/���p|:ޗR <����/��	 ��N�ߪp��_���Á�)'��9�����#��m���kx+?�9���O�ϩY_[^�|�C��1n��V��5AݗR��N���2�WK�z��0�B
!�8)7�4�q�0��0㴛�i�K���0�C�!���1�4��eѼd���s�B�;&�uZ�(�B��PhU���
H�"xfbfug��J��u�&
&&���hS��hk�"�y��{�1��WiČ#9�s�\@�#�a�#y��1%�~�y�!!o�;x�@-��2Ϛ�E�48G꼇*dYV]�Uk)J
m�4笥TԜQʊu�TKAI �&D r�D �Ri]3iPmԚ��LM��4r�A�hɅ�f������p�1�#�qT��*��ZJne͵�ڈHTTZ)�w�~s������?������8<>��<�� ��}���C�p=W���[s ^�.~0 H�KG��	��[)��㼍K�" ����̡/�7w��c ���6`�<(���pD`�6H<���H���J�Z��6�*Uj%�&"ZE��*�" Z��.��O���O�[
�P���c�����X���<���×��^cخs�[�rЯ��  2�0Ø�4���a
�=��0��8Ð|	�B1��~�v���8���Ǒ�ir�4��cbV"JC$bGe]՘�Z�ȷ��L!�� 炵�ȹ����jkh��M`�@l�@k�T�R�Z3�^j�XK`�&����i"b��J�#��=��)E01�T������U;O>������8ϨyE)�y��� 
�<��`&H���4������y�׌u�J �uHI�G��9�4�Qs��F�J*����X��iF�
5'j^p8����|D^3�yp:1�v�L�!b�����n�w��wؑ�R����T��<�?�*���?��|W��~w�o�߿��xx�w�]��G�s�_�	�[q ^3�/F?�2�]<�sIU���0 ������9�gfO�bӸ��1���9�j 3���=�XJ!���2�#�L����A�S����0�8�T��j! �5і��V���J.R[�V[˹j���*��Қ���D��Zk�֊�6U��Z-�����4-Uj��eiK{~m�/�,��y9;g��:���0�r��Ͻ�O9����#�s�O�_�b��b����Q�ה�k��'f�ι����� ��V� ���8�a����n�����7����n{3�|�>��v{���;����k�4D��{���39��r���8�~��P���La� *Q�(J.X��5xrRB�2���9c]W�R �`vp�@�cP�4O'�G�!��ԦX��g4i "�Z���<�����&�� @>̀*��j�ϋB�T Q��BTQjA�+jm b8vP�*T-����
ieͨ��y�q�R"��R1%�q�n����-����PعTm`"�����96E(0�7'��H)A�V(VZP�9N5g<}��&��4���?~�׿�
!y$��yvMe�x<<���2/:L#޽{/$���p�͇�W��������������m��-�%P:?���1�u�}��������r��7�4}�qx�aSJ�9P���1TT�'�DUU��H{tN ����D#�̞��}1�8��~�s	J���"� �cb"&Q1���#�@S��B��#�4b������0��Dm���*Ms^uͫ�5k-UkmZk��L'Ӫ`�Y׼j^��� QQ��jY�u]��t��y�\�)޻��WGT�Z�y9������t���j��\�\/���O׷��^����V:�	�[�[�����kϿ_:Y|.����uD����*����WKz�8�8�v�0�~�Ƙ�H�%I�.F�1uU$�hHc��M���&{w�?~�����s�{iL�8#Cb�p8�2���aG�!M�j�KC
R�8���j'����=;@���fhk�8!�0��j9�"b`v �4�u����uY�[e��M6���ြ�hŘ�.�Ck�&-H�X���V���@DP5Ǥ��l4�e���PQ Uc!T�����LYc( �	����}?6Q�.�s 3�y㈛�=v�|p�����1�r�5g�Z��p�p�ᜃw��X�&�{����Z+N����{�;�s�y:��wPJ)X�`��!xO$
��1�8��wC��9�W������sj�25{ɘ�\�H�9; �y�sp���b����~�_������f��a���8����#8�̤V�b��v�,;��=��y��$RIU��m��;��"��Mĕ\Y��W�;  R���F̄�"b���nB�U�e��,�E�5���A�	a `�<�)\��W����0;evh�:ϋOG�UD�����*yY�<�:/���DD�#�%�(ל���pz|�?<><NO�k�O9/O�iy���C���\�����������9�_��.��k�{m`�����x��Sx+��D�>|��M�w]1�<���?�@��O�4M�i�bJ���8�n��ݴۍ�8NC�a��Rbf�P��(�d>�9N�����R<;r��4���fO)%0�E��AU�R@U@͜{)�s�&��({"�"�2�u���=���[�V��a��~�i�"�	8(������	1F������8���Z+�eA�c���=D��4�ڙf�*N�#������xBY�բ_E�&��^�'*D�1|�-jЦ�s��t��p0#HdFٛ��|��)L�?�� ��!�9g�;��3�΃��v�@p���o#B� b03�7{�:�P̥��
&B�0��%��>`7퐦�"�=bP�V���EnP�+��x�����a��F
��#��}PzJ�E;x僚��ꗿ���X�O��R��i�~�\���<1�s�׆�=�����q�i��<�������w�}Hӎ�0��@
@&���@�ꝃw�b��.  H�(���L�d�R���)�	��Fm��j�R�ZQ����g"(��1R
 ��0��
M��Z	���H�*��'�{@&�ICB
̌V��Qk!��	`"0�y86�r��3���iF�7{P�(�j.YZ�ª*MU�j��4"� �I����sy����~�������pxxx|x����������jΗ��%p�\�����H���O�Ǘ�)^�_�����I�����s��~��_�1_r�������k⽷�Y�s6��Z�!Ƹ�{w{w��vww{s�n�����~��q��ǔ�c>�"ǘ8��wT�aY�&p!P
��A�R��̧��	�9$��J���N�����|B)D�co΁ f̼ �u����Z����#x���f�R�u�q��Ԃy]�RB�i�"*1�1�Z.{9���ߍؽ��s��t�a8�,N�� ��b����Ԋe�X����ӌ�W�401�Y]b����Ԇe^@���i:8������/�~�l@5E�jB�)`6�
�dt�
j]P�9�98F���oWQl^4��A=�D�q�ii�
Y���ϷK-H���i�z8�*��O�}�n��}�7w{��_���R'�8DԦh>`���@�ލw����_�bm�?�eY.{\���c �#�s�� &�῅�w >x������C�M��J�u���p��l^q��D�M21���c� �f^~.e]�sF��U�Ie�z���u�����3��x�@����y�c굶Lv�icB�5�@�Z�
����	T�/��f�6�Ҡ���ι8b�4��E��uai�0LQ�1������݇����wy]ʚ�����~��o����7����ey<O벜N�r�9/R�?��^T�x�S���K�k�z��U)�Z��?�x+��~����c����S���k���J�^�������n������t�������{����Ǐ����>MӐ��7;w{�ir!�T]k¥TVUv�)� �3jmX�ڍnk�6/X�LP�e���#����g�1����-�����j�]� &��@=ʖ&`6���PDPPb)"Ş�N.x��E�>ؼBD.���	�8aH#Ny���#�c�R �bp�g�6?�����N�{簛v��vPJ�X�ZM$(�X���xB)��J�	5g|��=~���	i�q�ߊ1�����" ���;���R
J)�Φ(�@�����eώ rv�*4$����f������D Xjbscgs��J��ւ�.�'0�̌�~��>|���=J^�O'<�'8 �m���q{w�qH�x0#N�_����Ä���`(�����{)�oUN����~��^Lg'�Ge~.�����'����������?��B��aH71�;f�D��yFk��e��d��rP�P1�@���Z{.﬒�FT���Z��}���Ԭl��*К<7�r��b�rn����� �!����9B�C��i��i
b�AA��W�NS1���赽�Rb�P�4`b�hi�<<�_�&@"	��4A��zb���I`&�}�޿����w����_���/����a~zz:����r:ͭ�5ך��"�����J�H��P���"�5iR�
A�k��Z����y`��H��Vi�U�;�g�Ű�+���o<8�$Ϩ��ת�*��������瘉��/i���~���?�������/ǹ~>1sd�BSJ���}��n�����7�>��y����݇w���]�{�.�.4_Je��");�&f�V��A"�5���<c�g���C����1w j)8Nxx�����2���>BZ��x�<�p�!� (����+|h�X���0�؅=�iD��������0��1�#��=�q ��<[�',�VYM@�#JY1���wC���p8-�'��Hd��yY "�� �1���&v�D)%���#����4/h��uz� ��j:�e���)���pw{�V�����4xo��A&@�P� yR�Q@b�V�<<����D���ytnb��<�;��;�
b �:;��P(���`~z�0���� @��	�n��޿����?1�K��y>���{���4U�p��{�������aD��憢c�i���9����7�E�2��9�G�O� �F�E�ߢG� �J���1���G��-{�|�9�{�*k^P��x: �&�`t9��իg-��ZyL��:t��f�Y��1�9��<o�U9�@�`�9r�:G0�2�
f��C
���]�u&@��1!�yŞ�����sc�RJ+P�Q`>�<_�HC��B��AR��m��5(�ʊ������J�_�U��׿����׵�\��x���S}zz����e����I3/��F1��vg�UE����Vɹ���Zk�jSQ�NAkR+�Y�YI�l�����Vk˥�Rk��DT���UU"�8��c.xǪ`g5ت@���u��\�Zֲ.���RJ��J��H���p�/^Y����{���z�<���|J&�u]_��ھ������r�;X����f�\dBR�w����R����n7��q���iJ)qL>�����?L���]���r˽c%�K�s�z�YU*�ٙ_��iFY���!�`��	�
���􄧧r^�D�ܨ��s�?�#>~���n�e]��w�v�~ �C�U ���{��~g��5�c�����C�)�M{�LT�3�y6�Qa�e�j�.�0N;1 M�dc.EL}C@�L�u]q:��&��{g�'g��a���-�q�s�<ZO-�-�a���>~��y>B�r�aDt5�������ZJ�^�z��A\�C+lM!h ��;�����A�+���?f���kI)[�����,An�&UE�
��������q���)����=�V3ʲ`qbKi(��O8=0?<��_�ww�0�U�u���iL�y����*�|���� �xv.[��b ��u���������,��h���/�0�������<�#GlƗ� 6OREQkF����C��� �&Z�0�Œ�E U8g7<�ݐgխ4Am�� h��b��Q�������lP8xg��q����96�ڤ��r��ñ�-z��-E&�<B�H1�L# rN<��S���%/h�<O�U�`&F� UP����dNM�
����������n�gb|��k���t�u�eY�9����� v��U��tST�զ��%����eCt-Y���6
�r)ZKQQQX���\e]W����8�Q���R    IDAT�#��a&����ARJ���VJ)��rZ�|����%7�E��Vk�*֡���D��4��;�9Ui�����1�s��q7���18�#O��Zj��J�ME����H�@�*y]k)e]���5�\j�Vj�Ҵ5m��O��`�j���6O����@w`�� b� ѹ�,�OFL�!0)9�ȅ}�Q`�AU�*��DUu�.��n��~���8�i��0��y�ԕZy�3���`�%B�8 �����v�6����4�&XKAn�d�VP�B����v<��
�Z�I8�V2���3VN�C�`�v�߾�Ǐ�kA%=< 	q@! nno���5f�6@��g�a@�Pʊ\+�`���5��B���TFn��#@&�s>�4�� rj���� XG@j��Vz��V�1̂\������ÓiB�T���R�0��a���׿�;��x����=0�� �J��ż���y!��ciϕ�,�j��ƶ�yYE Ҡ�2�)V���}.1XT@�ZD�N��jDt}1�9�� ƺ��f>a>�w�@��4��+�!Zm/֨I8{E>6<6A$ 9+�N��*j�$�";����4������/�g�����_�	�)��"����稟�c��4��e���!�6�Q�Z����#M�ݐ�A�NǛ��V�E��-2g6y�P��O8�D���htQ5C��,k�X�qB���}R"�^hb�2��4a�M�$����5�hMP��D�s���4���k�(��D�o�^��W�Z�0��T{9���R�I�V[@�����M�, ����c���k�Qk�������8 �8���;�q@�U[�u�1�;�5@�7uރ��j��m�D���bz}n���u��sV睆%�k�֚���X��ȱ#l�Z��dD�����dim>��t:�uYEZ��� ������JJ�9��A{kwt󨁝���;G>x�a䛻[��7S��"9�(j�ZJA�E�y�eY�)���L
Ri��K�O��,K[�岶Zj=�N:������{��Q�eA^V�֠`k:�ivjkh"dk#�`ņ.љ#�#r�1�'{��ٟ�8��1D	�D�|p�>8ǎД�6*��4�8�Nȥ�Oz��c��S�a�d���	[/]TiX[An�� �m�]؛��2�����BvS���CꎆЋ�ւ%|��`y`o�="�=��Ä��-v���a���;��3UN<>�[�`J���c�Xz��z4����#��1�#,V�#bOm�	4o�������qBeF^Vd)ϔ9T�K���Ɍ4�s�1;��n����c��#�����0N�~���OO��w����#N˂*�R%�D�!�~� )z�8k@�mF�� �����	`lO^W�V�p�.H$%p�74��V5�Cxmp�"�HA�)
��gh���
"�*�� �+� ����)���&�t�K~&6�k�@�����	ʌ���0����}J�7>��k��x�9��V�(�k: �y�˲�s�?����%���R�mJ�c�q�۽�1݈jjk&�燞y�4�]�h�9k?iԙ�߈��NAd8�y��T���]�6�5[���Ԯ;jiȹa]3��l��Y������[�#�IAm�-�)>��bt��Glv
EļW�^�ju��Z/�1��������� ��]g����	�9�w��UW�0��\^�σdH	��=&�F����X���=v����;e���3����Mll˹�8��B0�Q!�jb�P	(�b�W�l�둓���5�ňa `���L�pfhΩ���Z�)_����{���I�pԼ�ڤ�*�Y��?���������A1&�O{�� �8z�(�'����q�'UUc�*J.�����PK��i���@R��Zd��e�YK��U����Ó><<b�g%��2|^NX��
 &�ФA�L��2�`eg=�di/SO��� �DLJ�����JJ��=��#&��R���R!UP��`5��200�+�yFS��A����P"�]/c)=�Z!���M�{�z��T�+JɠndD���|��#P&��|wZ�G-�����[�?<`��!Ąq�,Xʲ�Ō3�z)�*�4@9g�h��������o0�3B����`Fs�	ј������A"�qD��1��1Ek~SK�90J���k��	�?�̧J)@��"�
�4�8�x���q�����)&�� D8����	�nߡ��p<����΄�ΘK8c�,0F�������R"�&s�/s�#2�GH^� '] �l���&@�Q�MH�x#�DіR-&Xd���"C��?`Rk�}����k���{ �Q�0���������/j����`V��#i�Z���?��>a���k�¯R��c�m�anB����s�K��N![�+=;Ud�^�z�%���^���s���j�����W՗�㹁Gk��6yY�����&ȥ��d��hE�|p���ő1ŮP��C+LM͈7�!j�I���_fS���q�����VŴ�#��jt����`�@f�!�����eY:-�!�	 �w5V"	�4�H,b�F���d:=�A�Z"Ҟ�s~����t�r�=���"&��cO�]s *'�\ ��C� JΨM༇w�Y� D�7P!�f��*��AT�P�`��	������R���>����7�VTQ�V�,+�uAk����D_�6��w�x��nn�H) jk���˂��G����8u���I��>Onb%Z����	�V��k��y�Z�kC��E��X�bm]��HɢY������{�g�k@�	��=PU{5�6{��Jd���OvZ���H�o0Joi�Ҁ,z<�3��#r-��~��i:����!	�_h��^@� rɌ��(0�hzv�	?S��4��㹩�p8�x8�ւ��wbB��y������i���j���������Q�k^q8PJF�:g����z�T-%���8Լ"ϋ���Nӄ��8�{؇�B�'H��UzM��M�ܹo^�y�VY;�X׹������i�A�ǐL�Ҵ������-r� &�e�:Ͻ�p}Nx�T�E��Y�)*����Bj�����E��C�ޓy
}v�
��T g�؜Y�����Ӽ6߈*j.�����)�g�bN��9U�';>HCY�j#�#�0���GUAL.D;N��-��"2�����o2p��K�9���_
�>���~�?���RJ};O bk�kk�ַh�z^�|�M j���ݽ\΢H�:U�QrNC�zQƹ����Lm�լ��,�o�\�O��g6�5�mݩ��n� ��۞9�ԫ���O����Z {�����j������*8�N=��K�T'xg��˲�����R����6�bj굮�A[E^f��-��"�ݭ�C��/��Z��U�������A�r���b���!�8Yy�4������^�v�)������; k�X�x�T��C��;����B8g��bL&�j�3Z3jZσY�Y���	���l9����1�OO��o�ۏ���.P��t�Z��`��R���l� cGTQsź����QS��Tъ@B}`+�z��D�U�A��}�MMH��=�3 ����爁�Qj�%�=3+�R򺢶z�y�p�6�v͋�V}��B��ζK�R̘B��f�!`9c��e/�������p�:����2{�Ⳑ�T�8yF��0	$m-8><���.3�#Z��@u�9�v�����~�)�~��:u��cT��	R
���J"�Dh
렧�Fl�u�B�97���7`��&�<=>`>��m5��&;�V5�,���� �����j�!`$g��Ĉ)a��c��ER7�7�������윕���t8��)v���M��"��ڬ;���~'� �Nn���?�
��F�y�kT[Ei�k���S+	���,�B�Br�ksl���_���7�]{�fNE�� O�i�,E�$G�1�!���1��˲\: g�y����(~l����s�~X��f�?���1�oǔ�)��);�� BQ��$z�̹4��O�'a��A{y�s�h�n`��h��S徻dM{@������'�BCk���]p�QA����	����0$�!y(1Z���n��8*6!�&]�,�>";�4¹���f�R�D
r��N=��H�rYA�y�����+8�R��Z_�Mi���R�̦q������Z�D�����9���1�l�4����K)'=Gm7P`66;fL��ޜ>{��ܬDD��뵽�6dY��m�VADH)�D������Gd�Wɜ7Q�=ǻ�Ig'�=��]Z�s��Vk��=NaB1(	���@-�vNΚ ����P��g�L��
�{�����Ns]'�A�d<"G���	��j��b-1�A{�|��Lp�F��ֳ���M�1�Ԋ�aE�7�ZPK}��X}Q�Xy���j�E�nŮ՚W3Z���A/���VQ�s����(À���˄aA�%��(�`1��w�X�.��y�yY,���	Hy�1?=�t�[��9��=���g�&�P#��{�< �]/u3:ו�Ac��K�Xs�Eh��R0��Z�B�mp����ó�tz:�t8B��S��.��Қ��5��r����{�4�H�qSB�V�� bL���GG�>�ւ��������ψ�ӌ�3H[:W��A�1'���~�
���^Br]+@��~��E!ٜx2I+�A�T��. yք1Bf�^����Iv6�U�@�9 �qxz{o�"��ރT��C��/ͯ���8�c: ���e��,�;����W���M����Sn���Q6������ty�A6��<x�L���Lg��}����N}|nX��Y3��\5Y�qq����6P����q���y`���ˌ5X}l^W��v��؍�����ޒ��9�iw�a��;�)F���у`4}� �Y�*j)�T�I��@VsZ;��DE!�g6�1���;�>ּ�t:�8�P�1D<�?�݇w{8�_�#&�8K�=�)F�v�i@��;�O� �|�d饷:�����̙)&���J�L�qn�d� �=�����\��\�����x�� Y�G����`]3J� |��^�Q�)�;�u]������]G@����wÐB���~j�?R)�w���Vs�w�!��cJ�g֢����]�B���9p0�ј,���J��֠�Zy����K�^~f���hb���g��LT:�[�Q�3'M��4�j�!�;�k�֌y9['=-d�.�ё���u)M�;��O3NO<�`U!���y�K��C�v{�a����H�����-�J�*X�uE^,�l�pi8�?Ϣ4=�K�_�ި�VE-����V�ͮ���ܛ7I�$�}?53?"�g�{,f���~���,W��B�tOwWefD���?T�"{A!��n
�%����"#���x��S���bKb��.��̃m0O˅�/_��Г�ٗ�����n�Z���n�����>���:�Z��N����Z(^䡊D�a��4/����Ĳά���[1<q~x0�Cl����x_�~�~���+zX�o��X��T���pPEM��D[\a��
��k!��8P>y���=k�"�k���ޣ ��YB�F��L+H�?OJ�L��?�~yyCUx|zb=�Y�jZ��b1�'ϓ}L��������F z���f���������{|x�o��tZO��4=Ԧsk-��Q�����ߣ0�@@|�� [�m3E�>�D�;v}�	D����U�%���Ǿ�����;?�}��&_��Z�.��Q l�͓U7�p�̜���s5x{�Ѻ3QR�)
S4d#%�_�q�b]���!F�TL�P6ϝ���|���^qeB!ﻙ�l�K�
�����!N�P���U8�+%3M��Sb�g�?<���'>|��4��}ICO(�V��N����P���#'�fn���77B���|��Eʶ��n�j��1Y`h��.>�o�����+�O��\xyy����J`Z�L�hD߅b���9Χ�������g�n���о|~�!F�6jɴXR y�Ӽ(�m�-{)ծ}6DAš�h������7�1�6�-��|XR�@g\g��6P ���n΢}s�	���3�[�����2��0������zOP(�5�϶i�Z��>���Y�{�8?!F�����Dnd21�NN���v��m���@h��\��m�9�����$��he7�r�	�j��p:�������(����PeJlِ�eYY��>M���r�\�f��1�}�9%3��f�"; ��#�>��p&�FrNL!��΢6>|��_}�+���o�+����?�_|��ϼ���$�9��zVxf5�.�x��� js��Ջ�L)j�d2�w�`�po~l$۠VZ�]]+�qu�4z��Ƿ2�et��?O�R���V�ٞ���O�.!�wW���
���ߪ ����yO�߆��t:������Ǐ���|>?	�s����l$��W����u��	8x�m��$ޡa���^�yW2^o|_�3d���H�Uj}�=`���;��]�b�}�yd����a��g�w�J�����a��7Z%�Ԃ��V��D� ��h�z(��C��޹�|;F"Z�a{�c�΂��y2=p�;_���2��r��\�K��}��fFL˲�]�&�i���|�ݷ���㇏������	#�K:c�!R�}�9�A���3�n\o7n��I���ļ�6h�m�H�B��2����q��m�I0���xaU2��A@���r:1ͳ��K�XY]��7X�dߧ��r:a�{s9Vp(ټ,j	�lId��fO)���}�J�՟���'}�g�J��Q6�g9��v���A�.�����υ�n>�!�8�j��o���v�T����.t�8����=x�Ah�E��r��f�%gD�_x�[�h�4�<<>r>�Y��%��D]5�n�#:ϴ��L�Ji����{a�^̊��6甘1Wm�"7�q�<�v\<��Ȳ��V��3���f*���ʲ��4���<�D��m3�/&��i6�mwO���>�s]��|��9[l�Xj}[�$(#�r�1��\��텷�W�?~���|���?���������?�#��?���������m#��R�L	i��߃�t�J��6!�#���eY��p��V`�@}��ڈJj��}3k�1��MZ��F�-~n�Z���4�mĤ(�7�v��}���
���������������6�����?}�������7{>=|P��}�~�N0iE���t����?[�P����;�/�I�]B��8$}��[��Z;q����:�;���}�BˀܺK�@1Z��7��2�\���h����ܘ�H�2�g�_�2������6���[�.t2Xk��n��U3�/@�=ޭ�Ql���L���)�Ƭ�!D���[5�#A�_z��䃏�L)�s���׷W.��mc?'��*�fE�G��M�8}_���~�q�^yy}姯_���y{{���U;�
��m�z����j�.;��񫺵����1��B�[I� $~����Rs�%,�+o�/�|����W��Ƕ�o�˕��!�p�B��EIS4I��Tlq��4%�)2ωi�qY�y������8r��x�8_���O�������ct�8\�\J�e��	s�G�(�����	`�������ċ�¥cm�\����?‏�D�D]���3����ػ�vG!�9ͳ�������3�,i���c�K�:R豻�ZqW�)ݥɝ�#i������x���%��8!&S=� T5�̶o��f*WvTs��?����*-����#OO��B�"4F�`p�)�=(au�4����Vi5�S��]0_����~��G�~���ʉ9%���7�����xz~��\���b4ktsYu�v�`HA7��q��t����
A��;r%v�ܠ�x!��kL�Ǡ�ۿ[    IDAT\��-���޸vY"bfH��3��eAE����۾o�ۏ�m���~^1W�n��K+�}���>a���������o>}��/N��c�En���벝ㇰo�� �$����>�s��]?�1����C'���kԺ{%�ջ�tl����j?(�!���=�+.�E���H�Xм�2n͇zK�ő�>j1x"��2����+���C�@�慮@>vc��7�<<>�n��@�Az��ɷ��q"ΰ����=[�-�Љ ������������g�1EJn���ׯ/(���t��H�}�`� Y�O�L��m�	�M-��hLt��brRP����}�l��6ߟ� �i=�,�@r��9�݋�������/?a[%gB
fP�[�cN��#�w;��pYLz�9>>s}{������'>}�D���۫A�췝�z���zi%Du�V���9�y��d���_�p�W'�������(:��щ@�{l�Z��j���.�s�ܥNںrǻ*nG��g�� �����H����ǁw����xf�#D��^�BSGH/$��� ��
Z���,��Ŵ����v#�;��@J������3h%�>�7�F P�#nڨ�ht�Ҕ�y��i"D���E�;�Lډ��zTr޹ޮ,oo<<?s:��.o\^O�Og�y&�@V؏�8�<?=��i%�@+V�Z8k�v�� ӲX���3�з�e��L	❰@K�l7;����ӏ\�|�������7<=?������3����?��|}}�v������Ɛ)�Sz)��T:jқC�:����h��y�ĉ"{>F�����"�B�����K��^A+�����'�������A� !(��TZ���z��_���. �C����ĝ���eY��|>�����>�kU�{�6�KJq�p��$@�CN|sH]��۸�$����|���B­%=������߾�/P����C>���Z�ʑ7��,�D!�}$���X��+}����t����Dm�1yqx��сl�2P�5Z�^8���4X�Ӑ�e��S���o���Ն��i����B�`��m��U��u�g�Y駟~2���ƱmÍlvo��;�Z�m7��殌�4'?|���Ϧ�v�6�D�Uʹ�T#꩘^�� )���]�j�cv��L]�#����g>v�È`!�k�����-�)�- �(�Ĕl��%.�/�~���ׯ�շ������:��V����")PZ��	ƣ�"KC#Α0M,9s�%�Ֆbuɒ�H���+�6�E1�Yp�;Z:|oA�[�j2�ޕ�_&�wbݽ��bY{`�Ÿ;mI��'C�e�=�m�B����Q/P���GU�W�w�0��C��~��H�GA�XG��X�����Q��=đ��l4C4�j�dk憑Mp��� �Z:�Q@�]�$�zĈ`�aΕm{�r�p�^9=�a�&N|x~洮'
�ەЕ9)pzz��H�}�Zѫ�ȡj�ٓ�,��)�&�C��hL��OSM����.��q�?Q/7�~�i]y������?|��������[�����v����L�������hPv.�� M�L�����&s�B��i�諂�6���?Q��Y��0R@�잉zl��H��KZC'V�ۍx���-�y!��4�N������>~@���Y�}��MJ�_����=<����tzRUɵ�a�L�T�a��C�@p'#Z�;�ǃ����P��+p�}N$U�q����T�P��A�v��������{p�o�x`=
y��l m��%�C�
����U�w�ǈ7�'SKr��E��#����)r�Zv�qC��gD���g��ݮ�v�����|�</1�=�ffӔ)&�4��;/��O��'�(�r1�������z�1@��B`��)!F3�Pe�EO���K��ͫ���e�X��'b<8v�~�M-8[[�xd�"U�M�
�f�UuI���|X7��\�+[tkfrEJ�YiG�T�E�`��q��6.(�������������:/di��§o>���Z�9���H4�]Ζ�Tlͪ6J�4���W�ތ�o���d`.fEL�:C�|NJCC�U�v��Ylj��w2��N�5�4�u� �V�
�U0F4#�u$ �_�Z�P����E��qU��ئa#�FsX��.V辰̶}�;�R5�GsV}5�w��K�{�q�${�
0��)9$�`�3I�{mN��C�o\�8��� t7��orx~�ݨ��m�	P{zf]WT��퍗�y����?���~�g���ُ�f��ě6h>H�yY	�(J�-��r=�5ċ̠~��%�P�B�nd^yq>���/��=���?����Ӈ<}����l˒j���i2%+:�˧k���vM�F����VL���?�#�[��Q7;�^��9W�x*��ƚ�~�S�Ψ��*�˅�&�}����8"LQD$��o^������B�v]����߮��("ќ����*��bC�I���w��r��8�[}��!�:~}���`b&>�k�2�Q�����#����$��)�F������wZ3+��h����1��n#jه�D"�C���$:b`�����ɑ���?�w�DB �m$�S�D��N�PQ�C6�C�A"*N ��i�bj
�^�r՜ŝ�i6������͜�Tnۆb���V#C�hU<^��(���a0�mW4�N�����b��`ˋT+i�2ĳ%�f?s7m����Z���S+�+���,�����f��Ӭ����J����ɼ�w)�μ�5���6��z�����B�����������ŝ�y�1ŉ����</�R�^���#��bd9��0p\&�*ۛq�����g�Xu��^8�����U�4j+�k�U����qMGB��V����v��3�ݳ��=��^��!̲׵��8������	���n��T���|*��P�W�\��H�2�&�w濪'�0�D�p�tB_ו��#��bF�Z�!�80�ET}����*�׉#���bLu/Ll�sE0���,��������cAx~zb]g���岲(����7[�$I�S�eFCC��qb��{�g3�»Qi��H�dJ��&��h����+�~�?���Ng>|���������||h!Pk6�&x"w�A��ɄvNBL�ĺ�-��}'�n7.�hb����]�؂�kU�m3�P�rd�V	)���5EoJb�rG�G���>~����O�c���<����w>�>NӴXg�).U���'{Of��c���� ��"�n%�'g���{p�����m\�P?S����8�F���Z�`�:	Ђ����ޙ����ݲo��X��^�&���K��}���ՐA����F�|�Z)��q+y����� э*"�H�0�Y1�"BiJ�w��B@���0ӎ�{�°��5[�҄ݯ_.et-�V�>�$R�->�9��w��Y�f,�u�md�_I��.�u��3�P������|>�<<��M����=?>���
���S\ˮ��*�K���o\/��;���{�/f��\v[�\��m��e!a��p7;O<M=��q'Z�	��˕���pZW8������,�S`9�����.�:����W�Cܓ5�N�\��L����Z5ә)'D��͎*Y�/ƾ��z�Z���^���u.M��:؆��j��g��Q�ø�
��XZ�q���u���X;r���>��6�pw�l�.����jK�Dtp;�Em�5{��8fR>EBDŞr�n�O�%wT����<XW�^���6p�� !����}Z)�N�mm�6]��Cd��V�_��� ���q�)����<�loȅ�i���ĆƀDАh,Fv>63�#6vEAwK� �Oh��k��/f��uߨǍm��7�ㆪ�5!2��Vv��"L���Wjq	�{���>�jV��_��<��+�5vUʱ>�]>]ij���
%���^����[���K� �J;2�+Ӽ�.�K����5�S���N�c��?�����u�n�� }dq�K��jݚ 2.��L�� % AH%���
����zL����������(<T�Mߋ;�qL�R	���ALB���΂`�>�4�X��B av��!#T�n�8l������TNT�����H9�ԥi7�.٢t=���T�jaZ̬���O�Ĳ�f��HI�ՂX�.֯���;yR-��L�7#�u�֡g,�I:eJ��z�%�ݫ�.}��îU1��z�}=k��z�������� �|���yM��[9hZ� ��wCK� ���\�����*�#g�k�cqKkJh��T43�&R+�A��f;-�q�nl��|(��-3-3�Ϗ|��g��	)P��)D#{I o�8�Ϭ뉪���m��)2�3�ie�-l����D>�\}1K-e���JU�����x���O��(>�U\�+�q��?{ k�O��_�Q'���\�� ��;��D'�&?[V��{23K�rNZ!P-uU�^��jE��CR-��'�7��~���/��j��~�r�h_���W?t���������V��wb��|��c�V2S���@�&���v(�v���c��`�¼,&L����ra�n�
q65CCi"hHH���9F��{!hg���(Qt�(�F���W�.T�4�6._����u��X�D�03��U�:�b� ���!�Y�;Y�6Z��m��ˌ�"U�UR�<�������5���6����l; ������X��Gf�V�4iJ��N��[�@g/��iJ��2��2�1�dl�z����'����?���N�Hi6׶�M_���;h�p`2����#�ԥ�_�׶�?�����d��@�Ҋ���y���$� �~��$�9�(�0t�;p� ,!����3��	U��&��]�<������X~��Y궑7s�"C��̋�b�mw 1�b��a\
V+Z���k����n�R#�E��;���������1]r����[� ��朥�ȇ�=T�-͐����[0��Z�6��LZfb&-�z����g�u{c�zJ5��]�2��~$2��9ٜw�&�4����J�y�'D��Z���41�'�pƶ%N�ǁ\��d��9Y�_V���V�u5S��l]��V�h��J Y&���T3�fk���k�B.���f�E�a[�28/���� �����vt�>�s��{��{E���N(��(�Q�>B��u�%�t��N�վ=�g��h�$�� 5�$�Dl`�Ǣ��:̥D�f�b�A��
���$D3-kb�bg���@;��w�P�dל��<�ww[��ڮ��J�W�ۙ��HXOfI]��p䌊p8k���xX��������?��#��B�����ԹY}쁛>Y,S���9V:������&J�>h�m��W������m'�f��L��8C��V�b�m�!X�R�@d Nv��ۆx#��t>�,F��n;��zGZDS���̮]m��9G��q��.K����i^ԫڊ�]��I'����#�5b
߄�B�����	u1F�^�պ\�>{�،7���<�+xp��>�#�yg,3L��<P�}��j�W:��s��Hr6����Ź6`@�.��a��|+a���R��b]�fk+-z��#��)I�Ik�ԑq��u��P����d�'H7���P���	9ݬ�§J����-/F4S�L���쇫âf�Z����,���D(�h���mlC0�OȎZ�~b̌F-X�1�N�4#�@�!:��r��Uv���#���#�$J� [S"4#`��Z|AN��٫0�ļ�e5ӏ`�xgl���H��	��W�e7���uZY�'[H���\v�#�ӏ�������?����w�g}8q����b��Zc�|	̞I�AL����,�h�R��k3X�ٯ�Ȧ�F�at�ѓ� �a�R����"�k{���i3�����Q���{=�qV/ �b!�}l��:�;@�Fs{Y���Xrw� ޹G�Dpՙ�k��bn�#X�	Y����o*�|�ыW@���g}���k��U��Hqh��!I�y��+A�"]�|v�B�R�T\2����v!<}�|:s��I�4!�F˙��ۍ۲�D��'>||�=����?r��¤�SZ�	j.d�ߊ������"�೟͊�:ΆJ D����7����\m2��vT#kj+h��##�X���-ܿ/^|�Ŧq.�dI�������2sZx|���z1���@�tJ,��N���m#ic��W�����>�-�P���=r�ִ����i��V#�w&@�!�L���ݴB"H�H�Q�W �z�$G�w�gi'����ފ/ F�q�ɐޭ6g*�����|��ë�6��<��1[K� ��52�#F�)�F�D����YY�ߴ{�+�d���Ҵ!����I9�i:��Z`����)�Z�c�f(�N�2H���8�L��/$�"�~������J��aJ����^`��9%BF��r��H�5�U�2���%���މV�)vX��([��u���CN�e�,��WJTJm~���jg8���I�d��!�/�%�9.!�)T�y���� X� ��%�J��X����p���5�^m���w�x������t��O3i�H�L�^�\.ܾ���L+���Z�-�A�������'�%Zm�9���7��{���'����{�M|輁����N�����"���i����9F^-��r��%	�1�����tQ5Z"��q�T������B��8C�GL�F�8a��g�0�e���)w�h�OR�P�P���#�|'������b�2��Q�̱��<#��2O�Wrm\��-gJ�R����<��3U?��a;E�4G����å9�c�>�y=�:dϮ��ڒ,ibh�V��� �ӌ�D�V����;�8_��&�{�ʝ7�����eqp��7�:3M��iE?}$��~ۭ�ə\7H�������L���iغ���g���5�P��F�4�G�Z���8����B��	H!�U��]� �$)�t�=qA�y	V��	j�5�X0��k= �݆�U#�����Wmt�H�:q�?��h|(#�Ů��?���{r��w]R�<�d����͉kN�JP������D/�a�Y��"���WC���j/���Wgp�\�yJ��-dH�v%D_��P:㹡�\�4�8�vȎ����6��!�������_*b���0�Nm6�ϭb|vq��AM'�9�Jlm�@m	�$-�,b�$�w�I�vw*���L�eI�� d���B���r�?�ô������ӊ�4�HH��N�D����u�S��Zi���˅Z�=n��\m�r�������]/��~����͇�����i�9=��n7 #憐l_����45'JBpF�����`.�)R�w��l�� `�ۣ(�OF� �]�x>������.Y�Q��j�~����_aDQ��A��c��q0�5�4�h
���m�����.ҽ�bg6�u"}4��|/al���������v5?�f˴_�c��娍��U����/BSG$2���i�n��z{ᚠ�������7L�?��r�]�r}�������7���`�\�yY���g���D��ƒ��=�X�7�xU����^/��|�|P��Pm�Fk�.���1FX��N��d��Wb<<>��Ʒ�-z�\���ZB���O<>?%��?y�ŏ����Ɠ��W[M�QTK.�����y_���o1�(@w��!�h᠙73ѻn�N��i�6P۱C]{�j�9�x�y#�t#���M�'K��tY���,+�n̓}L`�[���=F7��}�lfd� ����tf�&��,�QL['ٚ�)�m��y��*97Ӡ
&���ϖ�F�u\Ъ/	C��h��ckE�@�g;ZЗ��1h�sh��6�ZƬק3�g7��;����K�aE�k��cR�lfX�:ui�/*|��}+�.W�uZ:�hH' �n��4�<�X��vr�L�
S1��|���_'7*��f>&+���h��BɅ�3�+�$�����H���F��(�Z�i�鰖���*����wn�W~��{�������w�7�k�    IDATul]xz8s{|�]w�Ղ����lŔ
��)�̎d�q��@�6&��J%��}���=�u��j�_ZC��­�yA{_�;�{��̓%M���j{�H����\��l��<��K��A�Z�9/�~���Z�>�Y����{i� ����b_��X�MޕF�����H�0��FM��}�͸�X��*�=�Kkcg���{�� U�A��)�v�n��Jȕu�Y��<<���ȶݐZ�o7�r�����l���<M�x8?���+׷7�U��)5��Jt q�@q�1��b�0E,��*�o���y��F�$C�8�&��~ڼ(����󤍋��5���6��𲮤9��<1�V�mco��"�2s~�Ēf�~��{�� j�u��QZ�$l}�I@�6�N����MЀ_s@�����g�S
�uY�t:��̶p:����o��w�[G:%_E�]�z"�a��6��M���d������������f0�&{?�gq0,wQ[ǚs6C��������i��B4%{�����R�)�D�hcŖYR�����Y���]���戽u��<����1��~��à��g�[8��*A|��ҭ�����Z3�X����w���^p2f�������9��K��X���0��k���L��'��1�e�]��S_�cuJ�BX��ib�WR��H����lB#��?��]���fg��h��R\s�j���h%���,��r;��+oo/\.o\n���js��s,Sb�&�)!�p�����^�c= ,��:!іG��~��g����m��@�`	�V�:�6��Ӈ�A�U�w�����b՟�^��?��q�������;���,]�������3�@^;7)��r�X�y�^�67j���
.�4K�龇C��X|�5Â�Hi��0�zG�l�`��ji����S�=Gb	%�D��`��#)DOl}OB�G��u��p��s��M�GE7��n��7n�+Z*3�%D�غ�ᒎ�ok^� �'����e�n�=���	����[J�#FrT�Z�P�ϫ���N��5������9��ck
��W�Ｑ���Y�L˾�.����p&�-���<�ϜN'����`����2�� �]c�3�}�}��|�\�=��xn�F� ~�`���)���e]��.��i�������p�/���ַ�9˲m��5����7xuF����v��u)]�?���������&!�[̮�y�7�%�=Q�`��S�R̫~���d�oG�gO��'6/2vj0��~صB��[�휬�D�	�ϛ�m�k����L�[OE��}�z�n�҃��f�V��������^ݨ)���t�C�ņ�*_B�=���&WC�i�`k�,��%�Ċ�(���\��������@��y�������ݔj��~5bU-u,&�lv�COx��e=}�L��V2�U[8��h����~��O���g����)2�@�Fj��]v-bdv�v����^�~%�)DO���n֮������J��ae���9���������`f�D7]��!�C�٭�d-c���'��޻bC��2��ߣ/��]4���~��]׋}��h4Ҧq<�ybN����I���d��V9;���]��(�Iy+�x"P7����>jc�V�[�:D���`/^G����v���1���#s>7q'/�����{�\5�[5S0��!1G+r��0����~�Q���g�^(�-�|I�L��d�rc��|f=�	�3P���~6a��A�,���QV�"�,3�� ި�f�DB$�32�}�U�U�ρ�����#�=:�B��sL��T�B.{+��N'���e�vFS2R`Zfɔ�͞�¢��Ն:�ٶ����z���� �����ٯ��[ }���IB�nY��,˧i����(�C5*U(�N��R�i��,�������%(=���4��<1�b�L#�������D����2�����e5�8��c�? }�TUɭr��lq��-�[�ڹPM1y��e�pd�%t���v�hɈ�D����
��� ���x�����'q#�.=��+,cV����UO�A�ZЉ��cD�h��A/c������<���S��S��M�SɔZ��G�����[��\:Yl���-xI�VL���Ӆ�̗�(&״�M��p��5'Ef���pZf��f�y�q}��ۗ�����y79MF"M&��u�h�ۮ�" �ؔ�loo�oʖi�W�v�ʻT|-����~�Z���[�U;i�H[�-?���vo�>�q>�9����`yT7V�X���w��޿^?[���n?��O�G�XǶ��j��N�E-�ѱw���2P��[�g)�h�Yp�(=�Z���$��q���!~#���0S3;j�U5���X�Ű���������=U��f�2�n�)%�,E�[��N��ȶ��Ǖ�����GOz�a#�i�xxz���d	ϝ7i�
��sq���%�9R߹�p	�l˒B�ƨK����bJ�������x��M�_;�h��>Hb�Oc���εPDmw�ie�f[�m�2!����|ZI�m/Tl�Co�B�4�܌���D+ n�ۿS՟���/��j�~�W� |�"���o�u�c\T	����W���"�	Mf���$�m,�qBL���6���@T��AJ�n]��iC'�����$Z���[�:t���^F8,-}���}�Z���^�I�lK�F��D�h���;!��x�ەVt�-F|w.�����O��Vr���bc,zA�DE<�x�v�O��}^�{��I��ˮ�u������A?r�C�읾��Z�-_�]Im����~L뎨��U�Vrk\��Th��1&�W��{d�J���h3@���S�m� &����|�_^�|����ھ1��4�SdVU&U�w���	��꒽�XB`�@���z����/?����+�����IiJ �I��*�Nz�}�XX�w�_����Z?M��������c��L����_�_�	���>�ҿ�������D(�Z8<��w�/im������h���4Hy�q������YB_�s�qoSL���iv%M�bF_�I~�+�{���I�%��Į�~�R6�O�D�'t�� �НB≉s�g�js���-��q>p4T�+0�%d��执��<>=�Y�\�c_�w��^;�~/�vȻX`cZ[\$1@
C}�FhJ��鐪#P�����T�ǜ~?�(��Y�q�DZ��������t��ϧ��x||$��s���j'CS�a?����m����^ �G ��- ��6��# �����y���|!��*��>�H�vSF�w��{2�jNz������=f{�1x�<�tk�ލ=�����Dr�Ã�:t|PKDA�j'v����Dm��L�g��B.�ݻTq9MtH7h71������G���Q����`��Θ�"�I�rG ��H72Q�$T�����]Y��^&��eĀK����5�m��݄i��	E����B��#�I(���(ܴq��[9���^+(����D��v4��ǻ���ڰ>�3z_�҃��E�д�|_�-(�ȱ��P2��d�v�\��ە�mP
SV��'�V�rw�_<>��~�jq)h��i��l�+���~��].l�+4�tZyx8���\al�~lI�-�)ݱ�;$�y�������'��zǽ���!?n:5��`h�}D�����k��~���ŏ��W���Bo8��R���2z��E���"���J�{�5y'A��z�~�e��D4s�䝜r�wn���:KL�%"�;7DU!����^-u9b
�)NLqr�
G�p}W�[�)�3���y�l^��j�`U:2�n����� b2�l�fw��w9��l�{=��w1�h�bo��dB��f���4�I~-�b�֟�_�S�/�K�G�l�O:��m�1�-��ʇ�g���yxz$��q�l��ْ�L�fyC�\ʏ���j��F � �M�����I�YL ��}��zMq�U|ƌ�ЮN���4�Vt���Ē?t��wpt�����!0D�L�h������HB��S�1�s�Ԓ�A,���ћN�t��clנ���yS��{U~�
P3
��ܙ���j���n�l�U�07zw� �˟�������h������0�f�*����-�[���ޔ���P:��X:Z:!��7PE�#W�NZ�LRT-��Ζ�{�`R��{-�W�ڔ[-��Ƶ9l�nW-Y5�G=��wگI��d�*'_"����B�^9�Ϝ��k��uEMM��Ka��Um{�kՇ�T�kV�E��1߶f�U-q�Ŵ����R%� �T�=ЧibI	�=��+/���m���#O�����3�>�։��7�^_ٮ��JOO^l�V^	#h5��:��Eһ�v'W�"j�d}���qL��%����x�g'Y��E��΃P�)�S���ǌ���z�P���v�J04�Ǚ� VTӬ��~E��%viR�sT�x��P5Yk�[�'(�teC��Δ��]�b�~q{�(6.���	!��� �(6VTU�Iq�jfBKDc�M
� K"���Dj>��8�!(%gD�UϜ�32��":%��s����BL�e]y���v����_.��fVҽ��&"����RZ!k�e �x%����@NP�d�V���1�d7�3��bT���H�*u��/�2��`�T�u���N+�����n/�
�Zyxz���r�7C�RkL����0�m�QD;k�Q�����k" � =�����_���ϗiz
!.bt��0*����U�4��!��7�C�����˭�G�	��:_��Ct����� ��z��N-����f��A� ��]�]�d�e*�;�ںc���I�5K4S"�Dg%�lߥK��s�A�X�á}���DqT����C��q=m�h���O����c�Z��1:�N��߀�z5��A���%_��=��I �)GSc1�J����Z�o%s�KP{H������h,���Ē&�y2�~�,�H�9S�SO@R�R(�F���}���R	��,I�EL�}��s_��`c�0FN�]�ŭ;4	���8
=9�h0p_�x��#�F�+�������za�m��p>����=�<Ӯf�{�ޭ2�kO��6��0x��:Φ����������ǟ�$<�VY�ݼ�ܴ~�C�ѵ�)2Mf��vd4�/N����w��vY���n�`�B�5��D/��Z�>4����߷�,e�(�9ZefK0�I���kڀ��P̒��]��_7�y�ݮ�n�q�}�f���;l�R8�ͻ��0%┐d��ձ!I�i�.�g���f]vJ�y^���bJ��;���IIZ��E�<����MC�Yw���i�`�l%����Z����c���*"f���}���wt4׵�J��*�9��F��o7�q��4�Gf�6�!=�7�ֲ�|����������8 ���S��'�\D�Q$L�8����`f���H��\�K|�=�����{ �?��t�Ο�}ł|r�6�%0�v��Ô��7[:����;��ււ�궳XPU�w���N��U�x�ᄿ��߽�mri����Œ�-�pt#��M���q0[i��e���" w��xQ#!�� E��l�#�I�;�)t;e_�#�g�v�<�t��a�:۹�⶿�1E�%~a���O���P�R�ݍPl��9��1FҼ0M��\ʹV�gNp�9&W\��܅X��Lw�}%��.:�.�v�vT�].��j�A)�њA�����5v�w��'���w�Gߙ nGڹ+B���j��V��i#v.�&&mH+칰o_�.�W�����Y��O�������v���2��s���i]>)κ� |YS�?ǖO=���������O�*�n���g���9�ZdJ�a]\Iҕ)��)&�E�Լ)�����ͽ�{��fD�=��p��������צ9��]�#uCr ����=�7,�WGZh�P���j%���Q���C�a#D��f�Po�X��݃�5Z��$�%rJ��5�o�۷+�W���OO<�W����m�	����z>��ܖ�#M���U��}l<R�d�D
����s��#�ͧ�|�^X�Yl{o�Z�b�q�������X�Zm���}+��|��S�6қ6W�Q��r�������?0O���;�����n������$ϡ=�
w$�WG ~��=�?K�cx�1�"�,^�Q5Ox��8K�W��5v��b��<��ABwG��;c`t�8��e^l=k����`}�͐JQ4o��K����(��"��]�~�ͼ�z��v(��4�R1X�h�I��J�NT���T��s)0�M,��C���k_�s�6S4�^���Q����^���2�G,!N��"��L͕�8r�m�pz�7ෞt���b�b����&ph���\��Wq2��8�A-j��Y�v��yb^f�� �P��k��X�ɐ� .�h#4#�6�Pe�������H�$Ib�j��Y�=�w�#q�G!��"�OB�
I������ʌp7S�5��;� ���ܭ��̌w73������ ���Q��9��5�`�� 05Ld�[oʰ�a�10��>�n��|6e�MG��r�?!z��>�h0ܝ���a������'>��/x�ӯ����5�~��?��x����q�H����6�b^�=� T=�Bt^M�(����U��"��qB�.g�,�-gǌ�-q/vݨ�?�����BV�6k� �������?�w��J.��Y��>�a�Ѯ�ݲKI!����kT=��VbMQ<Q�S$	�70�9� �gxu�=��5��a��g����aH3�)��E>�6�ܱ�^؛��������s`���� ��ǟ���;�����Dn�$�o7 T�{;;br�xp>K/w#Yo�τ��;��-�͐�ö�oh�s��j���Cˋ��OYޙ嘅<9��P��f�3q��jzWK�v�38��������x�������1�O����x��Zm�K@��9������ �E���ｷ_{k���S�O3�6w��a��P��.ty������_H	�T���i�q� ݛ�/fl�ǎ����R�n�9�,��䂰y�U+VM�H���������ɼ�ӏXc'�	�S$�,�HHz��=�H�ْ�Yj*�Y��ў�B��b�����r��m�:La���0 �ѭ-�SS)���@d70�Z��"�D�(�a谺j��#eJn��x;�x=�l�qwl�o���1�9��@G�7
�t�	ue��o��|l���}Q��$_"��c����#{��3X��:�N�6A(v���+-Uo3x8��v��-���9��%-����y�4�RLl�
���3#O}32�iɬ��㑁1�ǁ�o���ǿ��?�	o����zG>��{k���>s��__�'�q�ԑ�9Y�����S�\:Wz
��,w! b��ݻ:��\0�v�Ϲ`�[���˘OE��h~�����7�1�=�1�.FB�R������e*�q�U�D2�>.�Z�/]纪�Ι���_Tv�'t�8�!�0�V*��C"�j�$��Oi^�=6��ox��������G��{B���3޾���x��ر���#����p��o7x�ω���H�}�����a�wXg6F `�0�aD��i���21'�^h���]�.+aJH�*�CY���% �o�d69��3�Aq89������������;��?�#rL����sGF:��?�Y���Wx�S�~PG�� �<����گ�g��[���):�\�[mѳ���9���� !��ö1J�=n�iM�Y.e����c!�A�԰m�$g���#p�������6��H��� ��ڤ�gFĬ����˳2�B�dz����hh�.�sT6f���ltk�J������9h;�Dt���r����\_�����f6�:Z�#"��|]�V�� �982�9|�
�}hp�����������;������qS@d�"�C-�[�Y���p=���0�2�Y��X|���+r�    IDAT�yP+2�~�K��'.����/q�Qb{שlgDQ-���D&�h�j9�BX��3���'2	���	�7'A��������s�����?p�ӯ���0����x�ᘁ1�}��x��L|����VA�N-�
�˨BL3:x��魡�?�o�ic��i��8G������Y[<�BL�	ٳ��垉
j��aTra� e�q&2���>�DX
��(�0(�a+�r�`�T�Uyjb���ڋ���=W	�R�P[�̐��'���DIn`�`���y �	��{����������_~�q���o��~yG��q����UχIq�N�mȠ�F�^��:n�}�#�@/���z���0d���*���L��U��ڋgyz�8i��N��t���"�n�80�Exr/߷�����Ls�ÿi��/������'~�x"�Df6g��������.4o��h��3m�IκYX�j��"����f���䃣t��l��������?��/���9��6��$g��;{�������D��aFra�׺ �� ���I$glQI�k��� �� �ӡ{�L���z�u]M���]�vӳLv&h�L7��i���g01���9�кɋ��𒄃�&�L�Q���]�j��o�C�"z$�E^�N�j�Ugt�E�	fs������\�n�u���x���#m­akϹ�/86�hG����0Ǭ��Ʈ��^�Z�1�xnBꌟ3��tIR�w�T(H<5��3�d�����k��G�ju#A��l��{����ħ��Ê0�X3ܬ!-1[�MD��D;�����r�`�����;l�l���JI���Η�����:���L�œ1��Ÿ��7��������ޤ�I�1v|~|����q�����l9Z�/2\�r����k͹�Q}n�u�.ȁ��^9��#O�l�Ч}�����&u���Q\U���z�]���W��5�+��+�M�s�le��ɳ���.�LB��>�\F�{�$I7�s�8p|~�&��n��9����~�AT��i�|����6�c,^F���fܐݑa�c�q����7����m�㠌��D~�[�������<�D8̔��d�WW��1�f1�����BN�j����{<��|����a��|O`���7���h�����"�շ�]�?���+�ps�_��Ws����_t|V��(�
��HBk��mt��	��$۾�7<7�m�r���88rx�^���-�^l������O(+���U�P�".�"���wO�HDcd=�i� "��G�Xu��`&�Fo[���9�z�]�)S�W-�b#�"���aS=ަ �b9H,�cR5�EI���ks���k��?��;ؿ���qKH�yʘ��5N�.&���t�O$Qܜ[�����u�sǾ��|~bJY�9��#\M��M])6<���4�8��N��B],�8��Ѻ�7�dGuu!�j��g�l�V̀�3�u��`��ZC릀"ղ��e�l��-r(��$Oj�C���aΫڏ��;��2��5����y ?�����'n�w�����q�I�߿}'��z����fp�V��S��4��(H���NRg���m#�w��c�*j�� ����x󎛂XS�KL8D������U2R*�Y���o
B�Zt��Uꊬ�^��lG��U�F(#'�v�% �P~U&Pi'Am��7��!��
�x�Ib������ ��P�08�,@� 5H�f5%�=��m�xo�7�qx�>�����h�;�sR�BRå�2���9`#�o����|a�=`ow����؟�{C�;�����aJ�	Z��W���V�_D��h��5$
�|�c�Im �X������1p���^�{>_����w�8恱� [�-k�?8����@�������X7�Gc0&a���}�MBҬS�>]�N�>�EMEw�Iep[�8@�������N�2T�I�>�� '�J��d����M��RF������2�HLUc��p��F�ƕ��&��]Ï	k��7<���Yk�s��h��tN'R�>'��T�en�9�ڐ(6R,ӽX�?��iR#�,��g��?��w<��Fxp�G�1ƾ�N$���5�Q�.��5T=��m�c:������3&�ȷM�Ȣ�l�� �b:��G�GM�D�����6�������!��R��|;�^� .�H0oC��傶�-U��1sqІP�L�6��O��V��ڪy~J���j�1�g}X٩�c��q��׎��7�ۍ���}�z�L��^�O|������HΤ��`����7������s����j��~������a��o���{���hC�7���&R�d��ט�V��8Eǲ�	"��(����˵O�j�v1�U�)RZ���+�P���'q�J��c,�X��zR��r~�E`T�%����S���
Ng����8� �5��<���֑FH���}$�mãu���i{���
i���7�gG	́�����[C{t��<0�|���~���g1S�e ,�z�e��1U%d&E�ԛk���?:�%�$&��
�4Zz:�qp���pl�����?��/��s�{CR��#������ uq5܍��{k����g�-U%�3�-vxR�$ż�H�zF��ūi�qF_;c`}"�'�T��� !�k�.��tJ�����DqO�5�Ũ��<Ny;���|y�VpP�],�g��X���oԳ'���5C7��gX�����Q�u9'K�sXg�2C�������]ú?D�@�DJl�JeGpC�vQ�@�~��pK��x/�U�i����7D�tp�$m���t:�c���O��uܼ��[VO� �<���E:�5!�7�����[� �BL�]&Ne:������|�������d'�H}�r�'/�P5t9n�,�D��,S����H�\sB�5�N��<�@���������o�~�����hN�g$Zw��o�:q�sʽ�5����Ѷ��7��7���/��?ہ�!^/X����I��k�v�*�
���5�:��N ���u͸�Zy��[c�����pY�,�>�_��W� ֺa՟�)P�<�D�Z��9��j[kk͹��TJ�=Z�9A�Q]�)3�����X��P�RcmB0��3���r�������_���;zo��P��pV�rNl��W����vo�N�$���U�c�h��d[`3���a�:^x�d����33�)C|��pN]�<9fT���E��A��T�S�4�������V[}�+轔�c�*�o	��9��v��_?(`�/� ��웛�	as�$2U���@���J����F�z =�/��V�Pωy��Ѳ_��BU�3�+3�X�.�o�E������wÒ.�n�E^R?gD�"���~~��]�O�Ž
�IGq����\,�
� �2)���3�./g�b�ߜ:�7	�Ԥ��IƮ���Sjb]�&��5�����퍐e��p(p�fx3�{&��Z�]=��gNj�/D��qk74�����I�y��춰�´ZX U
	=S�S��ϛNb��c�B���pe�ly��22(�kE��l�ީ�ڹ��h3ʈ���Yy$��ΒqdFY��I������1����jqUO���7�bG��Sڼ���Y�mC���� :�o�Mc�0���܈B�@Ǳ	|փ�^=&i��=F@�N��l`F&ͅ9t�iQM�J}o�
��.�2uF�ʱJv�+�7>��
6d�
Q����_�3FA�k��2p� �n<��q&���X�y�*گ�����MM�2�8�7���>yg���1����NCt`{G�Q
9�9p�A��~��x{'���������jLdvyj������ؙa�1`��A�����4X��/Q�!��2F��R�j�ܜs!)a�Ys� %+�2��[���c��5J1����r?�Ҕ�}�?�s ��(���־��[o�Q%��U���eq˛�k
>K�Q(M���zko����Bf�Z�gF"���3|E�^h�����Y&��
�@.����jǓ�$	�,��O���+���F�UjzP_8�03$Q/�LǴj�^�'N�z&��k���^m,�R�c����;�"޷N��<�c��Q����2�z
�"��D4W�w2g70U��iC��h83�����w�k�yx.��`ﰛa�m����A�e�R5� �b�+�K���Nic�:K���,�d����5Q��,��L2��y�14�@�RJ������)3��zM�[�+۴ǌWV��m`�a&E�j��"�U�����)"q|<�
%��������$�8 ����`S����k����x�p��ǁ8v��{Hvx�����ް�J=���U{D*�,+�L��k�����X�pS(��r��Ip"g�v�/��P�]]Vr�|�_�#�Щ��W��B���QI�@���.�B��ĺ8_�D~}(�����(�3×M���������q{����/x��s�{�è�-|{���l츰�����!Ñs�|����ox��q�v������
�å����M;�m~�2��4��ڴI<��_#����u���@)�:X��9�״Bo�I��<�g&� ,s����� � H���[�5k�UG[� d6!����qBm�5g*���M�%���7���m���߿=0���#�dt|� 3����Pd�dpS�OEљRe��zCW�A"_3��x�0o����d�dm�H���`���[o�m�̆䒇:�Y�,QQ�Šf]���E"�7�/7���}ý6�R9 ����������iҘuk��R��Q=�������Q媞e��،�����v���:^��Н5�[�8���K��q:���U�Ù>�r�� @�ު�J.�7U����3nUI�2�Wƶ��Kw�ޢC>�3˼�9I�S3b�B%0���.^¢��m*C5��L��8�!��Y�*�;[���YD`�0&��Ɯ���ض�����10^/$vD�H����XٞJ�XM��ĹK��s��ɧ���:������4\��1~��i+�F�N����j�ˑ���^3�3�%��Z�
 �̦���J/Y}����{ko^ٕ�'��r�ڜ$�e�=����e��1ƭu��?�*|��8�;��s�P������z6:�c�<7��x2�I�9M`��|~������@�O��|b?��l���AeL"~�,���Lc2,�R	���)åU�z"�p�*#��x���l昘��#�h�LdXjC�5����^_K p}_Z ���ݿ���ֻ�]��"q���P������z�t(��ː��e�9�u�����%>?~`��7�_[GM�s;���ڧ��+J�$���`!�2�"����cfXD5f���֠I.�8�� ;
 �nk�3��~��|aV��$f�+��BQ�@��=$:ԩ��0�5\wj�?z��9r����)���[����srB�#��V��#P,�j�4!)���+��׳,��HܜC7p�P�����H(�����2����f����dK`��(t���8����ɭ2�'!�p�*+("Ł����o��8|/����dj+(��DEY�ҲrJ 5�.�'NC^��B2���������j�SX[�nq��}bƁ�x!��}��a�/M~�qH�#0���!ǡ�F�2�h���h��b^�CD]�VK����g#.L��AB�`'9/���/�;��ZgXj�T![g@W�΂x�F�T'D�$|�yR
Mȥ�x^7���!Z�^S{"k��8�S_$C�ﴭ��-�k"z���7�I��*vP3����<aho�T�q����Č�MsY�vǱ=q��9J\|�9'^�'����o�����꺽5ؖw9�32���=�
0��Fo+M 6��5���R?�!K3�62�,9�CSf��fh&���3O�om¿���@ ��?� hf�z���ۭ��-��OEG "',�������}!ߔ����]F���Zbb�Y�u�mw̱#�;lovnE���-&��{U�˘k�=M�4V�7|$���Ty�fJ�#ue��gn�=s?��|��z�t���p7�D��o�"�9��Ѳ�3@��ޕ�w��U#���%0r�ȉ�RYtN���F2�7�!�T��Sm��r8ճ`.e3y)27���y�7�P,��=,q ��+	WX�f9�5`��A�2���3[ϪZX{�$~��gm��P�t� �Z������O�����tT�_o}�_3W��Y(��`k+�Q�)��j�{��6�� ,>��sV.�B4`+�y=�	jV�k�)����n��^�'_O�� }C7eC��n��В��0�JR���s��{��#�R�'��j���Z�.�l=�3[f+�%��R[��+�u:{!F��I)����Z �K�'FF�F�K[e�z��q�f}^l��]{e"*�9��W�k'b����k�	��N�g9����F~�>��?�l~c�����\�֍3Zv�R�#b0ßD�v��M��{��o��჉_\ȌS�S��95Eq�9h�4	����B�.vp�y�sT*��S�(W��D�Z�}{`�n�ǁġD4/)�i�w���%����m����m��n��ы1���*�x ��f_ �:kKt05����n7��>�1����.E�#��F�6{ʸ�Y���7�J���ʾ����C �D��u�us� �T�B�����2��@Ӭ�L��uuX.�$��1&R-g�����"�z*���$F #G��Ϡ ��#�`�@�Ο�2~��LZ����*^�E)U-�� M|�^(q��S_H�2����H2j�f�4H���Y= c�\9��ɟ)��^�wvOT`eD@	�Tp�}2+EA��P���B<��T@[��?b�a��3p y�b�jq-�Q�����@J���)'���^��,�Ⴔ��^�wK��"?��w�����mrD��[$:8�m3_��KQ�bX8�"�$se̕m[m�qB�����Xh�i:�\fDK����%�NF�"�#@�M���b�
�[h�%�G���Y>fx��_^_�/D`�y��N��e(�W+0ǘ�lۺ>�,t"���|��y�,M"�A�zYNt�PcP�핆��`��]�#G7 1��,�5�*A��9"x^ϧ8 ��`	*!y%e�g����kE���!�k�K>���*e��/@�� b���PgJ�D�FʣM4k��[�2Gx��/\ѿ���(\���{����������[�p9���f���꠺�U��`�5 ��4[�\?w�'v��͂ɕe��*�ɉ���ZH]��,c�(,�?p�{u;H��B	��8�:����,&�9�3��̾[og\�)�*�]��1���ͽy[c7!t��J�;%��Ѣa��ʳ�dԺSR%y�tVRS#۪����0�bQ3��n?�k�i�o�3��vF1
�Q寗SJ6K.e��zlrX&��g;!R1�9��O��K���D�k�P�����*`]#]�/��tu6�������"���8%[j�-%���A"#�m�!�A98�<8F�ڿ
�7p���`mc I�:#`ǁ[��q�I�����L3%t�Xc����\��
2fŔ�H�Ve<ӽ�"�*����=���-K!r.$��NG@�_��K���k���c��u}m�X9|�
��5; ,�H��n�8N�����#�,�M	m����̀��	!���)'�'"�T��j���8�F"e+�5&^q �q�nx{{G�v�� �F�]�Jإ�3Px�kL�� I��x��1u��#;P�..�L����B�IH"�y�\���ɓ(ԩΊ7&q����Hkǽ�0�a��j�/���~��� �Ep�ݿ�6��o�޼�5X'�Q*����,PrU�DE��:{����o�LY��ı�����(���c��En���n_j�L&�˟� 쬭q׳����;�\�kݯHN�;�MX�7)�/�    IDAT��mxk�ݨ�AT��%)M���2p�B�;
� B3���b]~��G5�hЀ�4S��<��`��F�����rPId���R���s�����1�}�1���ء�D�u������5�[���Q,~�:_����ַ�ؤ���&�8�d�R�F��s�se��H����d.�`�z�t����JIle_+�rDs����)hҽ�� ������dfB�B��\��%�S��h���t���� ���K��(��
�Z��u��s�Xcu
յ*���{�����e���E�?�xս"�P����|���U�zy��I��J��պ\xRa��
��몁=_0.�B�Rb}�P�j�N%u������/��U�{S��Z�sag��L��Ty7uV�XY�,m&҉c��L ���F�ӑ�1)4������p�?��qvS�j�Ok_+�v�8�tG�$�T"@�+[O�;KCW4Ɩ��
�󜮠g0�gI�<��(�5G�xc�7� �.j������s*�Z��
 �IE,mk�����n�m�fn~�1�b���67�5_�:1�̩l_�Q�Dk�������|����ty��Nu�K:�ז�(�T(~v\h}E��襎�_,�M�PP1π�Z����k]��%j%�	�KH��3���L!X2�N6�������V-l�IC�����Ac�����eU�\�,� ����(����rf��﹑�iN�`2���4|��W�A����Ρ$])��'�h���MN�S�je���M���HϠ&T¨(�8��������v�r��/ʇ��۹�l����5S� '|�j2&��,T	g��jS�悘͙䯘�e��'���Y�p0���s c HD����Ru�R���p�.DE`����*I;�n(B��1RkQbL��������~�T'Vi�2N��k@QoXv�R�r���d �הm8���J&*H�����˩R�S�x�I���Q�"��p�v:|Gխ�,u���j,G�B�N��`%2\�В�Q��:	�s���y�����[sds�DUW�7l�&�g&dc!�T+$�K;���nh�;�w����ρ�~��s�U�����*ɩJ�-G@���T%G�5^\(�J���Xkm���,�f�nf�,�8G�ݜ?𓥀���5����m�zw3�� 	���p^|�⊜ψ��9�XC�^^�"�zB#����:E^�����6* pXk�$I$2��	~��9��~Tߪ��2�QQ�i$4(�[�zw;�ӫ�\ᴹ֋ 6վ�g׻q�Q|#.-nz~�����8�zaՐeT+�a6� t���a t�z�@'��Al�aY���q,c��5�7�ס�\���y��xM�{ ��́�n�q���r��1�sN,6<�����X�E���\59Yم�LR�e�9�:Xٙ[[�M"!H�T��W�PB!4�2�"���h���*'�JQ��	�bu1��{��Ȫ�jq\>C�v�	��_�hX�P�]�&9�j-dfӼک����k��"�E�6��
L�[��Hk�)��V�v_��R49ה=YA���\	1˄��EXAW;��9:|�qP׮E�ӝj1�g��ZdRڅ��뗀 q>��zS�Bk[� ���6�%nе���uof�k��]�C����~�{�w��F��y�ޞ����/�p�u��ݟ����%�y��N�����j`r<�i�ڠ3�����������������\d`�2�){�˙��KA\��� F%j犭�,>	���Z��[E��H�WhC��{7�� �����g	-�m�Zk޷m��Fi�ס���h�gF)C�2|54���q.�Z�dd`������ s�Z�5��dke�S�ùp|pf���Ƙп���I$Zg�!QR�iP��P�+�Y��n�kv��a+ʮ�"�����Q@B��9]�/�bmp�u.�E\�2}���F(��\5���������Ih��`Ԍc�7A!��� ��ۜ�>ͱ%֠#&k�BȄ�+�� *%�'w2��[k�][�F��l����:�<�b���Q�2 �D'�$UC����}G��Be�z_2b����7p� �B�켟+��j��,���<a�"hFrbkor�MC��L]D�m�S�]�Y��P�Zy�icsJ];��|hgݻƳ����=l�^��e1�A�^�fu�P��ծ��Ry����5�����ϸ�<����`����	/W�ٴ���RP=3�^8�4���_�r��[A+~��2s��֭ě []+(�ŋ� ����<D����y�x�H�[�vGo�{�v" [ci����8� � S�V�g��2�x<��������������/�1��E�8�t9��'BRKt��:W@=W_v�����,tnm%]԰(�a�\��* �8�����nп��o *U��Ș���ܲ��>8�a��d �E��*��1i����r�ig-w��iH��0� p��;p�V:D+;P��g�L���5�-��Y�67_����O*�_��k��WP��(��VOH_�F���K��b�Ӱ~�d��Dx�T���&NO1]6��������т�qVA��HZC������M�D�~7cb̠h�Si��xGk��@��) ��T��yD����B.�֠�X�R��|��i\��}�:-y���6�MTK��XM�SC������ �4�Sb���ˡW���j%�R�F��3k]��W�ŀ�=��n��?W�+�(���j"(������Y�4��=/C�\ ��a~i�R�y�ޅ�Tp�fu��B�:�ʢM�o
��9^�Hb!�(D�r2\Q�{S&��-���r�
J�>�����J\qnh�>���Vbu&�+�{F�~��z��
F�|6��4(��jWh��{�8�+iJ�d�=(zf`�Ӝ����{�������t�N��X1*b�������ʯm�x�m��s�qb���Ao�h���;����>>��u��¬�1�ȵPp�i�W��YWB��%�%jW*�\ހ��e���7Conww�"���'�  �] 3"^�����c�ְ�.A��t�I��t�����k:ْ���4w�t)f��V��zo9[ S��d���d4�n�Dq���L�\#@SQ/� �yW4\DE���d6��ZV�Y���R�͢jxX1����ܬ�3q��x���ճ|(��ZB�%:bN-W÷�[��b�� ���ie ��{e��K�z�`mLu��n����Y��e�9'Gp.�_�����	���d�u����D`� u;ԞI�B���"%�
v��2�n�2��e��t䖐l+��r�P)0$��k�A�A�EV�"U2�>	�z>��'L"J�d2O��Fc+bk��o��?��}��]�ji��.G)�P0��b�l8ш�ת<Rк���	?��~�ʓx��jh�xxB&jP�"��J���r�"D*s[�S_'RWhP�x��t��<��>����d�'v0��/F"g�]�f���)D??\8�͚Ղ3�
 J�u�I�F�q(� �z9�>��@ܠ�e�o�NM����?���߰���v�s;�O�1�\cӵ���&9��hۆ�������7�}C����[ �i�m7�}�<v�y4���&�8gfX�~
�V�O	*d��� 5�4��!��u�t��3�j0+@! ��Ӿ��  /�<�|��Ǳ��>�q$�<��ZT�.񄕩�ˠ�� [�4@��1�.bF,T��.��_t
��P=���`Y�4�X�t��d\�u���Z`%]H��-���9i�;��!%�3��H�ABVk�zu�	u�*ǰZ�����7԰�zf��nY}���O�眫w>P����V��p�e+s@���"�$���?�s	��FN40{6�+���ր[l��@��!��ԩ�B�^D��W]U,����P���@���5Y�Mƙ���e��5c��I`�T�\�/�c��-N�$�`�@���Hg�W���"aU֜��5�ҩ�4��- ލW.U\�A��	�������1%x��8�iC�`n��zOCE�U*�rI�7��uP@Be
K���Ry�Q�	CU�=3�u����8�y�X���v���k��^(�	k�>��<V #��̓H�_�YN�Ŀ�{0�)Ԧ�:7�މ�N=�S�~*��Z7�`��0:��������sc 0�G������Q��5��Ǿ��|�����8v"���dS�U7p��92��k߱���~���۷w�펈F�9|����;���8�^O|����z!��b�����v��jª����痤��k��V��	>E�D�Lـ�9p����ӿ�� y�[a��1��>������{�f��!��f|YX�';�-ס+����"9�
�!��95���n��w�o��nb�OB�31W�+sʩ�Y��a�`��t��O�Ӯ�|>1�ozo8�e3W�՗���>A�fK�_�ߥ�9�5&YF��,[��ݱ9�x@�R|��]�AA�@!#挕(QKc1Q�*��+�[q1aߒ~ve��i0���a��T���hLy�b���0��r�D�嬄j8¸z�{�_!�m;��s��+�r�F�b@�zw}�5</���
r�m\�eܫ-�kO���|��@�> 1"�2�P�Y^�.�{�RƂ�a(��Ց�Ю	����)���4XQy�p:�r�ժ�.>�:_k��?+��D��VDeY���p�WM�;�;[�,ϠI�򙉜�ʥ̗r>�l��Y�=��.�ɸd�(�4q%�Rzm�����P%�b�zN�y�/�@����娳s$k��k�ix��B���}CSkH8N��$��N��Ւ���q���o7�&�΀�|!�O����7|���c�0~b�\���)r8�$������c&�M���*;�P�~���0ǀ�n��������(]���;��ߛ���Bu�d
�' "� ��#mZ���^�W��jb~���@ �� � ~�9����c���ǭ5o���ǯ��$�6@,���-m���L3�aB�G��T6@d�"��o��sgC��}���ZE�r`F2��������\z�D$N�Հ��5ڴZ+CF23Kg��P�MF0302p��]0�"9�:%8��d����j���҄6���E���� ��YG�U�P'��1���"��:`��%���T$Q�� ��:dk�m��p7�>v��9�mŒ��T/���ztf9�SP�8Ocov�-e�Dw��P�:0B��9������W@$��fXS�\���{�R����Z7Ů�PU��v���~I��!�U"Z���AC<?�x���ש���y� &&\J����j�]r���@X��6_�ii�53x��T�X�1$�^�r�ŕ����r�S�ғ�+�o
��V&}:Kd�4�����[5��G%F��W'3�1����"�k\��z�ɠ�Z�C��N��5 �stv٭ e��� �znQ���{���z]vH�n� �	���Vl��g10�/�c{{��mk����xx<:޿�q<;�ǋ����8��5ڗ���1&�}��u ?^���W��;��d��[�0���v�������8���.m�I�LW�v9�u6�$���[%2�-N\��7^��kl�4|E ~:
�������p��=a�o��~�����q߬�U$TY{V�����C��M����z�U�uX)<�HQ�Y_�e�"�80��Z�Y���1�Ac1�R��j�Q���Հ%l�j�+����4U ��Zx�5�ɩZǚ��ޱm�Q����J n%����3�2�X6e��c`f5[�н+��,65�v��I�6)b)eѕ�� �ޟ/�=�8&� @�[�[COH4���s�#9hT<M3�_}��)�*�Ȁ+�k�%��J��uI"5D2��J����<�
*�Z��.��|�e;H0�_I��"z^�@��2օ84Y�cL',(�3�*Y�c�������dKXa6
���^�h9=�F�h[�������4��4�CA���Zft���E���R�)�w���Ma6`�+Ӯ���./U����%�X��w�W��WF>'yAc��Tx=�*��Jj���B����?��ӗ����U"J�g���!pk��[����h���_���M�V�;߀kUC]�d�3�D�2�E�c�ݰm7��cR��)�E��;f)�(D�l]3G�^����O��^��� �m�g*6!���*����'���e�^����/>	XϠN�)h/��`��ؑ�1#bƏ9�����_ ���L��o��[�z&%|� ��̾o�������������m$U��9��'Ô�n�c��i�e�qΕ��y���Ān��Pd7�P @C��1X�8��DK����:j��Հ��K�Λ/(��n�1���k���r��7���6����MA{J��/ ���ʒ���m�]��t"�\R���#V�^�0!��漯ު��{�%,g6Q��	_ʀuh�@eS&�U1�^�zZ�B28�NP���f�V�1@1�As�i��/�Ul^� �$�jL��֩�h��ʚ�0��X̮�!�B�+8@e�� Pg��8�Fe�3���$Y�*�E���UA(�;�����쯂��v��M5�3pџe����y~����L֨Q\��W����U�sBp|��k���%�K�U_�P�}��3�8r��u�
�j��9a�9�K���yVKp��e�׈�r �����S�xjʧVӀ눦��ir(��,7~B�:�@��^�V�Uʯ��.�
��پ���=+����$���_�p&���78�1���ď��ǎ}����u�:r��֞k&D4R�b�������8&�+a:�2} ��q�߱�6l�SF��L�
��g\XSIO�3V�l٠��9:H���C���9��12����� �w0 x��iL�Ư�� �9 o �2�{���o���������{�.a��O����`��n�܂�q������q刽Q���jv��k��@e�Z껳>�{�:��;dh��ˀ|�S��E��wVp�� �����F~��#h�m�xk�����o��].gt���EK ֐�R]������h�֔52Q�����=_��,^T
�Y���>�Y�H:�:(p�e�ɖ+�-?��0˘-rZBgt�s�����د_^Y�e+�9�����Z'�N��?������0\��bү����J��݃g�Q�Se��*c57�Z!R׌�Z�/��������9����������R댆��d��+�u��:�|?չ��"�]�k���D�5�O��E䂂�vi��]�8/Z��T��u�.�B�-Ί��9ISk�+H3N�ۜp�o����v�X��7Yg�n+2e&��	*�uf��3Qb�&!��l`����Ub�+9[kY�.-�Ԩ`VҔళc�.j-��ǜ��<ǎc2Y�O�ְY)�%� �v��I�Ԁ��8B/�ǁ����|���ı��)q�mngp8�l���YS k@��~�}#����;��i�a�E�as��c���̈�_��� �, Ά�>�q����k�8^Ǳ��NA��/���f�v_����$a5�V��8DI�i �Q����c��Hrґ{)�)���D����w���3��:�ʴ�=U�&�;S`�Q�Ug�ߍQjk����I�;$�5�5L8��;:��.�d����ME��<�}�VQΨ4H������h�@�_T�����I(��TA��u�F��Iњ����:�)�j�ʚk��RN0�ش5	om�BfLpv�T;�	���5M8ˑg.�:K�>�PGÙ�]ҟ�֎NƯl�� X-i+{C�������Vե��Wn�Q<��+^^��È��A�׈�?�d_����!\��

��X�02�Y����um$����r/U�{�k�����Sv��ʒ���m]K��W2Q���u���<���/"Q�,�`�5x�ϺȜ׶�r���%g�=��CH��,�*�V@P�
��� Vπ�-��u9f��I�    IDATl&$bT6���������}������)����W�jO�aD��|��1��_���;��������1v�$���޼��ӐI��\(��.���6}���cG΁�����ۆ��;ߐǁ]��o�߿��,%����yN�-��\�u�V��Jyq��5*ۣ(i�=�Ӛ��w�~��� &� `������c������GD��l�n����_�*7��Fڍ�6F�s�by��I4m6�m��}P=�D	�qtgwe�� �]g�_�N��錠�+�v<��P��;��Ĵ{����BF$"�"qO�[&z6$�q�s�g�2����{�@Q�Q�$�����k&��0Iڙ�I�L���U�-�ve�̎/N1�����sbLj�7�u/ܱզ�e�*S+"X�_��OD!+�l��Rhk� _^�g��̡�T�(M�z�A�S�|%Y��H��P����8\�̪$r~]	_f,���M�M�g�=���x���x��;��'���V~�ZgV*ޘ~�2�˳)�uE�����[�wU�t%���B�H��[���I�d��9���!<*\���0\�s�YI&Qﬁ��S���B�Շ�"�r���I��
N��i��+5�<ضVV�ӆ0(��F�d��(.Y�K	��c�Ѭ� �g�$u��	,t�DJn\�>��wǁ��wl������� 
0&ZB�??�m�R6�P�,�n$�%K).�B�t�k#�n��#�o�x{ǯ������޿��u���;�10#���:uQT��H�'_m����
�`�4��J|�0�����~z�3���3�A�3"~�3~��qD����Kp؁i�0k�\ZG���F��ʑ]Z=�Kis�2��=��sl�ֱ9.�D�H,�4X&D@�P���.���"��PF�G���x/6{���6�F���H>&��xΉ=�X� �Sfse�;��+H`��'��4��5`��#�x=۩��lQsҋ�s���H��qy ��j�r�lE��[����P�Q����YrD��o�K �2�������`O7����3�~g�q݇�[�Fbԡ�ha��0,&���t�5=1����t�q�"�U֨>�
L��� ��jx�r��p:��P�����l� ��_����J[�k�l�DwXN�����	��CѣuEp��RqT���eͳ��4ȹ�#O�&�L��X\�.���� �֣��$VN'�Ѵ�Qp5��A���n��iͰ��s��╬�'�83SGSu";W�
�Y����*�q�5��xu����b%h�u���I�d���3��Ω�n��w<��؀�� � <��EB2H~$,����dx@�_�ܙ�]]u��2��<���yz�/v��nUW}?2w�?V�X	X��9�ڗ�������	˲�'�Z@���V�F+.���x9~_)MCt;)��;��@k;:~ptp;ԥ�U��o�><q��c?KC�~��&���J4:��X�<K���L.�Kz�����ϟ�� $�;[w ��}����8�]�ԔM'�CR�-�G1� F��ŵ���"C�C�t��r#v�����"����up\�Xg[�Ł�]�
'H�:1�M �K����E�v
�j ��M������\��gQ�ԊQޜ��-t�EZ�i�!ȁ5�r�Sճ��� 6A.����C��t�$��RA�q"	��t8 i���K��B�:�t��ʂ�ӢN�4w�#5\�Ar�n95���~f���`2m�u�g���Of2y�Η-a�o�Y�`����r�P5>�=�h�ٙ��1�s#�I#�t�G4�N\�3�G�O�Su�`�|��T�Y$�'��t��N4'�j��|V�/�ظ�`����mp$l�N'3�,9|�g�C#�չ'��F�P�F� ŵ�z�D�/�W����Ug��u��6�vV+�L� �>�L����q�)����
+z����VQ� F')wvb��'?f:D��1�弯��`�#T(���<փ��pn�p\W"���
ĕ%���}6�6��DF��q<��  j�`��G(v��I2���@������+�(�1ُ�m��d]p�� �ۧ����5�<L}�E�wI�l�LrC^P9?y3Z*j)Z�\���ě��󵤀�� D��}<�}��b�M)F�� �h)���s�����y��}L�>9�����Qw`�cjŲ&�[݃\y	B��2��ܦx��'{;�"���L�R hnT#��Y�A�F�ĘucX�����>�4�\W��]� !���3oƒ��������r��?��Id�%d�/3��f�:� ���%9�e�ҝ�A|o�Ɂ�l�>(b����M�5k�����3�JZy�҉fc'\ǫG6�"i'�I�?Hf���B���L� ��R�}fX"p�=g�D��Ϭ�tHn�f�Q�άO��3pa
9?#�f���Af/���^~�W��T~K���,;̀V�3��_���KSyɮm?�9�5Y���>0����`��@�O�г�!W&k��y�xO%P��'i��? �H�A�,	�f7�p⡀(�%[f�ˀC̘��5d�e��@�"��X�@��;�yF��eK*�l���N�ÌI�H�f���'7
\��$�X�8s<�aĕʆh�����;8�׀�BT�����;ء%X�GST`*!d(C<{S�]�#:�2�������!d��sjj�k�r������o;�ֱ�u�_�tn�@-gd��~�g=��ɧ�)uʱ��3��?_�� o�����~�.�rʨV�a�n�A	G����`�g��D��/~Ո|�t�0�0����SI�0xi�cE��4�zG�ɥ�5��Bǉf �`IT$����k�Z+zQ���e�hD�^U�6��sl �#�M�6GC�Շq�����A�L����g"�R�	���vgɡE�J�bA��Ì(��l���I�e�{�0 ����WK/RXc��]-5�[w�9��o@�z��3C�H��)��5?kJ4�Ѓ�'g&�nd�r <��T���Dy_� %�@I�L�y�|������P}>���F=j:����w��w�[�ܤV������>��$�%g#�N�A��(�읈��3V�Ŧs:3q�p qϳ|�+t��f8W,9������>3��,�y�Q��DRw� ,��r<n��>8��ơ[�v��� ��n���������M5��Ńpz8R�i�ތ���:�h�.�Xj *��ˤK��	(un��+̼>�9SL�\ Vtj����$�ĈP��W���ք NTmv�x�#��m�*���D�?�>%
SZSD�93�����6t�Vԏ�|v�� ���I�F�Hy��,�����|OUA���ػl���I��?_� `v8��l�tG[jq-��H��} dlp���H�0sSZ@8�2v���~Ɉ�#K��&r�9�Z Ѷ(A���u���R#�fϬ*!�E�Rq[���5�uY!��0�ٳ>�A��"j�~�En`�}�R�F�!~5�κ}��V�j�
6:��zsx�0ӑ�k'"��i�K�|o���l�u�e�=��g-�j���WJ�ұ�tI�K��p���@� ���2��$�k�Y&9��>�yw�3C�(�V�i�Lz�/��qf�9�$�)��p@���40D�b<�5�G���F;2�\L���rYc�>�[<��Dg�AC�����k�_[j���lQ;W3����H�Uf�:��$m�'ń�ƀ�S��H��k��sǤ-~vϹ<��l.��"�qA q��澺B,u�<��S�8�����p�������O�I�� �&�*T9����N�P������n�&�.T�,���99J�Xy��,�O�N-���3��=ſ�$��sv�d��@j9��ġR�Nt����p]9��g�t�I�����Ny��tPōJA�6���/�~t�;Pj6��/Y�R���6��j���s�RNW̋S�bfW���i�w��Z��g�� ्���&%0�̔�`3���)���J +^��#TC:7.!S4�yǈ��P�M�L�Fl IR�@��B��N�I��h�|T�`)�HDnd:>0�c1�Z�y~F)��7:��)��3T��su��Ø���sߐ�#Q�J�����,F��j�R��sd.�B~7��0 �]�=xi��"j����%�@�F�[�?ϰ)A�^��-U��� ��a���r������T�#��Af��D~�s%I>�g�jQ��L%�o�]C' � ���$���!��߲�J�9�́��hC:-��d��=q�l[hv2��#�9�P��(17������5N'z^{B�D#�׿s�qv�ي(q�-番�)L����A!i�#���mF潝u�좃�k�����h��;/g���-�q�L,��"���GEP���9%�Ōٽ&�L"�ǿ����A��6�8�,�"	�s��e����]�a�сh��!�q#2���J�Q�i���UA�$����SS���z�c3��a�� zj؟���G�G���(�f�+���5���/�ZB%�̸�����
\|�:�e��g����S��l)=�C������g6`A|�����.��)���������58 <��e�}2��̻�/��VD1���K8��aJ,$ۂ2� ��4�$�KAJ/r����ˤS�)c��_���]f��)w�_�ֈ-i�(�`�і)���M���a���������/O误x{}����e��M�*�n���jX7�q�A��=H�͐�XyFðŝ�,��P7!���F�3�w��=�,��MG��!k㩂�=�"օs�29�a��e��!�s�e��p��(��K)�{�,![��.,�t:��S�='�#M����Ra��ڒ?p^�Fv�䉨�S���h�5�.r=�f3��ܳ�
3�O� �,��8���\�L����3Ef�a�ޡ�.��Y7�3X������yA��z�)���ArpE�[9����zgݙC��
D�Π��k:�$Ƈ�6Y�YVK����"H�;�/P�Ǚ����[F�3�E#���������u����.�� ?G��N)�|�2$�'�Ao�[@�F�*� ����"��YZb��V���9# %��_f-p�t��?r��D)��`�%��V(�S�\�J���%��.�11�l>����?ȉ��E5��t �w�R���u����!D�88հ,$����td�8eWS`߀;F�p�d��@��?���_��k @t�������f��p���]�EB�U1���#g���@f}4��r1�u��@W�Q�,��F�dȒ@BQ��O.�Z�"��H⫡2e�d�{�rb�Y�������n��20|���Ȳ�R������ �)����9�u�u�p��"��g.�蘐��f=�n%�"Q�N�2�Ø䢳?���t��d�6�dy��3c�����
�Q��[�K5p��t(I��)�Rf_��I�bYEA�%��m
$Kgȓ;F�D���3�;��X�	�E�
�Pf��Yc����Yy��\�<�Y׹�gO7�ZN�w��!ڿ���Ձ��H�)�%��Km?�cN��9C�"2?7���E����}�e���g��:>iB2�
pF��`�����yy�W�����|ճ3��hM�CrD�}�|J��9>ϖ��� ��)Q��̜؞�'�̢��'���;mX�.�G$��h2�`�>O��yr��cU"��u�|����k��7=���9Ѩ��H���_�W��a����u��iS��=d��)��=��?r�E�� 8��!�@���G������Çg�*^_^0ژ� T<���d��s���"^��ԆgN#��mB�2A�� ���@;��������b�]U"�;#�<�2��2C~�(yf\���l��sv��0Vfo-��$�(�|� �E�D���-2���#���8�U�Ty`��р�W|�E�͇'�T����V]�{Ǜ80q��dg(�$���D���`Ht1O��V��5�)"`( ���&�@@�E���֡�zf�󨟁S��$�y��=�
˙5	K(��a5g��;���$9j�)jC+�u�Шy+�����PjK80�1�DŶS�tÙ_���� k��H=��.ʞ^�,����f�]�e�ȸd����D�����j|�L(��<9��k�1,K%d6F�l@d���20&1��l&T�P�!� �*~�(�,���"��$��������a¯��I��Q�<���E�CL���~f��y�g d�y�!�!J���P��#�ۓ��O�My�6�s��$�q����w�����a^wJ���2sX��eI��r�;΀.P�q�N\�g���3�lMv	�H8@�Z�$���W���$��WZ�H���R�V&a�1vk�r���u2�)<�W�����sӟ���Y�`O܁�esǲ�x�P�~�B;e�9�ˠ���l1>�[qG�@.�*�q�B���5��<	8�G����f����� ��R���Oq	9��A^�<��v�>�<��	�j���f���FwFЉx|Չ�0[UթG�=6�T;�W ��h�N�i6�P�2 ������5TwT����V��B�f�Y �u�C��8;�@%�f�0�Y���K~�k�K"[��OA�6`U�s{<�JE1@��i���;�b�P�j�� Ј��R#b�S��8ہ�HA�(�Y�`��Qj82r?� K�A{�`.$18��J��9s�D1�5g=9{�#�	��H��3.ճl��^OD�t����1��l*5��';�y6���4�_"y���n8O���γ'2�d�#[iq4�UaF��}�Kc?
E��/$`��K��0d9��@$����\W�����!Q������N���Ac+/ɂ<�&�I~��:�:gg��pg9�����X�������IZ��FD��|�`�הvO�t�7�<�ML�'�������j��yo̩�Ts$��b"ÿ����'���T���:�K�i+�yiT�`�n���4���`	�|˄����5�H^
r����@�z�;�*�(J���T�>^�[� �s��%�	���L���iA�H������@�k" i�{�ʹ ��ۏ��DZ�˖󭁴R���]��ȓB#k��g����6��r�Jus�\vi Tx03ZG�����*2�3�if�	���X:�Z�J�JXK��ێ� �ۂ��VW<;��a;��L��LX�D���*�
�˲������)<`�y� "�q�}sҜIzj�Q5I�1v9�{���H����}�BH9�� � �y�e�U�`6��/P*jP��� E�q����|�d�̶'q"Ӑ��!�Kh�rq�c+�Z���ܯ�Pye��y=ώ�I��(;sh̖���S�'���{̽?��Y.��RX�O�����%5���3g�匰g c��ٞ���uwxϙ��H�S<�H��u�j��Lp)}D�&�	�ϒȴ�aû{Ҹ�(:�Hd�'☎�$�.�k��L�\��g����T���6Z�Ӯ ���@�қ|:��;KN�� 5�m�s�s�a�0�QQ�$=�sI� ��|�D����MB]"���??	��������h^7���Q��U��8p&I�C[^Cv���r7��,����Z!�<c}t��aq���!E���R/E�T9��8��9�:w^ R
�RPИ��O
����ϟ_" H��0���u������n��})X��';]6M[�.����Is�
X���љ�3��)`[���#�Q'��M1�d�iP����̈��H_<6Y)Ѕ�w֭i��>x��@Xꆭl�-����h;�f���
U'���(r����B���p�&Gq�������g�q��$�-���Ԋ��TwH�@!ѯ 8(C�쌨Q�6���o!K���; ��N���
�?O    IDATTA�1��܃L�,�,}���Q۬�~;�"@^������	�Lu�leC��,n�3C�� '�bfD��j�|�aRFfg��sά7�᳊�3hE���/>c�	��>Q�tbnY)�ڮL��$"��2�y�FS0��h�=��lX�|�u.Y�� �:`�%k�u��z\K-���2�9�3]:��`�I�����١̇z��	�J#�֋#�}-$�*�Lဍ�}E�mk�k�XK�R098P^��;Z����5<ZG�]����'�@�sfb;�3M�B�3�Ԑԛ��xt��9"�%(^���φ�C*���%v���ɠ743���2'>�L�X�[l���ϑ��(#����a(�`-2m]��}1J��uq� p��Q�8v�'�;r%�z�p����9g�e�v�.�20��+�m�{��#s��'��g�hg�+�z���|� �ks ��<�����S;�O��&"��7E+�utt@�߼xt@�ZLe'��K���4�ٱ�aPFV�Q���!�M�P�H�?��EH ��h�Ѣ�F%�D��Z�J���;����YsA���!{�x7l�X�
�o���1�h'�d�G�	��- T=�����^���1��0fV:Pƈ��DpYj8����deK�~���TaTgl����@P�{���l��j�]�R���$j�vŅ�Ϲ$��f�@����t֪<���^c����l1����,�H���4'�e�JfV��mY3����f���;���3�fdq>�S���31��1ډR$y/����Z�OfG��.�=�d'�IK���<?3����k���n��DsN� i�r>j9���k�|�0�I��̢#X� �QA��&�%'#��,�����fv�,Kh������W<;�@Պ�T�jŭ��Օ�U2��~|(�u�nx��/ǎϏ/m��:�Ȥ,�A�m�Pu��U#��V���j�8�J��{�d�y:���|�N]�\�$B>���h���5�]n�T�7�^��D���6c�ǁr7�u����3�o/��U2x#!E���$�(����dA��U�0�:�;F�s/K����3ڈR*��x��1g�
�$�t#$u�+2D���3��/��K  C���y?�Oo��}3>���R+�\�&����B�I�G�4O��t�	3���"������	�����{�XV	��1u����:�@��Ù�sTeakS�ƨPĤt�\���5���x��KoX�ঊ{��v]a�1p�@l0Ku ��=���z;L�XĲm0c3n�RJ�͌�g�.BB��;vh � A�:� ���$qT(NK�Bfv�H��E��"��3a��,9}�ϝ������p��
$)�c��!�a��ZzlX���ؑh,S�.r��E��!0Ë�;�Pzf��Q+���ܳ|�H���"�;>�l�$��!R#���gp%��μ��!D˿a��k�;h�T��i�'/�h�+1"h��M���A����,.(��	�|I0S��:H9��h����d�^�b�T��q�=�;�o��ak "6Z*�m���a��R�T:����_���m,�xQ^ý.���u�Sݰ�������H���[��kQȫ��~4L�C &�M 9�[�j�D�s� �Q�)�����r	�5:��H,bX��G��a��
�jJ�F��K �qg��8�n��{�ވ�D�:|w���7X� Z�>=Aj����Ox(B��#|1�XY��ε ���>^bJ�3`���9�%T�2�9TmX�29;YR9k��atb��7ۆK�s9}c���6����" �/����h����-��l��y�I(	s�SuK�|�pQ��}Rp��f�����
5���ڝp�	�e�R��*pMD�����:��(X�Z^�
V�#ڌ����tQ��O���ǧ�`m�P��˂�"��}�w�7����hxyx=x��&L�_^_���hu A�	\-��H����8�'��@ qXs@�3csnr���(��M:�R����MF�&�C�P3��SP#,�<8��<P��` �o�L�-�4:�4NF8�����i88�V�w�;T,s�O��;,�#�J2׀'IT�u.s8M�(8����$z�*��%�P�0namg� a����Si��}�x��t��s/8�[�3�Gf��xLv�̏�
�T�$���ֳ���'�0fFz�D�䡬��Eؔ7`Caܩ�v����Ed���`��ۆ��۶aQ"c��T��p���^���۲���7���u���'j����X6rW��V6��:s,*�/�����Ύ��]���J��1"�8���l��-�R�N� �B0Z�9��;O���c�Vu�R'���TR���T���h͉�e�bOg;5>�A���������8�[��z۰�o(��-���mG�Lۍ�� ���),���f c�!�x���Z >0�1K�D�&��$@�����0�>��f1�X,=���?~���Q ���G��{op�TU�Q�b�M)p:��!�Ѹ�����a�À�P �TVql�c)���)�!�Ա,j�R�!fDK��<��0xv *V�P���۸ �t:�!Q���g��8����:֡p|\
ֺ�Y�RaU�����7����?^FD����x֖XjQ��]�AX>�]K
���g�Ģ���L��Z�3�%,�P"���\# 	�0yZN��	�#�Q�L�#���>ư�a%`��!7�fxA#<��\��3�7��XLjT�T¸v��A�nx2��O[Ė��cv� E~Y�%i�D?������wp(x�l"'��# d>�Ӆ�(�`�.޵���	��ߍ�~�&��L�(� ��lŝG͕�!��2��`�Y�K0��#�Q�Z[�hd�Ӱ&=���)A�r�R3�
U2�*�J]�����B{x��u4�`��,���{]�m�h7�0+��{��/�c-D{��X�aVYTp����?�/q�g�/������v��m�n�Y����^�t.�a�}�B�ە�j��@)*���}�w^�.r(��[I��/�0�2�s��:�Z�������y<w,DY���F��ۆr۰,�o�Q>ޱ|󄷗WXot��c���C�^�L��l�f�+f������!&�
�.L��퀗�d@�E�Hp<�(�o�$�c<���nst�о{�/�R@vL= >w��q|n"P�V�s5Au*n�:�wnR�P�J�.v7|�;>���se⪌:�*�RP(FmpN
�P�bK�x�;�����!
(�sf�������13�'�@F@�n�J&|>�7q|���m�(��f���{�����x4�գc������Bk���p��tTjr��#*G��{̑d?7f��m��{fut1F1�f�����:E.�Ӳ�8�<��G�Ɯ�?? ��Y��<�#��c���ʀhۥFӹ��D
��琼D�ڢ|����m���Н�3��8aĺ�d#��w'��������: �&O�=�2�
D/��R�eг~�τ�k`9)3�e��������#��A:�zJ�fگ����R*3};���8�(}%��eQ���j�O� ���W�Ӥ�)��>��JADUB��@��������8:p��]Ru)��7Ԫ�f0;�JR3��"N*(KE���*��g���P����?�9�o��k�xi?=������6�(�@�� �63@g,K�zD��^ݰ��tι�f hy��k2"�� ��^
�I��:N4��l�9�=�,`l�t���,ܓ Ј���Z��R�~|Ʒ�������N��~�����>�;��[O�F�N�18E4� ��mJ���l������F�و� ��4Zn����g~?�@K�|*e�_	�% ���� ��}�}����}�>��Tf��t�:�f��`��"x��o��eAǶ+|7nhQ�eF@�5���*�� �f�aR2�D��; ��pH�fî�8(.Sb9 �t�t�C´��!;��
�ެc.d�~w�㏞���o>�������Y:����ت@��V�}�p�MK-pU���������8���Gq4ev[a(12y�"ɨM�O� 8 ��m{g)���@�EEf�y�/k�*��q��3k�g�:�YM��@i��Wg��H�>2f�ր���V�sn� �OΖ;�0yY�}��̓�Qw�B1���\Vf����JrJ��Ez #�����;޽�|:R�����O�k 4��8x]��`39䈀��t��Y�0$�^-F9'�3kp�ш�x� ��B�h�*J��a��`EQ,�e�b�k,B�h���������"�0�9���` ����14G[-��ORqC��G�z��gVk$�UW��sA
��I���=��o"X�������qY�~��Kk؇��CmD׋D���753��6"�Og�G���/�8&�!��)�=�<X�ZJ.΅E=�p���%X��ܶ�.�H[T��_�8�����m[�J��u]p~�}����h���/��Vx�s�uX�H�(��h KY�N�yx�Ir���Au�7%��!�Ęyr)�;��5��#�Z�}0��')U�f����T �A@�S���}?�Zkm[��� %a�BVe� Z)R>{��Rp/���z	,�8@�/�h��Gd"$�E�G��࡞�Ҽ����b��NN ��+�yg���(	x����@�s���ꎧu��Ow��������uœz�a2(9ܝ=���)��}�xZ����x��3�1�y|�,_?|9���N�YX��w�qP �,��CmR̃^fj$&��A��U��jsƐ��)Ϻ`��+��z��@��5B���k�S(�K�K��d	a�C����]Y��@���g�>��o��i/�_�?A2 s*�?0����I�̏;�����d?���DA~f'$��P��Z��_rB�v>or."0r�R�xfu��QF�3D#,�wq�Uu�W�����N"Y������J�Hf��½��P��S���,��UEU"7���;�c��)��Bt,`4��d�1��^(8SJ������Rq��gi�g:�H�*�cG�P�%�b���`X6�������+��
%pW�X��&+>�3��
~�������['�$�����p=��U�h����Z2#�h}}����!T��>�)�{�U�L�I��,���}5�#�"��VL�2���P%;B�����_ +����+�@��uCQ�d��"�ۆ���80�=�7��a�3xA�S=9ˎ�+T���ڡ�D�t�:��1<���x<��|�
���R���0�< �*?�D  ��� �1Ƨv�ϭ�_܊�Z�����p�b�a��� sqܡ�n٠Rpӆ�>�G6�J�T�&h]���<h�M�,,<�uY 4kh�P%1^د2�%j�)m�J}�� 1�
���]�����D�G������7�����U!��hv��/!���V�s����a)�f�x�)Jqt���ò��r�_	��㯬��TǦ��8�{�a�<��+B]i -��L]]���
��y�|��ŵg��E$E6���׳�W䈑�
��/ɫ9�33�k��lG@�� ���X#ۚ�y�Y����ϡ>cƉ�k����&�����k�A1'�(@����x��qi�P#K�&���u�d�Cf�y*��$2�\.[)"�i2�I�d��&����M'x<]/��#2� 2#*n��!�KY�F˝����hh��6 ���w�{"Faȹ����lˌ�xu�K�SN\T��1�M
�Tt�&�����8� ���m�AJrD�/aЗ�#��������HYjt�m89���w����xy{C;v�����1^TMY�
��LM�|��v�tLA�Nܮ{�l��3���z a�B�p��hK�)��B	��T%�#�R;� /��}t������*��+I�����r��ۏ��0���x�q<��/�x������_^�MN���S���*�Հ�:���N�q��wm��B�Z	�u�0��!E�.5��!,��$]+��_�� �f;�_��˰���T�t�� �IyԜ8���1w���)�o���T��Qv|���v��
S�!�x8��(w�ʻź�-���~pg�BW�'d�5�}��R�[\ ð�j�n�
`)�nY��;�����	o7�*����v�YC�~�a6�ᶷ��M�����E]
 QlP�q�R�[��/�?�����m��F��/E'ّ��K�*�!<�V7�eܗ�e�d�g��N�#SLq!'K�uq���D59����$���g��L�kt��C�3#3�3L�4j�҈�o��6�Z������|��������>5�n^G�:��2c�vt��#x�d�gF��iM� I����|��/>�/��~fdqQ��8!�B�&�ɒ���Dp���i�=w�F����y-k-X�KY鈥��F�%�l���,S�A��N��.$��%�� ��@$�$�?�ha	ME�����۟�/E��No�n��u���P'�����p�`�gL0����� �(�M���AC[��y�bp+X4q��h#'��8�F`�m�e 4b:�ss��@��H��1� ���\0g(�u���2uB,�gf��q6�L�FF�Z�������������AD�m+n�O(��>�����{C{}����>���ǗW�S�>roW�J���k0U.K�j�<$��3���D�O�/m���i"p�I�hI��S��~~�@бߍ>��ņ}i}�a6D��[�L)�mkɪ���nGg��V����U+P�H|�]�8�� ]toh���wC���w�&$N���l̃7 ��7h r�|UG1@��j�.+��~��#���G�jٰ9kɽ�h����W��>��G;>c��_�f�wY�q]˯�[��ޖ_�u�ͽֿ�U��l� ���y+X�+~���{�_}�	�>���;^�aR`RQA��ZC�l&�� ���{�_׋�gDe��ɤ�U��^� ��
mxtxh�Y+�y���0Z�v�ԥ���J^�*�ŧ�7Kq��),�{0�Dh�H�Ʌ��L�'�-���#MR_�~=�(/?�Y1Y�����g�B/)Ȭ���@�'�L$�o'��3a��bQ)��יff���g������>�z���d8GGUP������~�h�h}���g�,��sw�R!�5a�6�֮rv�8�W�1��q�Fc�����g��b���n\��6�h����/��E
/$��b+[]���䗴PWt{����N���ě4���*��6�7�ީ,s؉��!)���<k��6��	��;�N�[>M�LH��A�R�B�crvug&]b6�B��,_=�*Z� 6�[��;�5�h������ۺaxǫ�m��2#�T�6���B�������?����5���o��#($w&�SNIu�Q��8r��b��I.X�R^�"Yѹr)�
T!UT0���O3��p����R@���<�ٗ}�����:3 -�'��	m!fD���?ިf�9ॠ�`�]����F�&�C=6�8���n���엙�ʸdV2a�G�@7�����M��O�[Yp+��"xZ*n��e�����:l�����1�?�_��e�}�o������c�>(�Q���z��z{^K���������?����~��ϛB+�J�ϋ��7�f���i�_���_:���y�S۠�Zw�	l��Ӏ��6�nHz��l�paH��𻄃���ۈ�qB�\�3C �J�w��/��r�nD���St�$(�S&�cq��i�z8Ò��ю��c�����"��A�~�V<�>�2��N�;O�<�-�$������ �Ƙ��Y�����N;��\��`Ϡ��*����S^Ug�.��	��x4�)щ��L    IDAT�u����
a=݀�/w74����fo�D7O"����U�Jgt
,��$Б+`�њf�Ѱ
Y����J�QK���P�{,��T2׳�6�5��*ې�n�CaY$��65<�P?ʌD3��2j�֍5]F�R�q��p7�X�+;�䈢*�x�D (�L	"0�=btp,�P�C���L�,����ǀt����`V���k�~��AN3��L��vB�6�R1֊u�p�+VNƺ�>?a�߰>ݰ=?���#޾�o?~��/?����v�(%w��CH�df���c�G�H�=��r��n���8w񪢹�?.��p�a��轷ö��h�QܔQV���&�3�Pj�"uY�n���h)�Z� Ap�-$����(��c�%�E��p#�-�6�	�Dw��l|����o���nx�mX���<YA5���#��nhf�ֽ�����__�������m��n��f� ����`<ׇ����������޿���?�ч���]�V%"ن��w���Oۂ��Oێ������8�M#�,pHF�U`���
!�����R��stgDM{$�*�������c:߄���?3��`���q���$R�f��>i[s����t��g�hs8�5��P���zf4�*86�KPs�� �`��I�@$'~��7��"���~̌?���J8�I�ޭ.���v�g�z�XJ�3�˂��{��"���J�RV��_w?�ec���k#�.S� ���6M�!�!�,L�;x�ON}wcٍ�$���V�0
�p��˰�Ԃ%x,Ђ.:z�i�3 p�����o���R��C"�q
'�%�E��F0�Xɯ��������p<���p�t�4�!��8��L$L.�rE����x沎O�&Nr��D���#fF�Q���Rk��B�N?�'�68z�<0 ������tU�RP�O��m�Z�3������T,�B����Q�(�C�Qˢ2؜�C�D-�̎�lH2ϕqvf�a?Ó��-��萕�&ί�8�����~~� ���R��n��1L�.*��'V:]R����L�Z�낢�A0N��
�0`U�`DwA��YN�/Lq���BT��5qs�$,�q�G�Z�������>�����n�a�|^]��ߺ�h��o�������6���ao�{�׿~{���ǿ������;3�	��I�S��+`� �h��/o�ã������{���������Ꮯ�m��T�ZG/�o���>�7�g����˧O���7��u�w�� \����
��L�n8LH!�E��I���xαO���N�i�0,tI�� 7�<��k�N�2�1���ڎ���?�efg����Yp0f��H�[ ��Ч�B(٪T4y!%�F@|����3��z (g��s�&
��Uaj0Ǥ���=���. �빞������3�e���:��R]q~��3:"s���r3��[��v��I��� QT���ri[6}��]T�s�PK�ԁ�2�,-�� �A�P8Jj(�����)��x�R��(cjw4ql����:��
�Htw47<F�wj�ĉ��1�������\7�f8�2�I6�g}�fd�s�@A�g
+��apM�(DP�*�
М� λ�j���`����g�&�jt�=C���K�9.J=�aA����g��ӜE�(��fjh��U1�7;�\�t8���c��LyzQ��5z����X*g��s�����l�V�m�,
��ؾ� k��(C��^�t�X�0%̝�E0ɡ��ʦ�l�J��2;G��̃xiP3/N�D ���~� I6N���a�ᑺ���ūR�X��� uN�[���b�����W�Ɇ��B��0k��n�8T0:RF�T�"R �xx��L�=������m������|�|�m�n۰A�6p�s��Cp4�ko�c{k?��xi�xi��S�����o:��|m�o|������z&A�ਜ਼}膿|������?�ן�����y^�ϵ�*t���7�!>lOO��ۏ7|�f����O���8���;I~@*��(0(�&���.��N�D��.�ɬ��כ�&�*�I��N�� d����NCA�t�@y	g�7�A���q�AE8gh8a���}���R���2����S�/DcbfKT�y�፳#"3�H�#�׬�]��ǵ"�C3����=|p�N��Bk����	S;I�j��.�d��)E��qN�T�5������K�Z�h��|�$�O� ���ID�p�ߋ�q��{�BX�D�[A��/ۺ2��Y���aÆw��ZĄ���L`�����Ho��Go>�]Ud��R6��i)U�=��S����p9�8H�hKhɋY
�M�D�8�.1��B���h���5��������N������B��^��<G��9�.�R���%�s<tĚ��� O!2惻3PW���I4 �	�h8�c0�{[*�r"�mC��(�0����Q<^^�?8Zò�X��(d(�gG��L��\ ��{]S�e�ބ`�����^����_ � ` h��ǰa)���O�}�C� ��1Pؠ�+u�5��8�
�o{�����sB�����&C��`�+�:���ƈv-�oV8��V<=m����n����Z��``m�s���p��1�j柏�~8�����{����_<��������ʀ |�����XC��X� ��G3����~���_��?��wo˟|�X�������R������7��hZ|��PhX�����o�x�xy�����^����w���10̡��Vb**��{:�e		��C�dxj�pB�؏dq�#`�,���e�<J������=!H}��)`�*����tӐ�d�<b�|�F�&�9�v!4��r��Po]h�g���:4����z2�u����ӡB �Lt�p�3��߳�	q��)�
L%�ZNT�L�Rj/l�1��O�Efppvࠐ�7�O�1�:��#u��?iO�b�8`�$�*�s5-�
�ȶo��mJ G[����H�	�-!4��NO|~��q�nڛY���m�n�1�1mx�	��4~�n}��S4[�ˢ�<���Ͷ��l���
����+��c��,�����)�J���*�������/uo�c[v\�����9�f�RE�(R��F�{l�<�Ƕ!�[� ���x����@��E���7О���0I�D�XdU��̼���wDx�ܗ�X���"y
����=�#b�Z+ĵ��}4كJ$�*@�vĬDb��pɹ ��K�e��[�(	!d�0@e��a�KۘUp I�׼ђ##*�J�,�ob˼�߯�T����<U��oM�I��g�i�z"0���ߛc@�:2�h2��>uQ� *a��d8�K�_G >s�� �7��+�"c�{2���
�2�1��PJC������WPTQ�\�o��aՁ�����֥Ҽm�K�l�Q%7r2�n�Tjm�G�yPN�(5�iB;0�Z1�`� �p��n�Xv�87�WK�^����ry���aȇ�?����"����!<������ر�2X��^��x��>��g?x��_��e��[._�R���s�]����M7RQ�aJxV��
�:�8����w	w+�G���	�c����ˤ [Ha�w��=|�}k�h��jd���$#����l#!GC�g�7�t����6m�t��=�ut	0a�e֫A�s�z�����? Q�]ݰ�ԁm&2@��ؙ��ާ�XĖ�S_��Ͳ� d	��Z��\�{�A�Z8��r����5Lw���[ݪnR+Q���#�|׃���і%k\�sقǄ|�X�ܢ��/��4&��-=��rCZ�o��䁟���o�4�h~e��c	�AQ����H�˪X�����ڪd݌����bj��`���eK�0�Pc�5s��W�߽\��[�r|�x�{�0ݼ]��i�0�xsw`D�zU�n��]$R���!`u����5���8���nc�>>���Q���M���їa/Mq�"��:�D"���z�E84���(�i�qd��'s K�N���e�.�\a�Y?s��
ic4س��m�J��G���(44r5Ӻ����&��iJ|p_�˖�Y���K�?Szm�F>��� �m�݃ U]D�<��趌��eT�
H��Gn��@��9����2:�1 %T�0*��l�7�  �	���*R��ӝ+j+�Z�l��$�2�Ä^������n��&&b%.���$C>Z����^^-���:~�(����������� ������'���e�Q�)~/��K^,�-����௼���L�\�7N:�^1��G��^�⢂ޚ���Ä�ġ��f��pY�jxX:N�C,̪8< P�k�^䶙n���e"6����)nW�IKu��S>�|��K�&�x�!��.v�P!��k
ۿ��eF���_}�b3|}�_��q8���(G��N�����s���+��X��:D\۵A���߳}sg��k�Mǜ{]��^~د97�8	�M�PhӲ��pc���x��&��>�OO���\��	��L-�0�x&��R64��@(%L[@(�}�c#z 90������l����Ì>�/*k[��e��W�W����W�����~�w���~��W�>�
j\����<O��������9��k�����2�{9�x,T�w�mjb��`'�n��@m���l����}S:�p�m��}\o� u0�@�U��E�Kri��� Y.��^ն�p%�"&rJCJ�s�w�8rL�!Q=r&���0MyF��D���]��&g4�q���ʄ��}]aYb��n;�@d`��D"�����(�\p�c�����ö0����C �Q ��.��."2DJ+�5���R@����Y�(s�����5�J8�?���GAE��e��@8�3,�4��ڭaB]B�����l�^���T�����ѡ�c2X3����������j]^v��ǐ�W����
���0�)^�x]g���^[�_4�A� �P��ǫ��U������g���_���njuтS7<�wųU�֝�W��w�<�7�f<?/N|����/��zkb+�o�KkuhKtc\#�$��&�r#�!|s�:qP�Μ����pNC|�/�z@b*�$#��j�2�@���ony�f����&���9|����R!%����YQ&�����Iӽ/�v}��X�(�.X9\^� )\���e�S(MI���D�7%|𶬪[@�MtU(�*�
�"�a[�{����Ǵf�K�]�/!��qGH��YD9%lz�w�+�p���f+-���,2��ǣG���.���X�!k7�]��C^u�]先�4�Q����^�����?�Z�QP���[��?~�����zf���`V�A��2�]�_=����K��w��K���/���Vj�\||7f�8Ga����#��T8��:Ax�?'����б/����i�m*KO�y�r�q4�s�y��Qֲ@�g 8�
�nO�\��z\)��p��)����i�2���̋�̉�5�㨮�W6����	�DP�3��x�����Wd���nG]KA'�
@ŉ���BD�	芈�qb��9i0��_p-
,jvVU13- 4.��mB!C'�2V,*(0T4�f9����@�\"&��
_�8j��D�6�Os�(��� �	�*J�ql�<���n�4�E/�U���b�j����2�/D�� |��7���3�_��~�O�#�afW  �����V�9x����ЏVÇ������y�ʯ�;o?�{w��J`с���ڊ���\�2��7�wo�᣷��\��~���� �(>	�U��:�7p�}16����\�Ū(P��!@,��U2�i^�	`d�5�(�J�R�$
/�X�п뱱e� H�<2���x�:^:��gf�/�r �L�i��'<@�E@v�K����6g��Y��������J�hfc�o_���c�̬��Zyv����pl<Up-1��{w��
�lY�n{
��Q��;_��[�|��ϛ{`<�IΉ�{/�ʴu�siV0�!�f|gPQ�uYz�h��$��>^��r}9����P{�U���c��D���5j�N���|�����y� d0��o��?��w��OT�n~����U���ҿ�rY��r��y�0�ݶz8�ZfrC�!��\ɳ
�'6XV�6�w.�yf���,K)�֎����LWM��_�����
��<p8E�P��KB��{+]۹/p��FY��0���_��a$K=�K�J"���ԝ�6O�&G����<0i�"r9{�Gb����0�����5=Q�����X�j��h�+Ř� I�ښ|��U�F���Tu�A���V��h&�^��p�->�L� B�Mn���2�u��J��-$I{&YVD����!r����C�0su�ݜ��l:��3���g�!xq���f�} ��  �Ğ�?]02���B���ӱ��_o;�j���O�{ �]�������؇�����|�7�ݽ�����VCc_T�bQ,20]�Ї�:�❻�<�s�������#>XW|h�G�5p���;&�\b��(�1jx@T���-64�@K��5Z�2��Ҹj�p'�(�{�� ��q�A1dx���=� ��]�E(#xCf/��w�:I��d��b)�^v"�6H?78t˲ҟ"��#�`�z�� �"�0S�*�xpb���NA�c򖻒V�N����.p�F���|��xp�	G���ekh���;6�A)�J�z��[gKU��Z����X)���G�I������U���(0�TV�q�c����x5@/�r��X�^���G9oW�(�z�y��)jw����s���GP����gpd�������'��?��w?^���9�~�0߾3�f �z/��1����Y��-jv~o�<���rc̭bLcq���s|4���5*�����Ͳ1��+�q�����v�ՆZ�T�m�+��v�HW�d��C֩{��2�G���ј1��w��L-�͟VV�P������Tg�wK%o�Jō�Z�����\�A%`.�䝻�u@��X1�D$�9���������O�k���o��KS-���޾��1�ANG�T�N��6��������N�)�Y��� o�paF-隕:�L�v�i�x{ �ʷ���)���x�<Ϡ�X��i�E�~�.�M����G >��c�x=��ߴ���4�z2��b�e}uRy����/�=���L%b"&5��j@k�4�Zq�ws�;73޺;�gGof�L(�оۀZ)�F���(��WNxƶ	N�b�zR�m�O?�Z��9\��0p��3ʓ��m���&����%`M���{H$1��˝�깗�f�׼5N �=�GFW���I�?x�Y�p0��1�S��!�Q�x%b旵/0��APf����Z�fgk��N�B�(����r������]Q�'�IY[�&��Fm�5���4J	Y����?�o�����������ڗ�u\�8?t9�����ܿZ����_<�|�����/?x��?X�?y��ߞE��YƟ\�|��}_�ޏ��a���J�x��{���w�������������,�]�������?�7�����O�}~�� .b�0����,�,]�LUH͑�,n�*`�͓�8�ZJW����J�T+�S�<�͊��È�DM��W��2�Bji���;2��1��� 	�"�s�6B.T&���Dw�M�B�
(h��A�#�%x)�qs%��S���y`*��794���=)P�UJ+ ����e���6���x�KN�c`:D����~��o����O���/�R<�����H�C��x��/&�a>T�(Е0d��	+N)��{{_ ��Au�x1h�q�B��hjz��g뤔X����	ALp��Dw
    IDAT�Lfi�)��iJ�*Tցc�p�UD���sq����3~��GWK���>_-���a�2��9��<��y�?z���>�������f��{7���n��W�m*�tU:�v7�s�����������G�������K��.8�p���Ť���?�o�ش���K6cS������[,N2QŪ��յ�N'�M�;1��B�g�D�aʛ� +�a��Ă?� B���^�/���5N��tR�����a�lX�����`Z@V<�0����E4�]�=i,�!J00P,�ɴV�&iL�"6R9�j����K��@b�NG@u���5��PB��s.&r���r�8�� RB�6�� G�J��Vj�����c�u�����Ѝp������zF�T��G��so�u��]��2������u�?����]�a��D  �����~|�:����_�ؑ�S��G C�a�~�U?�C��.�����������a��s+B�Y��(Lu	,�r
1UB4�A���zrZٲwd��~���k�P�膄�x�d��ZLa��i�f XA� �0���3)������6rh�"��r��?��\UD�e��l�T��@��qD񒀺���L�2f*�����m�[�N�z_�EiJ�8�Kk�#X�-0W����5|�?|f�� ��$�U���E�ޭ��P/i�1�F@�Pj��.+���[^��p�v�#j���.�r87�����0�W9��dc��	GQA��`�`n:`j�/}�Aļ�9��l��ެ��'2��H?7�k������~rq�>�,<x8��Z��\����T�{�0�����W~�훻�n�gs�E�&]�v���1���ۛ�ӌw�xw�[������{u��V��\���1�@���k�+��m���]X��R��̀-� �hA>+�i�=�a@�7��B�A�����> 	v�mM�θw�	��A���m��p�Kf��$�TB�c�\�� 
�4Pq��B#���qp_^6�!�����ϟ}�pΐv�[�`�&R�x�]"��=Uyg6�̇!�_⹏��b.�L�݇t��v��B�P�JE-ś��s�:�l�."�E�qU;�轘݋�+1z�=�F�;�'�o���~u��_ss���A��@!<�����������������c����%�<t�G�>�y�����_�ݳw��y��.K��\�ɽ��@�����J��t���A8�l��(x�D`�˒m��]�"B�I�������3Ѭ��@��0�cY�|����{��l1��?�/ˀ0��7��Tl�Ya�b�	�P��UJ�
�܃eU��0�g��"�fP�8�0M����P �q�Y 6Rj�}���x߫O�3���o}|Q��H��ͷ���%Ki�Ba�:^�,�R!��N�s��+�+�E����f�[Wr��2��u�!8����4rX\��;����q�{8���"w�6�-��ɛ�������d�4xp?�W�]>z���?�x����y��7n_~����+�z��DS#�b&�a�
0w��p��
���f�����ꂋ�O���A.��U�;A"&n�Z+@�� ���-`|�	�Nl^�+��4�AJ<�τ�C�!F@��{+T����MO��;H�]���p��_(Ho�dD�9c�$��+�LΤ�����R��w�sDx�$�7J��֛`#��"���,���z�9[:H�5Ɏ�le0�1��ERDRW\P*A��k���[�Vb�vO�%6g�<�(\��ò��ї���E䴊�&?�)𱩾rF���~��?�؟�{��u]V���y+��{�5�׎�������\��׃��!��S$�ଊ�{0�}u��S���2����xst�c����Q#ߤ�썗�k�{��cH�<���;�A��{�W1�2�xWS7J��71��p��Q@��k��_exM�M�6����!�EN.��0|�y�	��MV�[@�P�oiԧ}n��Z�yUܖܤɯ5��@����g�Fh(;1urE�)3=08�(�U�[���f誖�uY�3=��z�
T�z��+���T![[K��R0��.WP)3�%����F��Ӏ���gR#� dH�	:L&#oX#]�1��n�	�>��3��8�g�e|UD��=�=��IY��u����u9�c_L2��W���.=����ڿ��e���/���q��׎����z��\۱1c ����2@�@�q,_�=�vj���?�?��G�XV�5��a�A¿|&�F�)�@h����g���}P������yX8��N��SXx��H�sӃG�j#�	�^�>�c#��HBQz�*�X��i�ȵàd'��8j�6����b�xg����?�#o���I4�{`���N�̓��]�|�$�8KJ�^҈��:X��/���?�|aX�n���e5��k�D5���c6� �z^�~Z�r�t29-*�}�_���K~�S�k�-�o��ߴ����E�m{��=��ӄ?������{�(^ �W��0}���y��!���gw�xS5��Ek�0���7bWkH��?�����}��Mz���2LQc�g������u+t
t��g�G�� ��֝Q�N..�d���#�0a�P���V5�v\��T��w]��@�;�ɕF��a
q� B6�z�<QJR�$[O_w�\p��������R*�d�����(�pz��fQ��lS�:��45���������n_#�Q�'�uX�T·���
j�p��V��+B�VՌ+6�2��� �3��M�)	���)EdA.�
4\N"� �`+��8Mws�;-��D�]�9v_�>���y?������x���\?^����k�.����~�k�×~����{�Ǜ/�e��P,e��zs���81s���x6U|in���	>�q�vtqXm�ƅ6�"2�"u�g���!X9$qA�s�G�nԛ6Q�k�scV��0Jqƹ3�}#sd�ĳ]W%0�T�$П�KC^��wc�"|Tab!�;h�]3�T�
���B׻�y�Ȏ��0uE>L3#��$^���yʈ���mPl.yq%��j�z�"���\���59� i�z@�T�=������R^&Gc�
rs�K_�����!�W��Aԇ���/a���w \������^�>�δ���7m��'�=��'Q�O[��מ��kT�@@�u��s]��C�W�rs��]�!%Rwq� �`򮂞�+$������"?T���[¥R�є@6 ����+�u�[�5��+��i��Vú�^���6�pn�e��m]O�V*P	�<�;��(��k�0zG��R�ld=Q�@�������&k*�<Q5�/5U��_�TF!�4��![U�h�������U �v�����j��aj�z�ڑ�����ؑ�<A*!J���G�`�|3�Δu+�{�H�Q�yͧ:뷶	GD$&�K\j�6�\p;���nG�*N�3���\�Z�T����0��=��}��O:�р7-(���q}q���q��S�˫.�_�-u�\��b�%7�̵`���J��K����rH��'�B�\�}�ͳ�
a�*K�����92��<3�5x{�u/TPK��|A�kd�J���z0X)�O�d'��=��D����NG)1*����͘js�Ϧ���g_+�"�wX�
�5Von�Pb����'��D�X��O��&�
t#�ʕv�h_�������,�3˒Z|+�M�γ@��l��>�)V	w��t�����0Ā��_����gՏV�G5;a��f ��$ܾ�N�K�M���.\g\o
�܌O||���������G�G��՜�(�����D��^C0̰��CW]Tlj�.�ܔ��0e�#8�d��!�e�j
u6�~O�(8)��)!�-%�)� نr��,�Cq`G��F"&�r<1BD	P8/$�����}��ʹm�@�_s�(���6�qn\��=4���e��9�{.��b�5�ֆZ
$1���v��$]�����e���3U}�8�&�g��o}|� aw�:���� |i��[s+_�Z=VOD`����4��b����F1��"?��x]>�g�ǦN�ׯ�FoR��'����6�>��R�`m�=q{s�yn�T���*��̥5�ɐ��q��a�~Rf�yO���@���@�b����|�������^^.k9u�E���3�2л�^܏#zē�Z�����n���������$��y���m�6�3�Ꮙ��o�l܌�	�`SJ�,‧C;L�o����z���\6��4���Z#H-��&���g̵ab�s^�U�?7o�ZK��bqH�`�is�vq�*��|!͓$ �}p��BH�8@����>	 tɑ�Ţ�J�_J�4v�@# �����n��`_|9W�Wnt\I"��tVYM/
\D����pi�G�E2�R�2�kύk��S��z>�,��7��������_�xӼ}�o�'f�U���`1;p�V*5b�̬�|F�4 �)¶���L϶�s#�b��+S����္5R�gx����P3s��QQ/�E��Iۃ5�2��1&�B`O ��x��5�^^�D���-%�6�:�7|v����q��}Q�M������Q �1�G��F�`fUũ��������6��|f|�/2 �} �/�Z�u�گ�v ��pX�K�4�À.#�ޙofF�3����"�k��)��4|��e�����~��HA,@���0M͛>0�P*n�ck�����~8�L�Q��aj���]��>.]��D�������E�4�b�y�=>��<��>Z;>��z-��52S�ұ�*�5��Y�(+>�ޚxVgT.V6,��*�}#�K 	�������Q�����y6r(����WO"o/[������2:7*�Q����w*��c��*��ˇ��X+�bf�̄�S!*c���ݜd��ⲱ�K�#�b�"`���6��4.�ŉJ��n��f�F<�w�v<�7��8�r���Ί�7���>n�q��rf�{�����3��X�6���ـZ��S�¬f��+v=~f����)������7�{�?��3�������6�l�KW�!zGd���8xd�� �=Qa�ҕ����+�%K���<��;��Z��� p��i'�����Q�(�C�w���dk;�U8Y6�Pt��_��2Ϲ��w$����D�dp�l�mN��A;y=�̆~= ���R���(;����;��"rZ���z��ُ�c<��� ox�����~�8�G�>\��e�{'�׽v�J,���I���>�;�%l��/;�+�ھ�m�$'�3����a�&LӄV*fb�̘o����*������'*���Q�!����O��<��<�5n:�E��Q��a�_֣�֩�V�XD1����D�v��޺��an0(N��q�*�}�R�L�"8��<�����P+�U¡�4�����l%+�圞5u��3����az�}�"��' �3��t����g�n)��P�`�7δ�yM��}��Q�6�|�43u8��h�b��E�9��%�O�7T+	dd��n�C�j��$�
1i�f �6h|t�N��;�����8����^)�.6�Q�؂�'�t8�����j�T��2�W�����>O	TO�����7������<�iH�S]�V1;�J���L��k-�D���e��Ҩ�f��5���V���g�VД�is��x��Y���m��@�P�ȑ`c�`xIP��.ύ��++)쮀p�>�����p��T�x��������Ϥ�Oն�ă�Cƅ'�č�@��(�]7���{N^Ja���u�9F��~��Cvƾw|&� ���wZ)�>Nӯ��M���E)"k31'������ �-wV���8��O ��ؖ�(%1�|�$]iF�+�q?�ѐ��[A;Ψ�	F�ː0�P���u]�裚=-\�|��O[P��H_��VQ}\T���Ϧ��ځ
W#�axgQH@ɶtoVR�팛���b].��0���Pah0��ւ�y��a���pl7���a�[GW*a��Ut���:������̥b���>�|�&�ܩ��9T"̭bnSm "��{vbQ�Uou�+N2���۶"G���Fw�g�>�mu�US\3�778�ֺ7�j�n+!v'�eF��\��� �	�����i�J������{C��w�����^*Z�К�JM�.ұ��]��i¡Nt��20��ZUЃ�]�k�T����7! ���\�F5^#9�Y�y�vS�U3�!c�.��m��0˂k%
�V
��w�y�G->�#9�< _�G�D%�-ظ�\��JE+���
����aU�c=B���xk�Pa���v%�8������bUW���'��(%�(s�Qcae�� �QXz9�L��$DZ�6�<���]�u�^������S�g�W|Q@�N�@�o����a>�6�k&5̥c(��VL�`b�7_D�H��^Fz�<�S����+�X����u�m�ZZ��G1\��ۂYZ�t<�L����c��2�)�:����]���~��<~�@`{���n��2�ڪQ�k+(����}@�`,aR	u*��FWb��
�X}�?��y*8Lѥ���L��Zq�*n��i&�@�O.���@�5�?[�4݈�DfD8±n�3�R���/g���1p��a�x�}�Q硸�yN�sX��W$Ʃ��V�VѦ��O9^^��|�z���m#O�2�ƅ�,� �����$a���6{�kY�����@&�r��8�X� ��q�h���,KȰ�l.m��	�R��rhՃ��O���t�SV��?�����F��?-X�ڣ�d�N�kS�BLL���&������P�Zr�{4�&�< � �J����>ܐ�<�kť�y@>GKvjT�'�W(Ӟ=����
�pU�ٽ� � ��m����I�Q"YdG�Y݅�^��9$�5H�ʄ��O������ssϱ�$�c��u�?c���d�_� ��I໵�V�v���ZE�GbaP����B�ŭg�0�[7Ut5�5s߄]�Ds�t�mDi˴ �;,�c	�h8J�۠��}q,�Q��Z]M9"{LFi0�	��ek}��8��b���<������ģ`�iN�.�<d�Ҧ�N܈ �@_�R�
��=�%;Ն����i¡VZ��4�v�17�����hY�QEc�]�p;Qّ�>
_y Lމ��݇�n�%��2g�	w73�7ĠJkS�����g������'�8�o�g�Up�����q���;�Q�#臘���L���Ш�����M���D-�{�,6B`*ټ��sD��`/sH��[�1��{9R٠'z0���1���;�VA��Jz1��*t����cǐ�3���ړ�,��M�����?�������)?��y��㸾���b+	��{'
�٘���Qڝe�)!��Ί#��\�����9ge�˺�"Ⲿ����K���k4v�KM3/���J�3����y�t8�L����pu�82�T�$r�1|4��R�"|^1�@
����c�͆J�O��P�Sg�-��Z"Ȉ�&�$1{6��Tm�}��}��vbkv������H��F��s�_;L�M)��V��6���닓8�@�hw�0�\�Mv���R��)7Ɂ�ylONߐ����8fWk�&T�Hc8��p6����R�P�H[EN!|J|Z��E9~�@`���j8�U���<|�R�J+Su=��\��"��tSm�k3���F��P���jq��v�u�����'���ű�T�3���1�Á��-�D�J�?
Z4?�=Lx���g�湡�
ew�;�+�g<\θ� ���������iV3\Dq���
�r��؛A��c`���w�tu�o�����@:{�p �3��������9��:��$�c"�,,�Dn���;    IDAT�3r@2ǎ�lV���t���>b���&L�yp���l��:�
O
�E��fbf�V�O�mΩ�~҆��������?5Hxü����������a�0���eh��A͘�
��C�Iw]]�������h��� �\!T\F��s�x\�GGW'y{���B��xC��SBV��;�ǰ���m��7�w�����Hz#����r�"ˁ�B<[�2�]�$�z���0����� 8�0"gw�u���� �Jd����qťpJ"`����?Uo#-��3v�"�� �7�}�0�7\jM�0��VR��c��@Y�1�,/@!����cB[�����6�U�R�A[����>`D=�9NnGL��I���*X�K=�'��L�*tZ����~�"�) >��<�F�.���2�_ƘE�Z���s�SHA*��0S�� [J΢f��a�F �]���jX~FY��탻|L�e���� `Ѱegڄ�i��4��&P!���:�,�?��x�`��N�5':�6�@��Ľ8�3;�o9�0����v��cq�h@C�����@�v|,�sy���N.4D�K�vπ�3>I_���O���i0�ݏY�5"YԚ��+ZŚJ���Ԋ�U�~�E�� �R�Ԉ�f����r�~��y< �?�����G����?����ӧ�/�q�F�U�S}���V��V#X!� JJe���~�eD�ھ�#X�A�K�]��c�;���JcGs�RC�
���o��gÏ������|�4Q�i�٦�����x9YyW��[!єK�F�T�6$�{Ű��`��M��P)l�a����/�H����@�+d��}gH�p��?Z{��� ���I�/U	�M�;��[�Ծ1��Xܪ�⋁Hl�nk���P0�H<�����>�-	�ְ���̶:*^o�⨁G�ٯ:ҝ q���k��|�����X��Fq<��Z*�¥9t��>���Z����4x���f�]�aQ=�e��junT��X#BㆩTL\a�#���	F�s8��0���Z�d
!�rA7�}_q��8������g�#��[�ovS�#�0�0A13�&LR��������:�xYp�,X� ��M����L>JG&f*8P��4Jš48|R!@ ��k��pQr�1,�Y�aKr^��#���T��^8��-ʐ1�,겁8 ��z�4t�	�;{��� M�#�� dXUqс�$�T_�EtS� ;Zaj�@Fl'5�V�AK�-�"Fks=L�L��]�-U����7�6��������1 �����?e~.�S��Z�����0��*KRE��V.��̤�.�}x}?��g�E�U��u���4[y3��n���i[�^�.t�%�"�G���Ͱ����ӄv<���4�j����DB�N��eO�= @��<���>W�Qb? ��bΝ��k���G���r�m���^�0WД@>�LTƩ�񣵏?U���v�_:���� �}������R���$��#��8�����@�+]0Oi�mNKY"���w�"��u82��V5щ+�i�4O�R�{��bE���A�U��Zk�:n�QՋ}���A��?)�^d�0{\��tz��ӹ&O��V�*
�1��ЎR�2�z���l�Z�M��E��HH���͋�֔g�nnf3�ZQ(����C���WC�u�U<�X����#^SE�\�/�5Sq���p,w��6�T�46� ����[</�#9ov���vq��چV���X��.[q�c�^�5@�O ����A�ۘ�V8LR�K״MZK���/6$�6�s��Xҫ޻{^�y0�5T��ZP*��dɆ�j��M(t0��fZTm�	c�g9�f����S �u���΢�j�]�j]�6Wc&+ຩ|����:ҳ�q6éw,�C(����k�8r �k{��R�B]5�67	~�=6��C�"(]P� �F��P�����J�����8(I�-'��$��s�{�yR���V±2<R6�A��W&�Mq됸v
��Q@��@U��㴎��!��T7������[8	���ͩ�o�鶖R7��� Z���RpG7TA`\L��t��UF�@�0��II��`�uJþ�[�6�q�"�NN�b����Uts	�7�pf(�����Ds��S��"".�������<�0����iU{uZ�r���حc�Ve2c*��F�&Cm�B�{���Йa�@@�bX�3����n�@���2E��z6�	f&��7�]�Q�������Գ��UP�0���z��sVڌX8
��ZC�P��R����CTd�)��V����z�B�9�1���C�W�!7����:�N���"��A� �9�� ��:����m�`�g�dC`SĪ���>z�(hw�s����*��]��0M5�	���6թ̪�53ۜ�^��v�i�O������h�]�ޤ��d�jv��PC=36P1."�@�6�)��Y-X�p2�f!5>���%�|�PW�</��$w��z�L��W'��10E�}���Ć��.����Қ7�	^XEp��鲃<9�ӌ��0�����P�dW�:�����+~d���0$��m���?flk�u���1��� � ������"��8 ��7�R߻9nZ�M�������&ܠ����y�4�؍R�)�˖w���;���<_�D7Wb�e�)�Qj�|8���fp3��Aщf˚��[LLs)�7�ݮ��E��dm��%0|�"5G���բ�?w]>^:^�{X:�����<fF	2RZF��3�
aD����L\Pjj��5�n��o���`�0�	����)���D��_|���N�
���8���]�|A�Kf�5,�JW���=�)�tD�,�C�i OtU��36d�6G~����;�u���]����x��V���a�\c��(��.�B�W7�Ɩ�䪇b��tX�^r�s[s#Xd�[���Ό��+���B�ij��I���c� ,y9f�?^/�����/�<�����:�U�$3�(�"f����LL��JҴ�eBm�eХ`1�E;���iF!F_V����BPv������e�To����Dws�B�Ιf0��bՁ�C����S�t8��3���K"�&�����㋵>��c���ye���N~�$��b5Ϗ�L�>� 7�ɛ��9�Cֵ��U�_���Û= >3 ��Wx�~�����pWkm�ܴ,��f�`<
���}\�m��0�k)4�����e�)62�4�'�Ma7���l'?%��	77GL� aU�P�X�-j�^wE0щ���Ơ��;551]��Ӑ�_�(��i���9^���Y�E�ᡏ�j��R��t ���*n�@{H}rzq����b��*��A� �2�b�(�L�7�J>3�4�`	;��سn�
ii��R\V: �u�$籢��X+�W	�_`�Hv���c*�̸-8-��ןc��}	x1��D�k�c�1�G P��pH�T�\)�{5��I�:hJ�v2mn��%ό�-�k������Yn���)+
�~�\3�I4i��
)�쫻���\����T�4�qk�G�C���Sr�����0�~���Ѐh(d]�Ϊ�Cm;�B* '��J1xB���m�p(����.�+n���� 
�3PG��Լ-x�w���@���ǭc� g� ]$d���<;apj8L���$�z9#�[=��94Hy��c 
s!�6�<�9��__C\Qe㫟�ԕ9���ur�E�7D�{ �x  ?�@ �s� JᦑF�NӢn�r���z7�`*Sd�a�h.D�M%�2��l{�NF�Y��{��/H��`䓩53��e\i'��E����s-4Q�g2Ժ�ς�"/BoZ`�-�;\w�f/W��I����ǗSyyY��R�\�g��ئ!o����f���b�Ų!�e�����e�7�ps�������Ep��(�N�����+.�åL��	G*�@!!�[����O޻6IrW���oDdVVu ER|��HԎ�����������hg�$@��*3�^w���]lpe3h M����z��ƽ��ϣl�icҕ��T��j/�48a+҉��Xc�FE`�� �[J�&"�2|��BZآ��r�, �,��f��Ĵ����w�%d l��3��@�����a�x�D�PL���y^@tr��#� ���'�}hh=��|j�7��J$CRa�;��,����5�+`)�TF�I��4af���i�-i�i���� }��0M�ڌ;�Rj�0���S6c�k� ruG�AJt��j1&f�h������D/��Y��%� �����=���27C�p$�?���r$M��j��d����:��u���{�e) �U ��1�@~9���ò�7�LP��4W�|��svS�0Ew�4��do�`���������7@u[jK�}6�4!���D�<G�U�l�6��-�5UM�������`�gH�m���  ����� �<�ܟ������i���u��e�y97qb�f���*�s<Cn�A���!>��1{`B�9.�hPj�.XGXM�H� ���b�c�)���)	�ut<���&'�	��"��1"L���,yJ�a$D������㥬�x}�����؈K-a�:䝓����_%g��;q��˭Z�����+FΠLO���1��Q� ��;��Ydt�(�o>G�-��-F�?��A�#XU9G��\$=T��2����<���_���n�w�l������O��-���N�	���/f��A�4��R��<?�Y�6�a�q���X�I��6a,�@��N2�b�0�Z�4�R��]�a
�1qs@T�}��kȅ�}!�$�&歈�,f#砜 ņWi˨�o��n�!��k(�oߤ�[c�U��K_��P�������W�뿨�C o�< �� �M����ji�/��r��Sd�`�A��d�&��~�q�E���		y��;�oe~����-�� D���摜�ؼU��-�:�	�2N);b�^I�=�.7�45�3�O�M��`�"�yE~+��oB���m��B g5���=w�7���U��6d��g��e1�q�[v��0c!`aG�0��8p6��	W��h��<���Z��ŵ�bDh�I�:p���l�&�mf�L�1��r�^w��y��E��ƚ-���x��1��Q�+%����
�����Sr��&�z�PHrB��o�;�P�1v�b#�-�6�Ő�'0( �N�)0��1<aO*����A`���c��%_����
�KB�N��l�֭��G^�EE�������7���������_���Xt;^�`pd�á�/��t�4�ӝz'K��8�M��,�R�i�������2O�D��=ל�C���)�}T��C<��@S���ڡ}�=%��o�MD�*[�7�J�I�<չ���� #㵉�(��(s�0�w�*f�
���l�^�c�q5�3�
�G�
�On���%�/��ׇ���x8���&w9ɫ�/B���H� m�nU�E/����ts���d���o�֡RѬ�SB����$pq�
vH4l!��֭�[ռ��1HD1fsܻ#����?�M�y��|�q�2��O
��;��+��<��˙͵��q����[ܘKx�O�n�	�W7���u]�Z����&?�p�!�g��B�]	��N}�"-RP��'AH�8�r����û�sM�b̓�8ͮ�c+OE��%�qKb��Cf���DQ.EP��2^�Hv��@"Z�}쭉o�2�l'n'��0��s���иa"�Pں��f� ��@v�u%Yp�&>,�y��L/�qҡ���"�v�����|=�����I�?;����<=̓,�L��"�W��ݰL�׿���K\���Xi�}�GED81�c�K��0\j/�o$�B��.�&k�JG(7�>F�>���#Ƽ-�yDø�`W5T�B�K�U(�H2�3D��NT7��Q�VŽ���:���ٿ����c��j����s����#br�m�@@,���z�4M��5�y����w#�~���`���u�o���&u�.�ݶ���k-�AM1t`XC�4A 1"J�b,®a�a�f�&|��d��៝H/���߄|��[�n��q�m��9?� <��{3.����?����?���u����f$8��3m���FqX�1.�pV��aX�ѝp���C����15���/�z�8�+{�;�" i�5�`�ؔtl���t���9��1�1@5t�q��~�=+H#T��$u?�&�%�S���X������(�)v�u
!d�ū�}�b9��yC�k?F��QH�)����ģ' �?
�ͲQ9��
�!�^�'�/|Q�(���AS]A��,��&�i�x���M������|=�� �'cO,��9��w������O��1]!t""��L-�iҰ7li�㙍"����wf!�I��� �8�s�����0�2��mCV�O�.�0~ L��1�hj(��*�a�4�L�&@%�@ZÐt]a��#�f�g
2���o�NdnB8����al��j���
_��Pa��?O��(��wU  ��$�I� J�g_�,G��g��f@p��@���/�Mq ��U_��=/
�ԭni�5��)��
kL�]M�9;4f���$���5��9ڬ{&p�� ���|��??`���B�D�6�+�\���ٓ��t����V�����!m~yhԘ��@c`p��ā�J��Ư�x8�8f���x<�A�
��x�$3^�q?/���Wo��jPv�RNt���Yg�鈧nIT�ҟ*u�(�(g�%���^܋��3�!~rZ�n�m������-?�$2mh��6"����	��q�){DZD����0uDTQ��]<e���	���}w4��D���� �mdW ����r L���D/ �C��up���d b���a�ߋ�78�������mP������������CE�f�՘]ȥEjU�W:�ʀ(gU�A����Ff���3MG�DCW��W��O�=B,�sʐ�(��\~�� ̎��:G��,���f@D�6�eg�Ҡ}��Fs��a�C��B��净�$G�� ���HwD�ֻ�ù�,.��j�ܯ>>��] ���X(J~r���Ud)�>�w6D�pOl��ե�bx	�Pm4����Y�4����(w�����`	��g�r-�dO�S۠��%
�֡��h-��?̬LN�f���������69�
���1�㲛��|,��Y10��{�Z�������/����$aع}�g�aj �� ��6д[���k�<�W\�!d����jx���� ��W\�j�����?9��`By�;V�a�H�<:eJ�3�Ʒd���E
�5�ؽ�O2�x�2ߜ�vrK��A(�$W�\�$2���A ى3�2i0�,T��(��`��AҶ��c@����u��3"�5>q�Kn�p��F��A���1������Ek�e͑��=��x�xW��2M��/_�<.������w������1���{~�þ����u�߽>�8A��1Q����!dAk�%$v�@ig����^c�����x_qo�<�g,4�x��[a��Z���*!l ����ϛ�j�0�LDV]�k�)2s��t�0:�Wx�y"h�ԡ$mu������%H����a0�i�_av;﯏zo���l�~QlQŕ�uT�b��a�z������$;2�%�x����+��|��� qB�؉��CY���M'�DJ�@�۽͑�iTtՁ�*��:�,Jb0K8�c���A&�Qq?�~�w7�t�M��}
��m!�|<pkSz�������������ގ��_<�N_��|""s�Xkg�G�x��B�,,>�F��U18�X�ݨ    IDAT [&�;��B�ό�X���~:@3���4��3/��9%Č�"�h�Cz�Mͩ�& PC���v�<�=T/���$D���>��D$�9��CܨN��u���}ƩIl�{�sƚ�H����2����D���j�9�6�E�Bf�Þ���;[��<�
�9F1���B�Ibo(��Y&<�L���|Ɵ�<�|V�N�e�Y��SkXGy����ئW_�ׯq��磪.�s$��%�z����/rv�l(zo<
�D@s��g�"�m��o�bt���%n~���:�T�X���A�
C��p6l�&D�.�X��_��&��ct�ƌ�,S�$�ر004Gn��Q�q���k��S5�h>���|�27�����ܽ�  ���}p  �������#� ��R�?�IB8��fh�A)�mz1`�$N���(V�2�:��;71��i�0�HɃ"%Y�u\G��;�	��x��0uO)��4��ﳲv�b$F�m&>�_8�W�~ƚE��B�y��)lH��yP�cW �n���Ǜ������\ǯ���?=,w/Z��"�KIaM��"����kǺ\�0��[�N0FW\�W\��K�+�p��;�tw�	
å?a�x?'��$6�X���pK����r��>Yd���:QVHH�v~�\;o�C� 	�����j.�Aa��V�(u�[7�����>AZ�s����zL�/}E_tt�>��!�=�� ���e3�9�(�zm��rY�1� N�I�����O�w��:��"�2�%�8����@�y��|z:�O��B� �"U��G�ξǋ�x.�M�Y#���b�k��;����X��i@A�d��G����Rk���
�k�|S��@��$XZ������ׇ�I
e�sb(H���s�����FX�BU�2�-��ʌ�������| �Amv�^��"<��xe2]^y߻��ź�K	����}p �Q�)��$�퐉eRSCI�����z�I�bbN�5R�.� �����ݲY�}P\�|�QL(`��{`7�Qw�}�|�B��&�����R'$�0+��K�NL����0���?��Dt[|�H@]�4xn �����p��������>]��v����x\N�2�2p��I�Cc�A>� 
��rw �	k�x|4:�ׁK_�O��I�bY��{�X�6�M(���3�c$t��g$ �SZ�D�}<7��
��U�0�?Fn�\s���9��]:�s
D '�eJ�#���WaC�sc��a���\��U�1�1��`xk���܁���%�V����b�n;�o��X"l�j0�c4OQ+E�銾�!� ����'W��S#6&�돜�NL�����f�w?�8��tx�x��?勞��>������D��ӡTP���+ ���Q��O��7Nymt�Qj9\V��;�$�P�
���Մaڱz�1B�:)P�ƌ"m;�U1��}�r�"�A}�*�fPq88��Q�1קDvK�󆍛��I��ŪY��9�v���B����������S�@dn7�1eOҘ�"�<���'�����M�������V��'1�d	}��G�I�r�١l��"e�WLD��-D�nl\��[�愿�:��"��M����L�6{i�T��g�r��B��$����������S��Ǳ~���{wտ����)>�����<Ϯ̽�H�XH=���c��p%��	�MbM23�XẆ�/���x�^�=�`sB7�5�����b�5:�6�� ��X�H:F X� ������0(�ie�^�F�`���=b�Ÿ/"@%�p4�<���)ˊd0���C�i�%�{6z<&`�I5� �@i������{�����݅�bw`&�D�Ʉ�M�4X��rd!��͠��0l���g�M�6�0-AX,㗡 Ը��A-㜗�$�|��_�ry�,fc6��8��)�_�B�j�Nľ�E`���F؂����%��\g�#�5�f�e��h�LZ6r}���i�1��nZ(�Uy�A��)��963�e�0NTiY=rGyg�W��ůq"X0�6x��Hн"�A�`������U,y�!���ut���j  `�67Hk�1�}l�d�hndY���B����sMж�<���2��͚Om�t�9E~������R���b�����e�1��a��D J��!P`�"���W	}��oK){4��N��b���/]KZ3��r�H�����B���G޽S}�^��g����u���͗���ay��a>�������I@d=�BҎ�P�z�ծ�����p�,i�̠Ƞ�L��,|�&\F�UW�E���0�1`�t�j
��AC�Xm� h��'kɆ����z�N��	Nɸ6�A��
8�Q@��+�HX��I�#��X�Kb��FH<���`~� �APE�2P��b�#��KL��>b��&�D!x΀��.z�wK�Ǵ�f���x�6'�һ ��ָ� ����� ` h�@����������������}�p;�����g�^n^{֖Ia�� �-�RRXf������V�4�T�Ɛ�뵤���#Ȩh�0gkJ�:#]� N�u��D(�##0� \-����8MhSx�l�ӄ㪣�埉FmUqc�|	�Jr���{�9�)!����6�����6��3"�a��������'�<��eM�e�y��:υ'n��~�,Ǔ�re��)Qڌ�V����X�������Td��4� ��Fe���2���̧��2�\��8�)I����y�V%U���%���1���Gw�_|�ׇ���&B+���?����n����<����2Ժ��B�&��<a�焅��3N�0cn�6�n�p�g,���(��˂��x80�V�L�i��w��ە���94�;Կ=UGvI��n)e��2�����;_+�ul�����c+Zu
;�nɰ��~6��9T�+�����8"�@~!�,��~�$p�p��aaP���M�8�]q��*�y&I9�:n�5 ���9:�y�L3���i��5����%�^�±���i�0�-�21�c�]�/����~�x�s�K�_���W�{&j��5:j�n���f
s�@��m���-C��c���Sm	�Uu6{B�E�
��[-���_��c�6.��={óYlZc���F� ��g�M�p��*�� Fy靉�)�^G��K�l�%62K�#u��xۆ�u�x����a��!L���x���.e��wޮ���6�܈P!�2ÌЍ�oJ8�%��b����<��x����
(�a�ob��y�z�L �'�Ҽ���v��$�e��8g�`Oys�����: ��*f�6���e�����5��g൅[�	�Ԯz̷P�mpk#���i�f�^�����{կ?��"??M����v:����t���|p�'a�ϼt#u��.2�������$��`�Ό!�&�.X1w���f�'w�GW���>��`~$�Ϫ�MwCOT
T��HŌQ� |�nIх�L5��w� ��$���%�|��^��;��?�����J�B`�IS��W�*�!��iC�Tõ�cO�4����0t�y���,1>��l�5��*����(o�-^��ǡ�	�i��|��A�|9��^�}w�}=��Vv	k��۵��^�g�11�uPɮyCPî!�@;kl�I�s�{��� |C4���e�w�����:�zH;���1)09a&ɱQ�#%��4�#=&(�;9͇z���2ϐT�0{J��؋�lؘ��V(n�mn���n)P�<7����p�%#���|��o��>8  �?���o�h�C�l
��O��x�B$�x5��f��۴�7#! ���$�ƕ��3ȯ	�u��=��a�J	WqDW�4�T$���Db\�9� �1�U��,،1��T.*f�$m��R��ӸؗW۬"/�sN��:
���-,v[�L�	Q��z5��z�߿F��������w��񛯯���O�����ri��0�ai84��c��KW\��@��29���!��3��i1�Ԅb��K8����f(qK�8� �䢒9s�蔉}������G��o�g)��M��^���8"	9�2KՋoc�� ��Z"
�ز��1�&��-��fK�>�!
9�aK�@:�3f�n�3���ɩ�	s�x�eL���� U�0��E�
��(#��n����ڌ#5Z����&y���B�e]������oG al�nD\D�X��_f��~��Ts�p䡤"��~� �*� ��)���@��ӏE�+i��5-���Z�8��f�iEcMGrf�}7��>Яȼlh0�H����n�����B��Ur;�cʨcg��5v�*$ȉ����ϡ���v�7'@Ip#�Ȟ�a�������1��Ӡ �����L��I��A���P����ca��6U�
���+1�9��ňj7
��������:"~R$a��`@��K�z@�t�b
{�$��[��pz��2���j�'F}���ꓼ���#�[$��@�""4_x}Q{�>�_���������_��x��W/O��5y �$�L������X5 K��N'��a3��p�����z�ut��4a��y`��2��#CG$�|�M�Q�^�%ĬP=8lĖE�B�h�V)�Q���fpM��[ٚo=�{`����Y̖�ց�}�9Э*��i; ��
sRk��r������s ����o����`�8kG���aL�i�1�	�u`����sPr�ܑ�z6Di�ȇ�¯+9ڔ���u���K����q�e���"_�F���웤����۵�)\ϛ5 �zx�H�*�r�Wn���C$��ľ�o�V�9K�:�� �X/L����msو"&���_�ذxdw�Ƒ��n	�{f&Ƒ��W��"���u��b\��2qwDm���7�c�/[n�@�.Q�X"r�Q��"I�vӭ�5��������Sbt3���F	��Ñ"R�aSP��9p��',d^��;����ܷk�����HY(�rlɱ���M-~oڴ�� �&�x�r�����Ý�h���R����;��r*�c�gI�r�2�܊�S�������Wf��8Kp;
Џ��s4��/����},��[�]����^�>}���?8���p��'F<" �a���5���*h\�ی�qh�_���+�k������$ mJb�"�>�!�`����l�9'��^J��Ͱ�vT̎I��R��f�ٙ�Kd�S!�b&�+��6��Y8�|F��7$,��H@��)�����d��nI�]鰼)�M�!�~�c��4L2��D���Z��	�4�е����g S+
�g�	���	C#���!f��Ń�y����/�;�@��
��Η���rS<��mxn-]?��T}����ψ9���RO�������Y���ֹg#�w��؃��G���	.)�=�`���
��E�xu��Z�U,`�(�_}4���S�@��C#S�H��U�I���K���N�"�$�
ȲM���̈�����G[7߇p��S�I�2��EDG�Ę�6ȅ6��?����#Y�E�0�����h;d��W�6�/�'�M:�G�۪8�Z�I�W�A���E�0�b!SOJ�A�b� �+��Hؙ��-��aK;��CW�M����kġw�TP]�=�nр��ύ�n�ۂ�I�.�����L�.��h�L����� l��y@���ѻⱟ��t�ǲ!:�_q�<�m��O���L4�D0�)P�5�^@�W!=�3�b��@(Mrf���}�E���ꀻ�0�[���b�6�Rv�n�A��H�������HN �Op���g�9��[){�M)ե}���} 	��h15tP`Px6�m9T�v�Z.�'�Q�VIsO$�nŘc(��3�����փl��^��oL�������e��[���}$�����x9�5mn�!&�y�ɣ� �/%\��;t��&�$�Z�Ѱ�JA�mD���a�B	5i���)h�	���8(���uK�u���LS�3�(j H�h5����e��f 2�����0i"��ĝ04==A���C��u��AbQ ��C�^̏��;��k�wQ �� ��$""!��Dr��%<���Ų�}��9�r*�Y��6uS�M7/�&+B�&)��*��65�ՀOeO��&Qʡ#+e���,��V����s�Lg�y���#6NC���V�%�52d��/L�;s����Fx���"?����s=/
�`�y!PɒL���:~�d
�?���������D�"s�A�f
ְ~F;��p�+���7�g�%���:\�x�+�N"X�i�ױb="�'b�Hs�Z�ڬECk3NqFQT-9,"�d#�y��<68���d�n����d��D�����)g��P�,P�{�R��9ӿ���Z��KM�9&�C�,����B��fX{�d�K��?C��G������Hw6�m��p�Ո��C�}E�c�\�9���ܡ�5|>ڌC�x���iY����vy����y]O������|��@j�pwW�h��3�Ra��l��6z�$k>�U	�j%_� �bk�6Ӽ�A�	�m��e\�~��@D
��n�@�cg�(�&0N�0I��^k��q�����m(����`����������Ha�a�A��P���=l�y6��x&
@Ç���??/?�:��2��`�.+y��?�;̿=���XZ[L�4�O�"`b�����opxV�Hr1�]�O%kJ����o�cc^#��2�#4┞�V��-��>N-h�o��ޓ��#�ߙ#R6ڕ\,�}o0c=��3T�$�Խ
Zj�M2������??�?uE���z~�TA��Z��G7{�fz�z���ED&aL<af���M��	lIa憮a	J���45L�Y&���g\.+���㼀Yp5�UG�R�TC'CJ 5F��a��v\U� dRlsU��ʥ,6+��Y�˗���H�X�ٿs�^e�,n���d�n���F�Y��R��g�ӈC��!t7�>�`�A\��hc��:�G�K�̂���m����:�Ǎ�<o`k �l)P���M�����ef�;3���&w����mm~���U����3 _�"�<M�����^���U,��dg.��ju�z��~�DSiSO����ぶ�;���L�)�a#8�tw$��,F�#���XD�p�� `u�
�a�w;B*�\d�f�(�|}�Gƀ���+� F���!L��c�U�8L���LC/j����_�� d�E�p�o}�|W@-�{ /��G�2�����#fYF��HGq�
 S����/�		������Æ��� l́0������y-��&���f�9D�ɥ�l��ס�L��k$�Qɒm1sdN�+�K���ܵ�B�^����D%-LLꪢf�#F��>���7�o��K���z@W�wC���MW�%�9I1��$��,�Z �K�pv4�L���/�N8��x�	�`*TV!����(�.����RO{]���fS
 i�H���%Y"�E��f�^/�>�9#�8 �D��r�6�y�T ��1����P/҂!Y�MP��M�P0��1���z�AM�<턿1�}�񑗱ѾX�|�F�
��Ku?�*Y�o��{"�-�@@�Dct��aB�,�r`⃺�T����~�J�M����m��������y~`���L�YZ�� Z��J`o�<�^£����@n:���<�c���&��ihD�.`,��)<&��,�(r(X���$��.�':}�#S�DQT��e�٘�l��xb��2R����ّ��u��0����5�=���WQ 0bA�K��<�r�?&�C_;k��숹�,�#�[0P����R�� Hs�<$wr_64�]B[,T%j��
��_,V�y�O�8    IDAT�F����5��	��"��3ȱ����Dz���	Ɠ(E ����<�w�&��<���\M}���0�E�� ���"cu��O������ut��&0�RRD.��q6�1�V6�B��N�/��q�;����g\�t07�� ��pn
Kt���Z�1�R������]����(j�m�S��N�K�5ȴ/����1��*�8#f���L�h2�eF9�Ձ[����� J��2��W���a���o�¥�!L��n�xȁ�YJ�� )��0Rِ�u.��T���U���Ȣ?���f �L2ϓLmq�Ku�����+>��x�= x ���W/��o��Ý� 	��Nk�2�D8�\n���e��8e~��]��#[,q���~Hs�� `�����8M��m�;9+*��ٵ1C���
R��<͐9·掉SH�C��5Zr
��\�25�������f����j�n��n㿨��}�@��	��( ���2-�8���Dtk��WsE!`a���97��:o�'5���s��#24^��k{��y��&���e��U]S�XzN'�Ӆ��#}�s|�ĨB�;���~SmB��.(� _ �f��05�u��0�]8�x��� �n7��b` ����j�v����=�����d�F����9�l��ZH�D8�O5��&r��pw�q� 7��<]/:���C�:PG�lrV�5����j���m�.فlCn)�1aAQ����Hx3;y��dK��(~�L�|иa�Fg�Ց&-A�%�%� I�S��HF����1TA �i�2Oi��x���cl����pݸ>5_�|�iǢ����҇o&dT]Z�C����5GC�1����0��i��� �T����#��f���`}܂2Ͽ���ª1��rn����9��w�����>騡�o-����٪�������[���g4G�5�:��f�U�-��?��V��zr�þ;�,5�j��.�P��Nn�$JP�,����	���Ȃ�G�%O��9�@�1>�hl�F�,e�@�ǠI�<��ٙ�	��}�>]����Ws� ���[߻�+�m'� ���j>���EK'�\@�� A)����6�[�����]-^%�j�	qSsB2�P��S�O��܅!�s����O�,�2�2�L��T��P-K��s�T�C@sM�4H��sA�p� P�j�N&+J���p\�����w�/��?d|���j���o��{^�������l_�S����7���w��3X�YN1fjy��c��q]��,�~r:a���Ļ�5�I�	r��\���ՄU9�T˭RkC���E97ن��	,Ű-�}b	��L*LD�#,�I�g5��.�VͰ�VN|N,��0�>��]-B�,Fc�"&~���"BU����x�-���	3��W�K�3�!�>�w�ܸ�۽���Kum��B � c�FO�E�
E�h=F�ò,"�cf�w�n�\��޵̂ve�7)j�~���� ��&8^v�y�D �0��j��|%<�BQ@i7ʌ�mu�P��V��V;�>�{��"皂g�B��
u�݁��h�z0D��S(����w̰6���Ms�b����aĘ�	L^ =���0&k���Vt�k�l2�	��+��cߣ?:j�]� &�#� /��~�,�ߊ�N���/I�L�#ǟ��}q��!�>�K�������o�\|��'���"�}"�L��Qも�Mm�(��lPJ*��A>�)$��Ӥ��/�c�ɢ�#O�l���@�Dfࡺ�1^�>�!��7����jx� x�K@����U���[{�� l�M�U7GH6�rN$�<f���# süL8�3N�p�9#5�
p��Bh������>XU�� fL���ZElԌ�W�k��;��i���紤vJI��k-:�pE
!��U���^���H� ����"�5
��b���$X�E��u!r�$�HbC�:��Ŧ���غQl�>��60�#��ˌ0*�ëwEW�Ӷ�0�ff>��`f�j� ���o�?�{��J!  >oD?=������7w"�jzE���Y ��z��	l#J�)UU�N]�F��$���=�9�\�؏�--���SK?�fT���I8mș��q1�Y;�6�z�{�<ʆ���ȑ����4��M��#c�(�j� RE8�W�~��ڻu�C�Ձ/@y�����_�� �	�u��srK���Y��N
Ć�ǿ;P�&j۱��t�(-Q��l����h��6#l�%� pL-���9Ŧ��0� � 6A؀w�1������P#�:$��=�UJ1��Z(Z<�I�6�ˋk��~���!_�:�nߗ�����s���P ��0{��j__����:~�ǵ��O����_�4�h	#���-lE�"�r��u`��q�,x�7?B��ۧ3^��W��n�:��m.��%ңH��Ǜd��)�b>�RTw<�����.�f�\]�(���p�n0
��2�b�ND�	01p���a�u^W��P#PKb!��c0�ZdyK�@�5���'S0v�o��Ʊ�1a/�S�D��^�A*�}#�*�J�cQ��s j D�F�Z%?���]A`�ej/�3	����1�!M������>�K����&`��p��bVunqeW�i�SRm�'��W.7w�8̑=g�a�b�C����a�pj%O2^4K��0���n�H�����A�>�b�D �A/�4�2g��@�A-�B�)R�w;���a��2���_m?�Y>�Z�>| b�5h��A��t�Kr�f�����"oR��9s�QL���9�/�>6'0Mc�4��g�5�> O�k�Sƿ���>�R7�ƌF񸈷�"�C��!���I��{�d$2�83��Ap4�"$���"k���i��;,_������i�C����+���W�[ 7�&��?u}��_�U���z�������ǻ����K���R�d�I�t()\�Bxn3w�Ä�w��֮8{8��qXJv����R���D�ڹ	�g+�2�{"�EWĩ���:�x�}��>ʈJ�K�8m��"����9��T��Δ�v[R��L
M���x�K�JWq����&v���W�1��=`⪉�l�*H�:�ؘ��0�/����Hw,��Q�5V0P&K6��p�{)"Skoo�>��u]nb��=�������
����c�L4'��})�H��Mf�@�4���SNϊ�c$��j��q����t��a�7��"��i��5��ą�� �@�i�g Q4]�2wM0$��\b��r�Ȕo�K�{��ӈh��' ���>9�B��\nj��^�����G-��,�ۮ+RL�Tf��� d)��u�{�{H�o���J�<k����"��w�&E>*�0���{�[�>&p��r��;y*x`dDl>n�8q�
�K���a��T6�)�-t��qb�{΍r�d9ӍWmj�x\־���O6�;3���x �Qȁ^��_T!�9	�a���/��?�a���߾�>�����X����S�P�$3X��2���D���xh?9!�p�&<�5"G((��O�oC�:Zl�O8�!Y��A���d%׸˲�$(Y����
�p�#�.*�=%t�!����섻e�I��J�ut<�W\��<ȳ��- 6�-���[IS��B�N��!���L�w_�D�^(4�F F����h�:<���O���حd^��D��,����pߤ����o���堪�aB��ˈ�;� ?p�F\�����DG~K",٘�#۲ P�)m#ׄY75G���p�"J/��bft��jv@%�})��uG��cd�L�ӑi��iMB�8V��@����_gN�($�j�կ��9T/.�d�S���1�P��kY(��51�H7x3�Ei��U���� �<q$����F��T��T�����=$�4$�;_ԁ}֗�AN�;~������iۀBk������PLP<T �����d��j�}�����(�r�N-��Ú1�Gz�6c�������2N��˵�ߩ��լ2�?�x��G(�����(ح��I���w�x����v�p����Oqw|q��"�ʀ�!�ȹ�!���::�/�������:��x�����kq�N$I�+�*��S	DhO!��I�i�2��9�$�E�
6�LOZ��n���-
�c2Ƃ���������;,�UÛ�w��R6�����ɋ�#"���v��{���J�|���m.�:��,������_c�x0��J����I/�)�� ���`�� ���q�c�L�L���|]T�6C`#�c/n��Z��?����0�Bn;/?��Dn�s5[a��r�M�U�J%
m�7��E�1�J�"��y3A%H6�q�аow`#��&hV1%5�bɅ�0 3jX\�vŠ+��������cI�(î�5�kFǺ!����T����z�A�- ?��]" ����N��2�+n�"����%Q��EV��E�CV��!Y�(������GY),�4�[:��}c0/��3�ǋ*��ai�t+W�H��Ĝwx��F6��oa���HX�c��V�QqzV�?�`!:����ؿ:�U~Ԩ.o�$�JA��ъ����O ��ݣ����U�񇷽���ˏ�p������YM�{c��S�-�Q"��#^�=��7�'��<����w}�u��}�Ls��gyn�Z��;�'{o�%�q��GdfU�'H�� �������%�����H���]��?�=2�1��W��hrNc3���U���f�M-���.4l�Q�~<��<hs�I��lZ4pH�jf�a�-C��"�Jd�v��nځ�`\��] �S�$T�S)GxJ�l�X2O���{��r�]�@� 3�&�6��Y��5��_��8���4��iy>E�X�����vq�Z!�k6�is
�4P���u��_��0��n�}�'���c����K���!�|�1Ol���uˡ���mȮ���P������ֈ}��ui�� "L!�U#��q;��:֨&'c��6��φ��XO��VwU�Mq�L>(�wT&�*Xxƭ�ػA����R|=۫���aktP��֖x�?�����Z%|�����x�A@��k�ϴ�-�~���,a�C�Nb`H�޺���C�,�@��)�Q)���B��=�8p̥��H�B����&8Z�1U�ϗHp����ʄ�����cHa�Y��'9 c#�5��騔"q�E_L�|Q+jZ�ڃ�% x�pF��] ���)�x�5��������޷�����f)�RH�����
���G	���.�K��ӂ�TqYLS���dBt�7���������t0j`����o�{� m�p�R+�iBa	@������E!(1�� ��)�=�[�X߽a�7��+�}�PJ������b�!�K/?�o��Pq*�#tk ��R��8��-�8�S,�����-C�1>R;-"���<�
�3� 82�('�RJ)uf�EU_X��[��m<��)H?ޟ��C���
��f�_�����g�,w ���b�h	�a��C����Ӿm��"��� �!,�DŞ����@o���Yc����#�?[~#Z0�/8��Ф��z � 7���P�G�e����s�Mԟ�����\[��:�,"���l���ֿ�����? x/<V|B6� j�����51=�M��1�N�p!�rB֎��a��Cw��
����S�T���PЀ�do+7W4��Ys �� ?��x�J-�P��?�~�]��nh��in�9�@̩%���9�@�H?4Z ��D � ��>�����U�nfv�(Ε�'G�?��c��GA ���}X��y���߮�=�.�saSn�sˇ���?P�6���` S)xqw���+.�B����m߱S�����.�;�S�`?���=�k۱�T-{���Z��m�Z(t,Q��b.�%�Ot3��D?{��6���ֹ@���#Y5h���ތ�L13@�Gܪ�6����2C�Rh�r�0��=M�c~�6��ڟ� �"L̘�Qŋ�BQ�ղ��M#��%)��y��eQ��[�@������?�%���@ _�̿����,|e"�h}qa[��3��J�m�}��r�6e?�QM��p�[���m�����b쵎Ap���	�[f�Ľ���(�s���;R� +_�e"~�h�F�a$���K�c��yK�0�&�v�k��뺷o�� ��kb��'��Z- $��{G�6h�	{H�$z�F�M��*0��؉�*��#le�z�i�'�m�71E/0iB9)���T&b���$6(���9�dB(�n��/ӱ���@-c 
��T;]	�h���F 3�i�����گL7� U��a?�'W�������9π�c-���M��{ŷk���������v[������,�;PcT؎�T��wl��\*f�p%ƫy��:�U\���޾ûm�m]#\dB�ŕ�1	mo̓G���"��T�)������ ��vb��UK�G�Vf�v�p{l���Y<w���[���FZ&�AC�|�g lP�� �F�8��|�F�~�� ���R�Y�Z�&�=�06<��	&�����O.�'�!\��IK>�b�8�Y=�~fL�$�����7�������Yw0�-�GK�B�Sܛ|�x�d��$5ZU�,����������>I5��!8�T��F���+z�M&�"Jɭ{-|�pd�ܑ#�}�E:��|�&�ac�ɳꈣ��X�C�'����zjkZp�g��try����Vf(����4[��j�g�������"P�|5O��<�O�00�2��N`�D�Uϧo��4�� �gKq���ǉ�|E&������,�A�N����I�����vj?d���*�����Rd����lH��[%��7����. �Ke��ȮfV԰FL�(�� �ǘ��` �oܿ��>�����t�}"b"f����q�h���= JKڻ�Z*�-���\@⛏5�W���6��j�LR�]�v��V�LD�a���=��YM�ރ>�R0���* ��C`���-�N�K�^�!c��5϶��\�� >7��:�WvT�!&�����?#�j���?�Y��"��(tR�š��<r{�7�����H�,�V���$��fvg�?��`C
���y{�ؓ���\�#������Wש��\ꅃn�����xoՀ�5lێ��P�{X�aWM�|�Y
�TK�Ѱ��։k���Kwy�T��B�b ���#g�1�����Z��yFZ
����b"�� c]yj�q>@�4���\K���Ғz�M��z�u��7[�U��c��� �: ��׵�/������Y��?�P��R��_0��x\�8Ĵ��,��&w,�C�wL�=�%"s$/�5nrϢv�>i�ώ�a������F>��UВ���0�c��r��]"D=����©���!u5,k��1�p�P%�
C�ڦ�����`���1 � �� �����Co��v�nݱ�
�h�����#C���w��ibUXk��Qxv������w��	��]����M=��HA%�!&������>�pqP;������3"���#S�mw�,��y]ͧ\�@���S����j.<z� �1�3}{d�e'"(����J�C��64@9�h�� �jb�"�p����i�������� ��� �y�f2)y. "���0T��(2�ǟ
d�P�IJ����P}ejՀ��� �ck��}e g�� �0��"�K)?��K��aL��v���� ���,[�d^΀{f��"�Yxc �&튦-�nT�Qr��p@���]���+�6��1�fg�<`K�VOa��<&��*ϜE�k�����)6
�< u'    IDAT> k@p��l��'&B��[k�_ ��A@�_ |����"�LU'��9�>��2
���͆"�Ȝ�kr���� �
���B���GU�y�,��xI�C U�I+(��$j��8X����&3*��z�=�cXLN�2S�~O��9��P}[|�q� *fwf��l`��|y=g��# ���߷����ޭ���[� 1O��
�{��IŭJI�ws�޼G^�p��R1KA-X������_�1K�\US	�}�n_7@�bT��R��WBX;����T5�|��v�����`/�wS�B��y�`ھcݣ�����rQ�F�x�:���^�G5�H�;��i0|���J�_2n�z��:{h hT�/:(�����$�oyl5)V�a�w:�<a��I�y�Dd6��z�=L��	������ \���+�ja��Rʏ�y���#x����y��
����ƞZb"d�r�Q!�=+e�fǘ�G���ΦH��.�d�|�e~��{�J�WH����$� 	0��BXe�]����0Q����t1���r:�m6��[��ܚ�FM |�Q��_ <�8 ���_Kq p(kc�2b�8,����)�A��79��ځxU�6AzlAq`z(�}ʘ������������"?��`%��3�sB<�Q9 ��!���=��Eb���������O��͙*ąA;���~j �e>�~}�-�t���:��f�[�nm��l���wQ�*R\)�T?�"�����2'W+w�V�c�5���0�e��eZqeƕ�"�*�N�S����>�ǔ *�#��ق�A�vx�j����yf�6(ſ��s�����۶bk>��ĭW���1i���`��k��`��^v��3$i$ʨ�9�I���1b;m��s��e6Q�z�{�x����\�Lc��GÝ0�;\
����zG��>���2O��YM_t�w�f'q��;w^�����|
 �x]���E~9��3M>92�U�c�G���dz�@�p\�5)��Ԭ'��{��.���T���m�Y��(��YBhVroyR\�Y�#V;@��6������ ��Bn���[�G�T	��� {����v
'P�W+�v���}�i�MW�< ������K _̵~5��ka���'�Y%`�J��B���M	ȑ��| �e������J9_� d����7�P]U���t���5�' ���7�s��v�W�pMm�1 �a:E��=�AY�8�0ZF�֨^��+U"\	z5���	��������4��0{���7�n����Ck .e�Y
�{��}��}��N�k����ް�B�ˌ��xuw��+�˄��M~�l����t=�;V�b
R�Lu���>�������4��n+n��1ɅA�8;�c����eߝ��P���qOg�ϖj~����������Q�C�8H�/-c��p��J �$+�@zb
�1���l��G��, �P4 G)�Z�L�2Kp��Z�]�0��J ��` ^�/+��OU^1ar��=M�dLX���"��G����#����R}���FŬ�m��[�v�F+4�7����?���©YÌTmWB�P�$3�γn�55�� ۮ����B�!`O��[�޻�[�Es �أ��d���֭�[�_{��G @�~���/�8X�<��i�%���Pԫ������`=���#�K���Fbe{��a=z��w�"�FE� �I!F����V��>W�ȡN��j��5y���k�u�=�X)�6k���c�9���G�I�1}!LLx`l��������S�����cJ>�$� ���am�n�����~�ۯެ�/߿�_}}����g?[��E8�S�p�0٭mw`���Z.�jX����`mko��;�}C��6Z?�|x��!��y�����K��f���n?r�]Վm۰�;(�\L)|�A�R�{J��J������2�d��st� ���d]Dy�ur��ȯ���7#]�U��I�4*�<|Tg�k���+��0��ۘ��w����s1�ٳ�\�|�Luy�o���o�3U�q}_h=Y�����5��|�4�QDS�j�p��KAG��csQ$bԴ��$�����Rh>`�^sl�m{�~CT���72R($�����) �ҙ�Lo��~�#ED(�`��8���X��c��$������ IF��Q�|N}�~}�=�/�����9<\�y�~1��W"t��W����Ip7������'U��r�Y���b�''�8�S<o%OQ�g5tz����d�_���>���)�y�� �ìl��g02*�`0�s� G^{�b��p�Q���b��K�ș�NG��#�Aa�DdxK@��ȧ<�:o(�]������?mt��n�ޯ��77{ض"�t�j���\�0�P�r�)���`)�k������}Ŷ�����<�ٳ;,�B�����.���G��G�!4&�J�=������S��$4��ڎ����̟�S�	��`'o�Lϴ���+Mɨ"�c 0�v���1*Y<�-�;�Dw���iP�/s&
u���4J��Ї���g@{��#�ۭgf��ް�f=���2�Z��D�a��{K`���\���c׹�n�����*��Z��-�k/G[,���wQ��m�MУ��ʜ� � @Ӹ�)r�z��ɞ�][-?0�J/��tx�+����Q�4���8�X��/�ioN���U3�hCe�V;�?c$f�v������F�>� |��_�H�uκ"�®���}����ď��(-z���(�kЕً9W�!O� cƟ�����rvz��HO��q%�x�5�0'���?�������4U��n�L�M�j(�,"윦��i�@�d���:��ԕho�`Nޚ��ҋ�C��|<���S����?l����ck�ͻ���_��G_������<W3�j���Ҹ:־�Y�H��Ψ�h�{C�{۱�;zdjp&�xu��L���y���>x�+�Lj���υ�-[3�j.r	p�WU8�ø �H��{�w�*$7���k�[�f���P=v�q0�ӫ��m ��	�,�������{�Tm@f3:�&���$7�����u���A�f��
��c`ӡ���vY��V*�E~~�^j��N�лw��a�!�3Ό�=�=�i��r���3@����>�V|a�h}j��i�z�C���x�����x�C ���(���+���i�ﳂt��������>��������� \S�"'B#`���f1����ԎV��Z[Z��_}��S3 &�HX�Ǘe��e�F�k�[ K<+ő1B�:���H�O��kK���<���(>��O:�=I����[�Ψ��,��B�����Ii��ێ8�d&C%���bdKG�#��[��@��� ����IH�DՐͺ�%��\#zXTa���������g����L�Y�N�s��M��?��������m�?����Jj*�*K����Q�o���.�:=N�L�-�>�����	_<�Ë�J��u !.��gB1y��dd�Ȼ�:��/���?[�-���q�S ��:��`��� :��^����H� ���"��8�+eZa ^J-�J��Ϧ�A.2��U�C�jyO����Z1���#�Gy���-�wlp���1�Ä���}�ћ�ݔ��|]j��bڟ���������+�1�+a��*��R���2����<T��FJ_�R� ��o棗��&{*�Y���#��V/��}I������J�-�yR�����#0s P�=�5��N�f;K��0;�N���cC�&q��Z���Z��[뿱��?p eP�yb��	�Ԙ�7��Og��|0�8�证 �ޱY�+���3�=�4WZ�oجX�:B�\����C`]>zG�gd�B̗�b�ofаC�>��b�ו�C﫞���P��(���M�i��Z%��5 �ާ��d�J
��
P S�f������m�O7���yv�g@p�琥sK�)���w{�������������w��~����W�m!�b��p�{e�R�J�]I쭁B���c��vо����ʯ�\
����úA׎U;�����%�^!���ޡ�@`���.z�֘}nPP�ċT\�b�2¾m�m+�����ye���F᯦�ߞ��f;"؀�.�9@8�=�k���q?�}�����z�Fq�JV	~�S�!}�ฟ,*Ԯ1���ǽ驇}�'8PC4؛���ՊJL˥�|��9������u۶~`����ۭp(�|���y���kک�C��V}r��=��IS�qRR��Q,9�<��վ�'.�xf�9A�x���o���	$�"j&_{u^Pk���+&b�D���5|h�!�v��"8���0��BEGo��c;�䜎�����'c4�k�m��J���y/��3 9Q���~v�\�q��o��B]ya�.v�̎�\0ќr�*4z�D�G\���)Pć-��-����9�>E_Q�'�N���1��wE�:���:ԃM@t����昽., ���Rx�����QM�f��d��~J0LF�L�BR�yV�3�|��SZ�c�3 �����^}��ݯ]����[k��5����ZcSc&⴫u��T�RҰ�Iq
bӪK��7W-�i�\˨���yx�޻B9["�p��V��i� R�bd5~�ܖrt�.e�$5r0L]�bpaP�3| �d��z<;,�I%��ˠy��&SG�$X�a-nK�~m����A,
3&�b�P�!}�хb����I�Lcx�B#����d��ÝZ�&�����RJ5��d&j��|Dເ�?c>f|U���T����0ML���1+���d��:�m��<��#C�1�f �|����Ⳳ]�Q(���-1a���|ze�"�y��\/�sڭ"�'�F���������_�g��1��S�YP�`��%�x���Q	d{~���Zk��������HL��X� �z:]�ǥ�e��T�`ե ���Z
.�:n�(E �D�T�O�D�J@a�2fT�AӇ�����$R���RX�U�G�z�Ǖ��!4��~X���`��[�j]�Q1��(tP��j(U1��#�ʲ��El��V�_#�bg!��H��#���(�p�21a�w�������Ͻ�~��0=��c�@7{�v{w��woֽ���[����Ԓ����+��8�p�����&�1��E��L����P�w��>-n��@�jwL�3�(��<{�����9�;�w60�c� �� �#P(��J�r�x��堓�_�����?��M0�eFR�T0Q<fXxu�'��7�߼ޞ�ᇖS��,�"5Z^�v�O_4ž����:DD.�2-�<�R_��3[�Zς��x��=�� ����Y��+Uo�*� ����h^���|�|`���{S�(x��k���l�p8,Tv��`����5�L�ְ�b�\�O��|����2Z�F.Z�G���Ȍ�\g�6�yd5Eze�wa�����A/������u����>	0@��$ק 9]�S���ϯ��'�WlV'<�3�j�E��o�6j��.\��Ә�7���@V�QG�" G}R���4�����8�*?s����}ơ�wU�Iw�o_��o,"��Љ $�D�5�R ��x�1�.��P!t&4��AB�c�����C��x65"Ѕ��L~�O}n.����]v>��+��:�3�=��75�ߺ��u������u�oo+�k��P2"*����an�+�E8"�D�^i�j~pA��yF����6���N%dxIwwU(g%������B1?��� ���6�R�B��O�,��XRy�bn�8�0*�� f(J>d}��.��O�u�6��#�&H��ݠlKf �,썃U��?Es99��B`��?�`�� ���}�Mյ {��F�y���t�\橖ȾP���!\q�%#🁀���A@�^Y~1qyQ�+QLX�ĂI<�A{��;�������G��r?u�$����Ê�G�R�%"�+�}h�_���#��V�=3�6ڑt�q�c�,_뎒(؇d�l�Ƚw�Pu� Bpj�Hcg��'�������Z�5�x���s�^�ٯO	 �
 _��O/��W�e��
��\���4�* ��8�����K������r{ ��z*����}���	汍G�T�Z�Bh⇧�[|	fka��/ɫ8�(Pm�/!�gGb�#�?E55���T?���)dNueOfSa�0�â��%�YeA-��
Bw&�0�W4}�BT	����X=���C�'���uL��~ �"�7�7�~�f�=|{[�}�iW��J�E��ͨ[T�q����̀j�X����x�K�q�,����>�<��������u Y�y�`��W�f�D�=�EJl����8j)�&U ;E�%�}5z����˄)��F���T;��b��m>`�m�<���<�0IAp��os��� �@)>�j�6����ٓ�4��Ѵ�C�2�r�,�2ϋ�=�����f���&-��k	���Y8[���J���U���=L�")&�����=e��2��e��=���7�3W2�Q���?�*�����BA��ia��6X�0�*(�vr���O�P9RX���e�( �sO0���=ܩ�L���u����� |~�����H��S��$ �R�����t��U�g���J�]��a��s� �E�Nzk>�4n��� �ͪ�A���@�-}ˉ3��4M*�)�"�rR�#z6���`}O��@$*�Jlx������UٻM���_���%���P��KWPМș�3@Q�p5(�����,4(��a�*ē��PC��S������ik�8��-�aS�ٺ�{����a�w�ͺv�k-U*�O����t�r� F�$��B��!F�X\�T�e�<��s�em)�YxR�ǐ9@�=�Ur"��ùs��y�U��ל����	f���~+{}!�[� ��}�P�d6���VaT�y`x0�A��{��Y�g{���G�3�~�i��m�^���B~ȵ��Z�9^q@��Y|�N�9Nc�r-�.�KY�y�K�������h	�A�S  �Z�Q��~���~&�_��e����Z1Ww�;�^�6g��l �ؖ1%�%;^;�l�~��ב:���z&���Pǡ�:M�`�E`�ֱ�R�Q¦. \	F�K	wH0>� ���&le|a�m۾�_�������@2 ����\T	 F���|��n��/��G��2х3E;��PG��*���mhۈN�s\ZB�s��CK"���*���p$�x�T�?��a:��6�����{,<�G�o�h�GUƑR��}��R�Qk�K��5�{!����W6��@^Ѩj8��	es)U2}�d�]��F��4<n���[3{w��o�����6|�[�f4�H������Έ�%ֶ*8ⶥ���Y�Z?�+d`�<a�+�Z0c)��/�<�,x��Xj�TU(@�1��аNů\�@PX J���>�9��k�Ĕ�a'4W�g�� �ԇ%%P�]i�vY�sR����v���g��Y��� ��� ��R�0gD���|b^�	���<��[�&�14��1mfh=�Ea�e��,��̪�L���W -�q� �1(ȽzX �D?�/�ȳ"<�v[(�ZPK9�M���z
cV�C͎�5?L�C�}��8��^���TUn1Y�d4����P�{�Z��*�x��}�L��s�0���h%C]x�N B��R:�B�rI�+g�m�ۛu����?� $����O	 
|Q=���S��gw��\��LՀɀ��>D"5����9"[v��>���a���P<�cra��    IDAT�C��v �a	��\�g YA���t"�j?���up�6?C����s�K��� 7���0)�y(R9�Ta�R�*-i_�*r�${u�D�P3�x�@A��8j�\�@�T�T�{�C�rq�s>��|}�z
��-�ѹ�!Cj�V�w�{[��6�{cU"�:���kT��6V��m_a�}]�oJ�RDp7Ox6�x>Oxuwŏ_<������e��\q�f\g	+RQ���ه�|����z�j�E����'���<�eE����-V�a�͡Kh�‴q���zT��j���Y'PD!{��\e�Cȯ?(h���=�ʤ�w����zČ���c����"�S��ه�::a��P�м,eY�e��3���l�K�$8d����z	�G ���~�D?)��Gd�)����J	f��XT[`hd���O�=�Ԃ�����xM]gP��qP���B��l,F*,����0� 0U�uG��aU��5����&o���y��$s�0I�Mܣ}��0!߯�ȵ ��U�`�03m����7���T�'��� �ds �O ���_��O�e�ճ���T�	L�j7Tu{L�^{��Q�FH�L ��c����/�}RJ˒�CѦ}�t
d�:�P$&_�FpD>���P����	�O@�0Ã�B,��aƱ:����Wm��0�vX+
Tj�  �=��M@ћ���A�
�@KAG�u�v��� "Tf�0�#`V��f��*�v�g�^g6�)#p��m���n�p�;���tk;�����ʠQ9��F��P�〢Cut(���,Su�*<[<�\p7/����"Xj���㉃:��W~9=GĮE�����j��v�Xeve��QLߴC��~��� �vޑ�n���$1�����O�A���Tw�̍lm��'��d�2�)?X	0
�7?؀���I�j��z�N!K�*�Tw;��u߰�FD�����.�eѥ������ge���χ��Ծ��?�S���
�*"/���)4�����4�Y���P��gh�=�$]��UF�24����L�rVt�y���!X!C%�\+j�w�֡́%B��HP �j@���.��ۂ�Ju��bN����W8hQ3�pm������������M��-�oᩎ9	��8[JRP�Ea���2�_����Z˕\���*�ԕ'���A�d5�b���l��4��A��A���r?��(�o^ƀ�:����8'�t\(�r`@�@I�o|s����\H#�\����%LJ��JC'?�Ӓ���㱥>�M@T����z'��T1Ĕ"\Xxp5C�]W�.��|���S �"�ty�lj�Vշ���C����zwL1ug��R�o�`����p����>B� �ۆ�ᆶ5�Jt��{1,� 9��HA�b^;�h�e�g2s4����s�v��C�}�#�Q4,N��]����T��& ��0��Aj:|s��[f��D�V���X�#�$z���R0]�l��Y�� ��:�CQ���}B�����mC��j�P���<ML��g���f�0���_~����	���ȗU�E-�B�g�]�� ���sm=�����2����~n,��gڣ�N��Cs��!�C�M3����-9�A�jXYj�[���]0:
�+D]7s^���H�ƠԊ�N`4�֣ڇ�b/wᡟ9UDI�a�ۿ�Z�MW�78 x���$@�/ ^�BJ���������O���Ԩa�a�APf�HS�iY�+��Y���b�M%w�N r� �x��:��o����\��cf0P���sCd�ߞG��)��x��@%����2ʘ�E�b�y�tT4��	0�*	FD�����bX����W,VQ�+����2"�HX�*�Y�i��Eͪ�m'& ��V���#���j��ڛ����]�n��Yw|�6�4��D�e�[�T� NPjI��n��c�Z�56r Xۆۊuk u(Y�}�2������|t���U�V 33����ߋ�؄]HJp�����8����c���3��D6rB,�ւi�׃�30��=Ž�iݼO�xf�\�@�%ͪ�� �rj��;@���I��=�U�]} ��C:4K0Kk�"̵�Ze"����6���<�����?}=��j��ד����[�q�+.sAa mz��G�ǚ.^<���R�*A�� 4���d�EB������s3�L�.)�wQ������"6��- �~"Z�n���X����Y�[W<�5Z!�,�

��f��m�߷�~�����  � p�]��i�����/׻/XdB7Tfr�K'FS�L3�羽)����A��s��t(�D�r4�=���1��(� 8onà�8숑R�Ga�`9��j3�=-�N�+�6	�d�%��Mȷ,
P!Ǐ0,+0s��f9��$`�D�b$�y9B/��J[��3"OX�b�����a5w蓏� �3�Ӯ3xz
��춪�Yվ]�>�o����Y7}�7��[��NM�+ h��spC e���a���am[s`��%1cm�������ހ�˫��}�%H-�5�����Ձ��VW�jC��\Bl�Wdk>W��&8�q9����B����Hj)k�m>��Tm�;P�r=�s���s�H1���FT�>�$��T��G�p�}�Rj�r"t�㩏�����u�Zp�^�r�L"2+�km�W����o��g�\D~>��j��/�Z_��@��i�2W\�	���06DuO����&B��q�/����-KY����ѮhG��6�Kq�h��G)�
j-#���^����}8�S�R�M#���/�Y��)XV�b2�NR�L}���ú��m��=s >)��)g$H���U."���pV�j'�>��~�[r2�+���U��-�|�1ʱw��d������,�$��q���7R��k-�&��3�`�:�1,��l|j�qSd�}D���7��6콹����y{����2\����3�
�:�{؍�+��~��"0��lhP�0.e�n�����V��.6>&���u������M�����Ś�k=��!��|��+_��ڊ��A+�g�~S}�T�A��?���7��*�?}9�}�r.���<qw���Wz�,����koX&@�R�z�p�ްG�y��1O={�V���Jz�h����O?[�����N��8�����.jE7P7Lab�p�v���r�1��7z�C�Z F�~X�"�f�^pL ԜaSJkc���8�䡥���azqH&u�	��䦸��^�΋&B��?��vŭ�7d����/pnۆ���	x>?ǋ�/����˳���7�~��}�溭ۏUm��01Sa�Y�.E��T�]�uR){�����bU���Y���I}#�94
�w���w�Kx�W��?�!$��H17žkfl)'�Ƞy�`�Wν�l�j���Bfc���ϊؚ���o�,)�(�@P��C[�\%@��5�ǜ�x�]U����6U�Ŀ3�z�>����L���h�h��.���˲<XH;*�D���-|���@�RRX���3�L�-�ϑ@e>�V�!S��jw ՠ���/̘J�$9;��b�x��~yȧ�4g�����y�H�_�Nm��kǞ�y��>%�'�
� �$��_��AE�o�n������a�7-.@$x��l�#-R����",�̮jV��aAOu �E����)+p�+0tܫٻU����۵���~{���f���u��{�$���:�G1��m�ö�����<b�6w��oY`k󪘀�GT��G���3:y;B�@��6Bs	r�PZGK��Ƈ�/���g�c�� ���<�^���X�Vw��k��Y�CpX@�ȓ�����S8u�d�u�ػr�>IQ��8�������F����#�ޞ���4�\qw��gS���L��w"����b��r���Z�H�&+�-A8CLRpWg�\AM�Z��d�Ji���?�6A�}d�8�j#8ǩ�&�ˢG;���`R$֊�{a�E:��F���A#o�x�z��N'�����9��( G>L<_��?5lo{�m��۶����?�H<� 2 �i[ �d \����~=O��b"��
m;�P����w�~tR�EN/����wJj*�y���O��"FȐ	:�SƦ��&K{��*���[	iDf�'��X ���"ѿ<�@�*ū�,�n���ϟ��u�_��s�*�cb,J2��Rl�Q�����b��s@���T!.��jj��n�||��Ϯ�O����7;��߬��o��������N.[!bD
��-5����s�B �Z�b�.��	�V���}�E�@sj����跇@P(��;�S�	s���,�ѿ��S3��4�C�-W����tX����{����{6;EK$����r�lx�}�C��o�!�����y8y�pZ�㫒L@�@D#;��V;oA���+Џ���&`PaHH�ͽ�퐈PK��r�범"e�j�w �D�ZD.��*E��<�e���Ȅ��ħ����<���[�u@�=�:��Q���<��8�s����Jq^�+��Ī�=̎����������<�g��v�<ě<�'�Y�.��d��o��z�ֽ߯��vo�� ���3����I�~����r�
��&S���#)��w�>�m~s�I/�χ����$h�X�^�8�H�IŰ�I%��ψ�����Mlۺ�+����E���a�:�Z9L�?����©�J��7���v��(�(��Q�ӱC��fEP�\اcYǺnh�O�e) �5��6Ժ�Sf�g�7���d��ZJ �s�?������:��I�x��!�������j�4�֦�m�ެ�>�n�T~6_e�J�[ۃ�uA��a���ѡ�.S��ꌩ�(�D溫�kq��2ϘXP�q)�ZQ�V��s6���B%9u:1huD N��Ij@�o]T��'�#p�� E�Ȱ��m�]F�8t9�8 �j��x��vJ<ĸ���l�E��G�Hj�H�[%��Y�C�1sa`����Ir�e�;�uǾE�����{���
�*3��t(�L9�j��m��N8ۯ�2��+���W��m��Iw$!��U��-�Ff4p��Y�{������8��0<,mp:�l�d��J&8�ӧ�N_��Ix��@�����6��m�z����{��� ���d�_B8l�s�_̵~�,��ǘLQa�㋃1��Y�6��4��
��\�T�1Uo! *W��7�o,���~�j������g4b&�@�ә��('^��(��'�ϗ��^��:�D�0Ub`��F)�p<��uY�{4e�	��[����G5���7�_7��*` a�"�2� v��͚���l�������@�Q�0���foW�o����ַ�[��
-R���L!�?��b�[��{���p ���--�^猂���X�J�T}�g�9�� �!q����=]Ȣ�u�� �&�˕3;(�{�=0�y^�e��@ѝ7K�vh�ac"H�,���P#�]�b�!�=�ϸ�{��	6掩�4b��!�dꀌO�!m��:�}-+Ug��_S�}Ƕް><�v�����=s89�x-�8�P�Q�?
�E�#���@��-o���y���æM.4� �3��+��?��6\�%�q�59���>�0b�)��A����`�F���*Z��{0�@�ԧ>��X/"SŶ�����o���:g |�@���s��Z�s�[��E �0Pæ�1�4!�W{ꇝC6��>��jQ�"h|��2f7�ŏg;�����6�HBT2��%��ѡ�B��ᧅ΁C�PFJ���{��
r��i_:'�I��@�7:4�D���[� � J0s�5��Bt�+c����1:�6&&!�B4z%��T�����|��W���v�G�Ax�
t�wM�k���n{��S7#��w���+u)�͆=p]��V�}��~�ѣU��C[G�ObϺ�Z���s噱����ʦ0`�_y����F���{�g��'T�xb������(��=�E�;;[fȡY |�3=.n�уfζg��Ȋ�s ��m����
P�*?*I��k��k)q`��*t	�,��ɪ}۰mZo ��̳�:1!�p���R&\�`���{E|�n"7�y�ah�B��4���`R,+l�AS<��,�,��a�$:����soE��L�=CX�m|$�8���',���1w 'ɶ� ,Z�9�0�B/������z����7���������,���E�Z�e�W&g &"�o���PZD�}2�y���8�{r2Q�����bLB.��E|��F8:�G.���E���Q	�`3)+��p8XT�8���ShPX�v��� �9n�D�G�_~�M���x�w]؛���	�N )���b�Ir����H��0Wf�tUU��������ί�%�q=�-�����x������ʇm�f�&b�(
;���j���v|�wܚ{�Mݾ�m;�u��6_?��1Q��|���[�3-X����Z��Q-��u��� �thy���`��/Ѻ���_`�ּj��=b���BJ�={���Hc��O�9�{�}b(3�<R7YDfgj�yB�f����ޛ�X�e�a�Z{�soDF�*VGmm��K�� x�&�?`���/x �cO݀�'n�0K"E�DQ��F�����&"�={�<����D�|�3�H�)��W�"n�{������Pk�#f�؄�K�rZqss���gx~s�g�Ü��|)'U� Vs,�Lmn��;��-��P���/�h�y�b�^��dn�s��%�y0yI���c�.��?$�$9'!чl��~2߃F���YD�?n�Q�e!�EJ>��;=���Q�ܻ��������oc/ >� ��
 ����'u)�<��ӲޕRk���`��/�G�� ���1=G��"Vn9��7�ؘ��1�H�#|�b�ǋ�3��$Ѭ
w{ѽ������Ȅ�BKꤩ_��
$n򄯐П FH�y�`�,4�OEG�C?�Un��ɲ%��+P�t�]FUw��*#��U ��ݺ���,����|>��X��ELT`�f//c��߶�o������VP��J��RL�;K1��BM�s}ӛ6�جG�rL�N�m�f��C�m�a�Ϳ{�IJGw������nll�%��P�Lc��3,�0S�����`&*a�g*)�I������;���,`��6qw|�o����s`v"�~rq�ZP ��:�[&t4kp�jE]��Dߔ�Z���_ n(>PͰ���$iQP2�̕X��|�8ټ�Y{!OAC#�ΐ�����qC�K;G\bu�뻧�!H
���xȷ�3O&��y�H�;3ƈ�4Q#��h��	��k��b���,6gef}���ڧ�[��a�۠	���{u�?��D�; ϫ��OK�����|]O�Rb�D������&_l�`L��0	L�`�i����f�cE���%�CF�E��!��ZO�c����Q����j�;�ٸ[���8NT�ǜmf�Z-��@��h��X$R�Psa�^L�A�s��,��+Y�3�X��3Л�O�L)@J���R:"{�Ht��V������IF�q����oy	����B�����?�����u��ـW��߿ښ�o�l�P��I-(�,D����B׳(������R���c���6l����g��@�r�h(��Avs����º;�M�lf����>:!���xk��e�{�ĸ��l�ģ>�w	՗(@�+����/	t1�����Ȃ� �0�1ܿ~E�/��v"z�4>G��$�Σ2���>H�;�ȱ���6���ا�z���j+7�8ׂ�B�Fǈ@�����Z�<��}���K�E��P�����s��ko"X��    IDAT)%ղ��q�@x��K������"P�"�� _3R�}��q>�j���㎁k6́r�ݷ>.��}���_�����#����\p�py0ǣ�����,����������}>��O���?;d��GDp<9��h�b���귬R��~8wY�]  7Ơ�iX�R+D���섿$�
��Kbv@��˅�ϧ�P ��ӻ"�E�N�qRlxd�G>A2p2l6���Z�zTuł�cC�lh����Z�����ED�`,��;b�_��3g��{���;�. �Vyp;��n��>�����o�?��a�ȏ=w_�������ΖI���^Xj��uwH�uA]��v6'ٴ�������J���0(r �o�ān��̦g �����*�F�+`�4�S ���w��u<���IU�t���}t����N�s=�מ1��%�Ѧ���ψ�:�d�u�W;R ���s�2w`ts����Ttt�a���𴥎��oh��$�x�F��-�Ev� ������(nx�D
���c��FF(#b˽>ȏ�+W4+tfK��$n�"!�$,���Y�i�����e�*(%əq��F�=�wtT]�Z����2:`A&��yi}��A����6GtG�����8�4ʤ��
|i��[�N���ϧ�R�T
%faԙ��>ӎ�n�	퇝Nn�8H�<t�?p��ҏ�?_J���?�� O��9��j=��f����J�� 2����ڌ�G� Ӭ�����>��I{��&I�B����H'�n !	2����џ����E��8� /:���*V]p�%}�󠙚�)E�y���]�|;��ow�р?��]�7��S������Ϯ�^��Z�z}�!]Ek�R��a��{g.E9�vaE5$�	�V	�w(Fw\�����	�<����g8������L+�D�|~Dv��f�6}�Pu��A3ǵw<���n��iݚf@ ��zZu;,�9<r*�:���o�wrhx�{k!����/O��5F��x}n�����$R$:Z�\�-1՝��#L1�tC,���ѧ����Aű( ��]�br������ޞ����r�lV���L�sµf�f�>���?vߓ��%�#ӈI�����[ &Z$��{�����E�ùvj!B*L�4�m��v��d4.��-c���������=��`��, �Vܙ����oݜN_�9�nN�"�
+���R�uȄ2;B�EeB;	��P�\̥��!�7���@M�����n6��i̹��oƔ�P��q:Ȩ�c%=�y#H5��Id!���d��d9��g^Z
�R��;��V���Ç�W2�%��5(�9"
�,((���T@)QT�9-�Kѥ�夢/�M����ƿ�Ϗ���6*�.��C��lc<�o�߷�vZU���Zv	bQ�!?sr�I�J�w�u��A��|�XO+ʲ�E�ͧ}��r9�mgr`�(�� R`���ՂRxQtg��[�d�˟)����>Ь�0�㎖�"���4�d�'L/�D������;O|�j݁>2��&��h�� ��D�m����Ը�p�`���M�Ou�g��H����(���U��΋�,�=j����=���uj���%��KD�����i-�L����p?OA����")qN8XM8���r`o�P��0��j�J�IX=JC]R�tt{zG}�����e�G���� ���v��,�� ����Y�Y�f��ݡ7fT�6�jqq G	����c��
�A�=`G)�9���Q����7Ý�'MM�{�N�S92���IS��-/`%Z��t�ڧ���
��	="�b�)ԧ��̓���@������銨{Q�94Ƌ8.�Ьã�uW�f0��ECfX)��V��@���RV��Ӳ����7��r�ک�%?�8�?3���?��Ϧ`?�G$`�S�{3{����߹���Ko?q�._��zz�պ,w����i+}1
��๩��|�����;���W�p5C�+t)�}v�k�Lt3Ƭ�ra�Dn��Y��3�A�õ7�f$&*�����!Hx�0�>МH()�9�u�ݤ Ȏ��fe�A�]h�D�#��q.\�+���E �:���e6�o!�$�+�O�]O-ʍ6�I�=���F@J���ni�L�
��ǀ�`�R��7&��:2"�!� ���-��*������=��9����a���)F7I�0?_���P*DbX<��k��sl��5@K��d�*���~�|�B���~�P/�pIu���n�����3xD?�Ď ���x^U�qZ��=�ܜNk�"3�5џ��~��1z�,!���flpv��FLG��;z��R�Ȅ�=|���K-�VM�N� ��1-)'�/!�	�>Y�a@d%�9|84*VFP\#�D#j�OK�}��i�;M*,��9�?�`EC+-;�_b��ɱ�"8��HVT�N[10��u���@~Þ��R8��J%�eY�e-E^|�ao�]>���q<��B��
\��~��j��ak��ְ����>WQ�\��9M��n̵@��6�ؘ�h���J���[C�W2�q��͵P�b		Z*S<̬�Ь��"���U�n^��wjܣ�����6��O.��Od�m��mo�܅���x��m�F'Z��{�h!��3��]�#��2���#�	�ν+N���U����*nDq�}*"�tǱ�I�2@��L��=��߱V0�̂y.�N4t-�+��(}OB�:�d�g��d��~�h�x�Y �̱I��\�e��9"Nޅ!����� �*sS��@o�u*_���*0(�h��Y�n������_�  x�#��=������������z^�b7�!��.��BٚF�M��g���r�n7���- _����������ՙLŅ!�A2q�&�n~ǮI��M��P��Ĩz�Ó?�dTG3�@,x"�o��Jk؄�bs�(6X�s�Ax/P�!F%�M�Ё�a)B��V�(S�����
6҅��M�q�3�����U�ZuQ�;�ܸ�1��;�/*�����o��F�����C3��>�{���������޴�=�ѻ�-Z�T� �dLC�3u�Ȣ0���T*m�[�v�"�se��(�ֻi���#��_��rȴ!^4�.a<VıFw�NO3�	BI �&@4�C��9��ܴbq��٘�g�e�/���9r�Ckt���7�.9�C7C��͹��fI����F��F+���
2����DnV)���]pRn��������-8�0$*\�RAe!���E��8@!,�1:�|�s��p����cw��:4`�U`�g�S���ȁ{�0��X\�cS�d>���N�'���=6����w�9C��������~�:f�K�&@� ��#���{�h�B�+��r�o�wXt
���!��.�R���e������}f��.� �f~V�OM�����B֧��2 ��l�-ϳ0p�;�T�=fQa8��D=o^��; @�d0�"�iu�R�]�1�\G�DиȨ�9�cx	|�󁥰�/(���N�Eg�I���!�R�K)| �{� �̙��.U����I��RU�W���zmx_f����xT|	��G�X�+m�\�^mf�m��~��?X���s�o�����w��+_>�^|���櫧�͋��%ŝݓEלݞ��B�u����Rk�#0wϟ�˟������<���#��}���mx�|f�Ƴ*��b!?�o���ѹ�9
�bPU�UPk�pŐ+��;\����Z�@K"��
�1")o���U���I�]f�,e�o-�<E��r�i��������4N��D1ateL�:-�EVU1�ބ�;�U#9��1���οN����(�.�у�HY(��1>̻O����G�����98�.l�0!{�P`>H�s����V�ڸ�fSr-��:%��s2���
R�����(��0��p�k o3����{?�W����"r��=l4��EŊµ��ƮM�H�1c�o��x�������j ��e�9z��4��d��L�X������,i�#�����߽㊱�@!C ���bq��*+큈�͜sZ���Q���;L6�~qnzB�f�d�+㩌.!� C��w�(#�\=0�`���b��}����X+�E�ќ��,���o��;�8���˥�j��?�.[��?�#7 �h���~�x�я�s{D�E@r�A���^���u���8�+���ȧ�����7_{�._��i}��zz�����Ҿ6�[ b�@�`-',u����:���v�'k����-g\�W�y|�w_�Bm�\K�}u.�16cY���@����c��;�.qX<����k ��r��Y����g�9vX��Ԃ��}�N�"�� ���xYe�o�yH�\�*ON��h��Q@��72�W���`Q<�HM����� }%<��&7*T ��e�(����"XAEJe�B�Q�U}߈��)i $c��O�=�x�qB?�7�G��|̅M�|���@�S�݈sr9<�i�/���AZ��l)���ަ2e ������s���냬i��c���<s�ũ�o���kww��ZK�;�7CD�Mx������c�hƗ��R���'�x=>H�<Ӕ'�O������4��e��;�P����Y����������%�ʢ�p��bJY�	�e���U
yR7Zl�q���3k�d� �NtՀF�`Y��ͮQ�{�5�7T/P] _X���.�'��m�|WKe� @����ֺ�R�"xn�j��oI�O��+����b ׳�X �.`Ap?�_m����7���W��M�oZ��r���R�%���s=ᶮXb#1���g6��⮮xq����	��l����_#��4�R�N��Ħ����ٕ�����
�A\kIN��ٙ��H����P�?K���x̃�����T1�t��qSM�A�ZS����Zq��8ՊS  ��C �@+('�NYA�Fs�͵�2�8��EuWD�><>�!+G-'-��EU�P��;�4�.f��+��",�}%oZ_���9��D}Q!��'�T������,5~�3�=��!��,$t��u{si�7�ޏ9 �S�8���p���J�������77���V;Xt�t�G >Q�����}�����QxD�x�I�Oi����Xe���,L���?�`ɂ7�Ĝh���N�7����5+U���χ�Unj��G;�])9�1EH��a�
;P�T�7�Jj�XU����k.PPaF;�������Ts�g�~�T2l�0l6C��i]ϧ�I�|2̖��"�|������"���B��F�� �;�v5�����n۫�׶��6\{��[!��^kYp�B�>���	��;�u���=��t�����K߰�h�镒�w�9b���r=�B�\8e�I��ǅ��zZzg��\��M���{�/��(��ss�I'QIO��e)Y�K�(�%�e��[���P3�0,�J�����t¢%8U�jŘN�P�a`�K��������Q�^Ko@��0G�6:��$>ע��F%�Wn����=��G	g��(�Mj�^��;�2�_ߓs�����c(���G��f�V�}Đ�ĝ'��p���<,]z�fk���� x�A@��G ;�{B�;^�K��ۛ��yYV�sdGF^r��t�L���d�0�ª�m�"h*���c�pi5��P��~	w����������UaR@G�� %��J���N00u���"6��|I 
,H�7L0�i(b]��@M�7�q܈)y� �rD�XVEqBnS�
Lx�F,�q��f�&P4 ?7�4�"@�4Cd�mX����pa5C)����i�Oư��a��	�������#?�3?�O��/�����[ޅ��7�O��Gs��_>�����K�^m��w�����_>^�öA�˩.rS**�9C/x��������ˠr�-h�x�7�.A�[\P,<�g�c�{W��<���\bl&��'�(�cs8j�e�q��ͥ�^��^�f��z�30\n#Ew��V�')X�
G��cт%�Y�~�9��o�`x�k�c�����Pyn�ƙ{�!yKi���I�S��c��3?�*�q�2F4��=׹, �N%�sM��SZ5�|����0?+׫,&��G~�(U�����	���p�~����[������ ?D�y9��ݹ�oޜ�_�Yד��ԯ�ydЇ�nVa؋�dq&TC}�N1�����mh�c�̪�y̡�M�?k�� Ei�7�L*���^Y鍰6q��)���"Fٲ��=�c�L��7v��@9v0A�$�lW��P�(
�ǀ��yk%�L ��!)�0���
�0��j�f$��0::&�bF�(<DtY��ֲb�s�&��+�! �}}���'�  ���<�xG�X<����a��2�{�c���k��նݿ�\���b��]�uѢ��H��#rs[�@�Ɔ���v��E�ׂ�!W��R�p�
�T����(@gP���;A$uF�w(��d�MVĳS
FkE�׃���%�FO�i�-b�h��~#�b{��̀~_x&X�6:���9���I�3 �n��߱��sat��CȵjH�(1	��V���Dc2Pg�5�����q����#���WY�;?c��!�e�Լ^� �ϊ����>���f_;s/�t�VR��*��h pA����g��7�t���ݟ�Z�~{Z���|>�k�5�IFk�a1�z
�?}����΃$��(	Y�꼩�Zw�f^��W��!	!G���3اX�z�Q�B�j�3F	�ǃJJw����|0l�g*{�K���Y ��Ί����1a|�O2.��G@.����*N/uDLs)8����8;SE��ǭ���3�"@��$1�(��DO ���";�5G���J���Y������`���4sd�����o?I������x�/�c��,�q?�_6�Ϯ�?{l�p߻��^q雠J]��"��)S��J<g��c������[<�����u�_@�]�K��l�Jt�ff,��aY�2:�_ ��h%�%��Pr@�
�M�rL0��Q��J  X��<��J�opv�ct���F�Q�)ʀ����憋u<����p��͙��@C�҆cG%)Y���+��C�!�����Db4͖�,�R~]J����r�ss�k�� c�#d-7XO���^���w� s��p�x�Dat/�r��"N��{�2	�d�cr/�c�\<���Zo0X��%�a>Z���i}�:X ��%=�� x� �L�~�f]~������u]��k̲�7��v�ُݭ4U�N|�i���*k]��>W-�� &�$RR���8�;��e�g1c�Y�a�#,{C+깓�9n�$��R��0�h�Rv=�1�N��
��LK����c�]7w
����@1�\�(�� [ M����n��^ʂ�
V�Q�h|�� ��N�OvG�f��ڋȲ�zZ�EUn������6<��������~�a6�/:�Fb�x�z`�	�����g��ח1졵�u4(��j-�VɌ�TМ�"�x��4zq��Wn��.�ঞ�p��f�9�O�Rc�؟gn��F��rC.A�P�%���	������ȱ��f���&v���O��%eFd�җ�c�^ ��l�&� 0���ǑɁ4;
�HJu�'G"���5I��5ǹ)���z�SrB8���Z
�Ī�2+��\�=�g��Xuz��܃I������^h���'(ɑ40_%M	�Ʌpۋ*�1��F���w����x{�'�  x�?�(�/���/�ݾx~s>P�+�{d섙�~���:��^I"`�*[�|)�����^�� ��0',���z!����i�A��т�ǹ;��8�,Ι�EP��]�9{�]�V%��t��(3f�    IDAT�":g}��Rs��|,�3~���PJN�$�Q`.���2�����%�?���FB��y�.��}���q�Ra ���m��hY*�u-벬E�������+>���@t��?��x��q<�.d G��\<�����m�岵zٶ""�漖Ӳ�*:�Z�0�E�f�5��n9a�uʇ͌�������U+��� 3T˜(��I��q��u�3��h2lG4	�X?NRnXfi>�����܎$��*�[R��nz%?��9��0*��'��7��1z ��d#��aݛ�c�F�\OWS�PZ�;^��i��g�8�Ø2�A'��bgԺ[0�\�U"d	�ywσc#��R�ߛ�����(Yww��^�} ����c\�،��8�9���l�.�/l�]���a����=<|�,�� �k�h�Ҳ�o<�9�ų��R���F�i� ��N8I]�>?�c���U��2�~g�&��L���,�aF��n�&�{J@w�S�f�nX"�2=�#UX TW,P�d�̫�<�Dn�V,	]	�h�yY�.��p3���iy7�
�RQj�����F �F �n�JP�V�r��;�A��5�CS�.��\W��i�
��D3���8��VϪк �h��]�cP�Xԥ�u��������W<���F>_|���q��F����6 w\7�כ��һ\�-�h�[�zS��N�,��Po^�RQ�@�P� �.��
�B��;�Fn@$�&R(��D���z)T�Ǽ�r�cىj<�� :�9�N���O8�|�%��85� �qi_\2��"�,6}K~�d:yK�������Zӻ`��<:�[L8Bk�{��s���"C�� �VeGd�쓕?�1�R4�ľ�����I�/y3�ڳ�گ���rt��6����Z;B�\��a&O-6
:, ������:ܾ����=X'�^ױ��|���n��{����},�Zo����	���u`���Z}
�A(��ɉC2�H��lF��܂L�� ��f��ԫZ���tw�*԰.%j)wLg������:0
���hY���Fcf0����܈�Y�nw�(M��
P�����9�y"���%�wp`ᲀ��������g)X��b�ī8��1��1����`��p�mV��^��|>��=����[kPU�����on_�����l��n����c�л�q.�:x�vL$�!�<^�]��k{�p�"�/}��k�s]$�](���"��lk�lhmCYN(������1������6Ѝ7� ����܃Wh�偪�D������a�W=�u,v�d�KB��^O���ȁ��Ar�h���T���S�b�X�5(y��8Hʳ������Rc�8[5h���>"�t�A�C8�E󓯙�X|p���9Ǎa�)k����%��a��~�PS�0�w������C�]���)��8�؛Lٻ	�ad��FpmOC%&1�&tr*���fP��MQ��'_��x� �/��o �f�f�}���v뭖�r>������\f:����EhO�Ώ�(a"yZ������g�s3sE��Y߻�E%]v���Q���>Ԩ9y[�08� Z���\�U�l�WT���[�����	}��At�n��
-� >�\�2�J��u7Kkq��������;� #���;|8�Ȉ(����@�����.�H3"��+M9��H�oΰq� m�6���TH�r:/ϟ��[n�p����E�X�`�<紱|�z�m�����]>�p�/�/m��ކ}������_?��‎(���"n0Ulu�ql��+Fh�_<�C]:����n�}ߴhۚ�mJW݀�\�y%�a 4:r_�1 p��cB�bnV���I4��M�c^�Iu�c1׳D��9��G+1MQ��!��a.���R�y�Q'� wS�?�v�R %`�if�~eA��*��"��b*$1>}��)�V��&�;.�8`w	�c���]���&��b ��&�<H�ϋ#�h)a7��G%�#��ra36��F �,Է��r|��s ������[}��'���Tj]����^g��> �0�$x o8L�Js��{l�0�3��gz�y�֕�A֩�X��N2��P%�m%]u�taNTu�<��A� /�:ظ�J�s.�N�= `!b�����`�j�╳�6��^ߵ(����
-��GG�����C30�B���6��:�����^�Tq��gR��!9���kP
\�9 ��nh��Uqss�������F(PΧ�s��N/mﵷ����E��8^�w���	�n�?��j~�⻟~�ݼ�K/�~{^NJ7J�Cÿ^Jض��U�4�Qܭ'<;?Cs��rū�{<�#.>������Z*r�n>�zr�[�����᜛G����Xt����0ax�������6��$\��t��؉jي�{#�(����EH*��J�z&�fN,�D���e\�b�JA�0���$)�d�#�帣D���D�g��Dh�@(�pP��9�0��oNQ�q 0��$�ߘE�Yg�a:��"�+�n��#�)��f_���m��KTM_��^�Q  �G 6 ���g׶��\��{n}�U�Ԋ�,��>0pgGn��-�Y �;呄1(��/^8��A��/�bYhBR<*k��p�S�7�pU�B�oa���\�V�	���B�q,��7 PJef��/Z� 	-4C9�|�4��$@�KN�N�����0��$��V;y��
�9�c��P7���9VQ�{�&�(ı.�sU,����;#X������S�(]��3OἮ�c� c�����R���sq|>`�cc��8���Y�����E���\�$��W���c>�6��/����y�EC�O��>�.(g��ƌ�"$��.8i������@���<�@�R);|np'dq��������7� �8 1b @�B�G��6�����z|x��=7v��2m���G�˩6�@A�7%w�Sa�EK��$ Z�(��!�^�M�血���y�9�@��X $p2�k��=�GL���#6\��?
 �N�Ӳ3wB�HԄ���&��l�u�� �O�08= �3��$9�뼴i,5���9<L����!A\'���;�<>�
 �o�T�ܙ��e�����W�t{ss*ZR�7�B�C8MC��hԁ3�r�:�]7�~�ñ�D�$pH��-�=�W/.!���������Lc���H�K_���@�K�xl\�����ckج�c[v��G'�Bb!��
(��F�
2Q���eY��%��ƨ⴬�=�p��p^W��?���9N���� �f�ӷ��b����JA��a(�*�����-8邓T��Er�h����cq	�P�q���t�����ZY��v���~����mr ~<~��l�F���=n�Fv+f�s��T��ʄ�=Hm��W;���?��G�ZP���0�\�`�C᮳[������_�������k��!a~8&�?�E����_i��I(��-;�������u6E9Z��?�k�G�J��Q$0�r�/�X�H)�=��e��Ap^�,*8�~J����S-�9�qs���b��5Oǿ��r���KJ�1G(��$?��<'�����ڱ�J-��$ �f}�q�)��'�u)��(�|"�>[�)t8�a����kf���ȃ���G.��i>^om�Zo���>�eA�T}$b�Y����1��w�*�_��͞�UfE<��$����b2�|ԅ��JM��LR���pZ{0��a����� �m1��@-��/XD�����`.�N����N�SŴ��8����Qxe���5h�Ѻ����	Hh	U��(�t���,XB�(�e�*�`�U�%����Ŏ0K@�Ќ����bq]�jA_;�kC�4
�4�Zʳ�����cì������ٿx�����}�;����Y̽nr��:_i>^���T�(X�3iY���hlUhUi~�b����/���9Nx�.x��/���pݰ����QE
����?�F� a����Mo܏o>`qнOT����=�&�uƢ���d<=)cS�.8f�r�~aE���q ѧ������l ey�������,����D��d�$`3�%TN�3j[�!_�T})ϯ	���̌0�5Y���/@�Đ��}Z6#
5��`y�t��Oș�@��v�8���y�I�F�� ��3�<��ա2A���� x{޷x��x}��uk���K�2Z1�X��I�rI� 7,u��F̼�I���� F�%�O���]��C��S��Q�`Y
\
�SX!X�[@݌�vq��*0�V���#�l\݁1&[u(ox�����F�È_p�YC����(nn�0aۮ���Z\�`!ɚ�?�`���C�=�qZ(�>��D@�,B2Y��q`/�
��Q!������j�̵�DFE�nt�	��|�XW<�v��.�~,�R_��3��Ǜ��0;�o����Ǒ�$�����jk��7�����?�g�n^|m��ϗ�Z�%�]7f�(�ZP����e 7�g8���y_q+
i�ڰ�/#�Ei��[�}�t$xo����x�;�����_��տ�/MI]��@���A�.6y�j5
 n�	�{�D�Ϛ�a4t��!6t�"*�5���^
��ӺLٵ%̝��(ҹ4Q���4f�U��eB_�
��bk��&�9����YG�����'������c���!���'M��E�r���`&�|�p��w���o�ڏ1�xU��7�Y -���w�����[7�+>T <-v�O�[�����0sS�a4�!�_&;��]V���0I
ԈEr���o�osf�P�5 
v��3�ܼs�K��d#yax$d�@�A��<��$�,�0p<�&&�x�j���L}��u�
��[�xC�^�s�`"�\�@�m�`���Pa�^�RQC�"0�� ��X_��F0]��Ҙ򪆡�s��$��X�2�0$��ո W�)9 �`ԩ���fQ�ץ.ww7�tkf��x�a�Ŧ����N����q��ؼ  |�58�uw����,�uA��'.�"Xj�+�΍��ʨ8Ղ�����ڛ{�i4s��Żh�E�Fb�͎�����!�:�N�O����p�_����/���`B����%�y���"D5��D�g4��՜�f��$��E�x`U5��@��B&������'!�3 CBQ���a��Ns6���@U���>::G+���/���=����� ���~
��~��!�L,�"������->z|~�T����,tx�$��_����=��@Mx�9ӌ�Y��p�C� o�ư�m���zoc�RJ��	!��e!�G���ѯBG�$�e�n�s<�.���E��q�2ci�!|h�!��{�a��ao��܍���&J��Н�
�b�d-������]�����	6��G�:S�b��$>��J.�d�@A������yX
��i�4�Jģj�"��|`INEf�{�����������(e(���{.T+��V����+��M7��a�����X�e}~w��a�'��bW�8���M�#)����G�Ӫ���lk�̊�h���ŋZ��8n�@ձ�ؘ����ZQ�VJ̮7l�9�XJ��[t�R���x}m�a�`�������-����E|9�������?���5�/6FX��������W�E��J�%oy:����w�O(��iv����}��p�s�wA��BO����w2��G�!�IԓR�Q��(Hi<Ȩ/Z��h��8F��H�k�+#��χ3� ѐ1��_���k��s���  ��?Ɉ�x/
�_��<y6c�$f�`�-.3�����ҽ�;�Q���o�ar�?p�����
�E@7�X��m�ч�1J����Nh��_�)��ky\(d'������7C:���X�T���SVt � �Ps`�b���6�,�?4ѐ!� D����rOF�Ʋ!�u�n	0�]$�v�Ykqh�ݓ\
�aC�G�Q�S����A@'QG	
#C�ipa�����D�4Q"qI�b�ǁ�u��H�9CW�y]\4�X����Xq[
n�/�m�lf����2,`5����f}qk_�����Ev@�j��y|����"��[�? *E�E����UY������2���*ƉPv��6\Mt� n��������%^�y�!���-�Q*��,cp��:������C�w�I$����^ Ɍ7'6�2;y����������p#��ŧ�4�����5�HZ��d��(AD��9Ǫ��1J'��as�q�ǘ��L�9��T1:�p�e���5rĳ-��������<V�E����?  ��?���҅��sM�F�	4.�C����Y�$j!�!F��dDN8z�Jć��5�k'u���U������ x` �v�u��� ��W��	׶al�8N��Г>�&%Y����|P�FV�4�H�FVu䩰S6Z����Y@��v`彻O%�wG�L��XH�}�V���OƯHC�=�����(BM�{0��g3t��Yz<��Y~(0�$�x�rj��hW�N-?l'ۘfF�#�X��}��Aj�ԂQ����J]�L��U	1�ց��R�h7E��*��K�W��Pܬ絟�/���a���1���j�́�&~<~x��O  �K�"�R+�j����J��% �Մ�?�%UP�Bs?cxW�报���͊���Á������#�UH�-\^��o�ͷF8���~�oN=�;7{~:h��^�:���?�?���Ր�iN١Zl�S_.0B�s��@L΄>�A.�*��x���<��7���1�(=4T�@"��*"��Z0JEw�l��V�j���+��f�:C�������_ �[��QgH�§o �g6J*+�w��}^��7��$���0��0^*�sO3�\{C^^���ԯ�|�Ǉ, �/@l��ǰni��]
�i�r:�?<� �y�ݜ�i$z���F��AIT���]b��9Z��|Tz6;N�}�,&0m|x��.����q>��7�������n-�2{���o�@�;��;�|�Gl��4�K�d�|/D*vT$��`M4��0ہ:ᮼ4�Zd�f��0	m��]iTNP)���́��9�(`x~�X!X��}	���&� ����-QH��ެ����姬��nx�� G���Q����O) ���,�j��k�u�w�/�cq�#lL��^��(�'�:�RSQ,��~��e��~��7�uZ�D��`:fڄs����l��u����Α�����F}@��)��fB0a���9��ڢ�Y��%�� P��ƈ���lh���o�/H7��G���9F���I��(�{)��9�QP	��l��F��0\CR��=��_���o��&�S�g�C��T1ˑ��%kx��w��+B��9�tL��R��m����������)Ǘw|���U ɀ�̯[����lx�����zZì�zҌ����=��$�!yz\�44�"��LG/LI��CcHC�<��I��W�TwTAc.@�����mg@z�_� #y�=_��·&Q�4n�t�S�ް{V����$�~�	���!u`�& +(�+%���,b�38E�����Z{><���s�QӽB^J�m�}�����)� A�`#�?�{��Pnp:u�J7�ɦ��fvL�ʑ@ދ�BQ��㋊��J���j��zZt]�Eok���sܤT�ܔ�4`�^�P�B�,��^����(��k|���k�q�Пc@p����_�E��஌��SC�	�|�mg�_��_���[��H�����ݠgP�P��}�g�&"I�-̶�l��."�a�M��a<���򤋓�����\,J҃�h��pv�j��R9h�� ��qpn�̏}��~�u��������?>";%Q���    IDAT����SV+�M��ƪ�EJ�/����j0��_4�
���*%�R���� �"`�|��K}�Z��{��ؔ��H)S���Ƚ7M��t�0��*���<`2�'�<*�I�(_��Y�i����Y	���
.��d5���=J�f�5���.K�xl�*�-VV���b�p�F�����3�8�2�(=���Bf~��K<�I$̙�B�$S�6�E 5��nPt�眻!�[��w��+0��D�mq��Ѱ�t����7A@�1���R��*뺞{�_kn֡���#� ��(�x_~,~��w��R�f�߽����y���=S)�Ro6ql���R�r��@g���Bb���} Js��S�7�B���4|����ֱ�)��|Aw�����}�c��XĜ���!��o�W�o�M�������v��c��G?g�\-�c����&¬y�ۜGG1k��#6(�j���X8�.�0h�� ¿�N�Bj��O��eǟ����,
J\��' ǥ�D��*Ǐ��B���?�E������P��$J�7Gy̞�SOFD�婒,��{G����\�JA�T�ᑁ@�"��� <E :�ֆ?�6���Kk���R�Zʺ�,��Ze�����7�b����g��&����$�03��S�358 �&�@,P|߬�}�Y%�p� c <5��P�~�8X#�U5��;�HÈ�A�kq���}�e�u�[k�}ν���ᐔIZ�>lQ_�mY6� �'���I�R8n즩�i����&p�i�8�6�E��5���V�8� ��݄�L}T�$���qf8��{��{��?����R6�J�-� �o8���8�������G��.�0���
Ŝ4L�!J����L�7P8C��.�PEIC��h�-��=�<HT�0P	N�bE#B%� G,
g�S��g�a�3��s�ܚd���sHx�J�����T�]i��p�#�� �O�U �I=n.�Q  H���c��T�!�5���&��(FPV���;g%��B�.��H�H ΍�T�p4f�#��z��N'줅C�o���lt�f�y�Үͽ�Ņ���i��p��ߏ����DXB���w�/M@I %FeƮ6L-
}��v}��S��n\���Z'R���b,��c�ہ[��^�s��z��Ǳ���Ѳ��a�1B�Ȧ��Ξ����2;�:-���w݁�{��ׅ�K����{A3��Q�+��cw�c"'�|T��!-����F�1!��jGX�#�]�[�J�&( �}��9 @��Y��4�6�f0���s�BN��fN��Q�uH�C+^���p���7�ܘ~��Ʀt�!�~�KOR�)�CWAi�}���y���y�&b�{����}�u&*b��� 22�HS]*ծ;u��<l3q�"D'��Ę�+!�n�kp����(ųu0|fw�jP�&`Q0D`s(�(����
�$��VGb��)#�M��̐�???����e���<b(��U�6C�!'��\��mh������T/4�W��ӳ�)��sݕro���F�u|u��͚�?�q�����=[�{L��c'�q`Ϋ�^󒣑�!
��'5P�`�q|�ka%�a#�D8.	�7 Kh8k��l�i���O|"�4Y� ��B�����W�@�8������7~c	6"��$(-E�D�_3�5��`H@*.;n*��ж�I�����b��`��~�� :�{;����A[Od�E�I �{$��7�fŃ��4�<�9��RB��L@!�@�2�tOrn�}ם ���� p�~?��W�y-WR'1�:�>+���B�#g:�|讃rvB��t�_�?� efd�h=���6%/4@஺۹��ն�gS]BA��Y�p�8b`�͘�	_� ��E���=&(14���c?���]�|�gj����'�Ϡ'B3A�q��&]:��p��1�qN�An���oQAZ�!Љ����8���,nĘ�w�^�t�/
(*�?6n��z�a�s��OL��{��9�%�D1�"��8'��t&�D�:�Y�T�i%'a�*)n�&���D���2a��Z+�6�29����ns�p!i�zT��HM_#���G����(�w�ܝ�My��+W�<����ŋ7r6���9�z��sWO�dN�X�~����� ���[4N8� 8;A�|
u�gf�2'lVk\h�� ��G���~�e����o�a�&�uvÜZ!��؞����������cR�����x�Ł���m�*c�д�2f���0���h����s
N;��}�c,t�לX�|�ꐼ��Z�A���~����؛�X[�I5[r���q:��R�����E~_O_uם��ß�8��튼��Տ~ҋ�����i�%�J+7"�Ĩ ���/�q?���@ɍӂ܈(,\A@�81{7�y�{�+zc���z �~�=�h���tj�N���7qمaĸZ!m�`0L2�3��Q.B bC�^�f��e��I�H�s�|�� �yxbƊF.0U��#�o�n5�/�p����x�;�������CX�u������4�v����ľa)�]s�� ͍�<�?
82�A�n����H"_0� X7��XFb��'X�&��:�j�ɉ���Ȕ;V��A��� ��A)#�A3D*D\Τ����w����)��2�<�|~��%#۫w�S}�"��J����}��y1� J�~��凉���v�ʕ� /^,�sn&Q��Z��ՓD�1�ݯ8>��\*�]��ӊ3�b_ J�![�!CU�C	�1ä�I��͸�;>�ũ�-A�SU��V+js`�fhk�w;|���8��o�&v�בc����Q�8����n�]��2G����o��
�ܞ_��k�aJ�>�L���*-�H,��:O�B�5'	��	�A�C�<��>6A�kt���C��$�&�"�rK�I	D�H*�����e0 ��
р_��'�7��X��:|����dy�D�����[�6r����%��0�=:`�e���٫����p���+ ;��P1��YmҶ�	�T2��o��&��	�6GG�;��:2��L���N.I94�����wt��o�D@�9%ōqZ\�ʡ0�w�������k���3����sH�����q :��2>�;�/���y��l���,�I���y�id!��"9�������\o�	!�N2�%[\�8cs[T�0i���iP�T�Y��	�/�(3�h0E�����T`&��jH[C����M�"��	e����r��]�<y��Y��"�����_��Z�z��O�v��_�'�r�J��/���cˈ��m�ۉ�f�M_�]�]\�
@./%9�
$I@"�"��:�Di{*צ��M�?����'�)D�V���&�Z�j�4M��v؝�᝿�[��~0 ��6�D�Dx�	/�r��	M���D�,�Fel�ðSO3КszbӢ�;��3��$( �<hv�\���qS'��g�}4`Q K� ��ٺ +8C�V!`±�c%%�DŮ�֪�̼��;���>�����}�����|�k�g�=gE��UC�e`��N��m����JDay����ŞAC�^ ��È�o� p����M�l�R�Hk�F�����p���x������?D6��`u��g�9s~��9�͛W	X� <��ۚ�h�1�I��+�PD�k���"b�^d��J� r6�j@d X�N���K�ծ�Οb��Q���-?��s%qX ��"����ܣx1?.���ap�,�|8�E���k�����M�!�4Ð?23X�;�@��%6'0RrRи��=�m�.]����2ܡ�#Dȥ`�2@u�����'��9������G�;z�? X8���+W�����\�re7�3��s7�& ��Z�3WOtV�3m�~Յ��n)e]L��ށ'B��!�pw�]�4$s�����i�?����߻����
T��7�i�CL�'o������.m��a>�
��V���sB	=�F��`ͼ�H�^<��ts�{(������Em�����i�hں$y! Z�]/»cY��I�ҍ;�|Q�/��e�����d0r�����g�*�{��`ˬ��޾X �����S�=�����}�����{-z��q�Cv� ���gi >V(�b��M���/^�⁉��h�=
Б�g�|Տ� �&� ���NMM��k��԰����G�ϦJ����e�?�1��]t�F@B�a�	UU���f�&>�ӽ|���ӱ����U0��Pt�,:��) �����O����A�xa
�mlj�����#��oZ�U&S��8	��DQ�[ɚP8G���j���T��$�!!��n���u�p��$�����B?�^��x�j���H��%�`4
�S��2��Wh�a�v:9�����FI�};��1�Б��#��N5�J�+!<,G_����8��W��<��/_�]�J�����W�\9�x�⹛�� �im�ȵӸ��������wl��� �o[dw�����Ƽ}��3P8�����c3��Aĥ}}ޯ�0������u��O~��w���)� ��	��kO��מƖ��9�ᖩ����
���fTCvԍsBV�4��]�\u�+�,��S�����_J�@\##�s�{��=Ľ�<���K����P8�*+p��$Wrپ����'3&��jn4�o�W�u�W4��>������sD|�'/zzj 3z��Hs��b�V���Pz�x?)%J)eNt��G��G��&��1 ���R�Ѥ�ZE��P����y��i�1s^6;�ƼJ�'׵��X���|����h��[��n���h%���B��l�D��(Q�ݤ(�0�3��Y9��^�¼5���$6��wcr�oq���'7��l�9bAA �7u�єr��'��MM)�2#94(��RG�(|����	N2g_Җ��.w�a#�S4Ђ�WKdS�f��� �۸�'Μ�e� f�]�vm�&�V]�
��"�1��REΉ�;��TS�
�fe@i���Vp�qs׿�w������˗�xa7��ݶ��^;1��x2����զ�Rf��-hE����¹@�U����Pے�AmN��\��m���-~��߃w��]��{ғ-ҹv��s��~��(j3L�Ҟ�����p�p�4�0nMQk�fU0���;�*��>�U9BQݫ��mA��( ��w��]o�G��L���/XP
Y`XH/�u<�$�@f�#�e��y ������"���kp�]w���@.�K�(��7��`�=\$oо1��0!�ye�p5@��t����rI��ra�r��� ����0չ�T�&�O�cIe��4UP��bA�!NX#Jɱ�W�&��r�z=��Ke���S�r��>�Q��k��uFk*�&����oی�4��Z2�J�
�s������]��5�;���D��L�������\2��s3�)"��"�  .�!�a!�$�ś(�@*�)���"&B��Û�B�eH,?~������b���(�b�?����z��su��`���x^8u>�� F�G��L�n!-���6 ���lބRF���TqA�w�ٕI�:�C��^ �1@�n�u����������z������x���gA�"`jM;٪�ֹ��ͷ��m��91J!Ť���C}���_~���Y8�IsU��r�Vg�yB�&h���~�w����e3ٞ E!��^�@�䛶�ˣ@�y��R�m��W���ְƔ}]�2srSbWG��#9¾|j�1I?ek�y�˔�c�%Ր��·�P�h�t���=������8�p��1�P؍�8&�ŀ��̊D�NPG�Z4w�y>�/Fb�s?������g��}�LU"u��"W�wvݘM�gC��Do��h��GJC��8�tQD��bz�3Q�o�v�]�J���UTUԌ�7���n�Ô�|&F>��)����s�7 ��^T�L�L�r@^�`��r��26f(�ZC�+T=�Z����������b'b����BG�	%;�OK��#c��@�7bH�($vyR
<f�XF�/���p��?&���VC��a.eZ�У�3�*�$�L1+0u)#(3��$�������о�܉x���P\�mpN@3ń�BbCa`E��vU K����p< I�|��"SB��t[�n���\)Pn����Β��j�%���M��� ?��߻�cx�+��.]���fp��������e�_M�/|���/~��H��]k���:ϭM�Z����-w����㣒��םYۦة�*����o}6�okm�ܨu����3��_�v�w��?��?�1��ۖf2�g� tzmHhF$X*nT��'�M(���ŝN�U �*���,��zℜý/�U�]5��
�a���C�b��@�,x;������|���Z�4*�i�m����8��[�{��3 K_3�d1~���Dx�K����Z���Z��?��w���п��5D�B���?��� �^��;�Ɔ ��".��uJ�0��E���
�B" 7�43kb��f�+GhC�RULS��a,	�P��1�s��z��Jż3�ʡ��Qn6SF�mb3r�N�(�!g��6�\���p��:����d��z��t���n��u&e �G�%�F�b�+�y�PM  w�K��7qSwgf��;{W�9��!p�Eok1W4v�~��7j�N��P Dhҹ�FF�Oa �DcC6�dN{~�4�P�O �g��{臣,���4ߡG7�����
X ͊1)�"��4eH+�R0�2VuD�;�V'5QL
).�LBX��� �n�8�lHx|磀3�� 7[����I~� \p�۟z꩷���?�7l���毋�,z|^t��f��ۿ}���_<�3�m�����j��i��>���W]�pa�<�f���V�T�[��!��Ɔ�a����mu� ����_��_�����{#�0r�kf�"�p��%�3�C�����`H�f����+Fr>�L��eaAI��Rr���Η�{�mDDnȔ�QP#Ň������̋'�40�C��E�N�8$F����X[Ⱥ�j\��|٣�]U� xʫj1-������<�\�s�~���o_��x#���L�����Uz���+�����HEĖsJ��ҭ�|���(�ה�B! ���USU/LMU�n14�}�ݪ�ZE��"`�t���7��Ą	���R47�r�SO�3q�ۡ$N��0c3�p��q�jHH�5�G��yTU�ꌓ��vz�ӳ3l�	sk0�#� �Uw�M0��yv�٪���¢Z����9	*���:!�,��]��^�ˉ%׮0%��1����C�U��^�:Z��;Pb�9�֫��-�Q�&ɋ��=�	�l3��{!���ApL0�T0���%%�DX �a�	����s�#P5��)�4�Ysb$9jD�D(�R�2J�+�`H�%�OU��/g��xn�}�+�o�mO>��?5�����i��#f���&"�t�}�K_�˗/�8���[p�]w�f�!U%��H��(�̟�������㥹���s��M_���%ٸS�V�p�.�`/|[��DQ��b�S�	�''��{��_��ҡ��2�|rZ��>���Zm˦_��ĵ�J�j��ڰmչ �0�B��������D0����B&�1�"T���������r������i���"�̋	$WHue��@ki��%�"��K��wy����mo�V��2���Bavٳ�&�ڗ~>��Ǟ���>�����+ �>��2�X@�8I
E,ߑ�p -�̌�y���R�[U�Q��1�7 ܸ�����:�>��%"�'Nb���U�ir)`�����a#D��7��賰��꼍�5���!c��aą�5n9^c5�L-%�8�pq܀q���*�    IDATm�1�3ζ[��v����$Bb1���Ǧ8�&\�M8�f��5l�}���	��U�(��u׽����/�%q8z'm�?[����l�.������^�7@{y^1 ���q����E��n=s��]�	�F��"3#g%���/�2��:�T*�֜��%����H�F�#�qBR�5U���@꜄���v��0�djb�v��J1��ϔ���Vn� �]� �|����q���G�o"������������>�z������{��{��~��Moz���/��Ṉo�ۧ���Vqφ>�I|��TO����w~�fu!'~�}�N�@�(ĥ�����3ή]�����xܥ��1���1p�j�Q�GCI@k��[���$c �U	���p����U��m���a}�`Vq/SsDs vl���㠯"���q8������R���ɻߞ��MA����~���P����z`��_-9Ѱ8��.[�#"�)�y�Нw�"����C�??b�[������}�H/�+�'0�t��#���S���-�.ItΙ79��j�#�y �� �p��a��2�8��LT�CT�������\!DS
	Z|�A(t���`�룉�ĻBND�4L�BհmS��t{�UI�̕�Y�p<�Q8"H�8Z�p��h"�rr��<���6P	B)ng���j���E9=C�mH��e8�����(9!g�E��yL�9���O3�1;!����o��[le^l���M�K�̢�'�ll���Ʉ���xi<�?//p��k�}�À�4�0Q¤�����h,t�ذ_��4мC�^e`�6�:�Ġ�|�	9cZ`<S�(#�f��0zyS}�l�kx�(���F}�/p��<|��]�=��?�MJ_��\����>{�[ޢ���gTU��5U�1���}n����?����z׻���f�뮻$๼�7��M�3������Zv"����V�m�_:={���g�X��\DTq�)i�Ψ�	��S��[ߊǿ�yd��<bf�`S�԰C�iv��Հ����P2��@-� ��ۦ��2Fr4AAH�a�M�˦@�da��fp������+�̐b���s%xGo���Y���I�
�� 1ߧ 'SN���]��=\`
�1���ʏ&�k��/�0D����B��0[nڻ�>�"`��_���WЂ{���C�����}p�.��A��0�#�+��U5���ǜ�9���!�k�x�
���L���C��NL��]KT0YC�굥y�]�ʫ�3��Ȃt׽��0S�KQ`�웻��� "�"�nu�?W����N'��l���?��n��q���1�)'좢' Y�	�dF���h�+vsuMh�J)�O��!�0QE���	CΞ���<n慴�~�@���7��^9�GЉ+N|���uB�p82�-oƑ�lX�+`���LS� 38A*��a��3K8���	�8��)�����������������آ��"���j_�`J��R��V9�]U.צ_N��6
��'�u��N wF'�L��o�7ׯ_���ٟ����}bf�����Dd�����
�#?���_�|����0��c�X��_�� =��S����QJ��?�~�1c?�Bo' N����S}�ln+ wx3i{"k���V��g�\�۞��_�E<��#(D{�_JH`Og�I� S��������8�h�N���M+f5��L+�����F�Ά��݌�4����)̭�A`uҜ����3<:�����;��Gv�V�7���k���eV����B����EL}��,Ȁ{s!\[
G���W���`�����{�E�k^�Z9�ҳ[(F.�+�N��'�ž$��b�zc�*��JN�7� ��~ /$@ߙ�TY%,+�O�@��	���o�VIA������Tc�~�)z��%m"�&И�LPξ���6[
�� ���\����&�>M8�Ν�zq��16������\�Ua:#�MJ��
�Rp��q6M8���N���G9��1�5e�n~�X�(�����n� �EQ�j`�MHLKQ`�T "�yz�?F�(��W&�����ol�|!��g�$��j��:�<��p�qI�ڈm������"�bSRgPN@��y���Cu�ǭ6GPJ0Kn��H�$�q͉�x���Q��͗ �����^B�]��"8�ǣ�>���`a:���� y����i{��G{���S��Z;y���s�����~�w�gDo��
 n���߻|���s슾�o�����?�����I�}ģ ���G�|�����Ғ��?��6�� 4��/ߋG?�0v+�B�˳"�\!�Lޡ�G�3�:7�΂k<aS
6〜�U�d�d=n'A�ë��&Ƙ2VCB�<�pr�C�KCX�Y.��)b�Z7 |��'ƕ[=8�Ԟ>ڥo=p�,�~��`: j�l�i�iw���A᱌L�0�Dq��1�{�<�=ǒ#V�#'����5��>�����A?���{b<kAl썎pH�ɖ�'	�e�8��2'���ο.<���/"� $�Q�F� � A�f.�1�e.L���}�\�gF�ز��V��=�9d��W�qt3�W�f(f����)#�+�r��n��k�]��^��}n�"©g�G���b�U�i�v���l��4��Àf��y¶5��]��|�T2TU��|>�[�n��!�Q�@�`���۟��08��	��_fw�.v��^qC�(���q�w���"f,N�]���/��nW��UTu$@�Q�04E�f�6�<��+���`M#�)�:�-�% 'H@�#[;Wr�α�/�7����F��'��/ ^�����3�7m�7,V>�����o����ff��������C�7�,p�܇C��� XU�\Q�7���~pc�vT4�х��Cޱ�[�mB=���i�;~������$F�����S9H̘��47����Ƌd����
���l����F(%�T�)�$�@�lQ�H��3�T�hHhd`�~�/��p�=	�����X`k��o-��j{|9��(h�i4\�[���]�{�� ���Ӳ���؏���ޛ���@_���X,��k_N>ꄛ�pe����<��s+J)����7��������$g�%6͕!r ���&�#�7\��  Hd�JD����
����@ �/F܈�4�	���eb�3yl�r��g�+ k����踵��;�	j �	9;�@�ן��M'ֲ�HP� s3a�Z�h���+�	t�1������a��A��q�@I	:�0��R�G�K�AV#��g��݌�*vj����lVl�S��� 3J�Y,
 �YY���ߏQk��,��G����w�O/��ԋ����ڡ�H[��nh���`�,��Q�"��������5V炒2�\k���W�1%lfE��!���+��Rc�t� ��!�@�]��TƘN�bx�J��u��؋�o����Ϳ��n���_��O����K����?�����������DU/��z�{���f���/>.���>N 8P��������03���������х���K��v( f�%�*5QR34R�޻ߍ?������"_?*Υ�5dΘRt�d8�S���7`��SH����'�&�0�b#2�1Pk�p��p.�k�&���ׇ��S,�>F��t��MQlb=�<�^;$��c��^��o"�uٱ� Ww֑ H�5�׍� (� ͛�^������#'l�vkF-H�q�@��z��_�������H$$Ա�)-��2�582����g����L��)]�_�����z��@����ϼ���m&N�c�u�������	Z�=�´q��R��߂i��7�EsհB!-@*� ����Hu3�P
�ق���/9��=����z(0r���M�u�O�zVe�4�� �	4;1OաGNN��"`L����1wǑ�βW�Cvp��ݻ�9�K\W=P�/,�u�T���� �|�e�@�z�ћ)$����CU1�"�"Sƹ�H\pڀY;�+"� �����)e�jY��s e���m��BY2#!a�����y�+v�t����g|3$��2��6�?�﾿ �*��K�ap8 �K�.�'�'�駟 ��]W�/x������Y���:
|�p�֋�Cv�RC�Q������ �̂[��"�s�}'+vz�j���hn��}��o��o�@D���)�܆$B����Q�����	�Uޏ�vC���}��mg�b��H�DK�8ڬq���m'g�����l�t�~K&`�`u��u�Z��"��|�l7B���bXɡ[��X����H$��d�u�����������^D���0g��K�s/d�8���Kxޣ�����%����=���S]���R��6��U�����di�3���B��Bk�����. ��ڡ��e24He����p�6e��	)\�@�7>ߢ���"�YHy3�YR�z�Y98s�kUC�ď���'a[g�*�T���!�܎8g�������搝H)Â���M���ic�`\�(� ag�3i��W����ȹ s
����}��r�,��$
�^��IP���H�C2�S��.	�E�ҫم�ka�����ks�D�w�,QXE��m��Y�|c���Er�EC6AR�Z	b�
`���^u4��e[�a&F++��Q�0��L~��	H`���Ɉ��r�p��=}6�'x�,�u@�o�}����������� �9����}�F�3?�3��O�������% �~����p��!ɲ��~��_�kEt>�s^��GGGx�{��%V��M�v /z�{��?��u���ZH�����ۓ6׆�|���{�am�8��HLk&(@�FN�!g�6i��py��ik�Mހ���00��v��Jg����8�	˽I��q||�[c=f��hs�-<<n��fNf���A�X�=TM{.O�/���w���o�
�J;��Q0�m�v��D�7���{^7��fC���ҝ����L9�uK� ��GH!�)��;��_������`IN��WRN0�ف͒2	(�� ��A�P���t�c��m�����/$�t� J�1�`�D�:8
6y�HNda�3���F^	&Ŀ3�+���ԇ�K)ҭ.gt2�ݚ�Bu]�7>�k��~܅1�Hb���q��߉`�f06j[6�I����Vg�:!�����ܰ�`5x���/�����c B���P;$�<�Nd��qnn�a0p�f����I5 �9f�M?���jғ��b��'��"�.
������ u��Jr�'��G@���/���	�u"����+g�m mIi��jT�:!fp`e�i�m
ٷ���bve���� �pm��yv�]�w+|���#���X�np2�i�������Ї��vfv�����κ?���/綘��pcAr^��z��]�r�9�Ο?�����?M̸��~�9���u��a�RU���C������N�$��[�b��Ό`l%����ݞǒ�S>�
�&�5�̸�Y#�2d\ޞ�����b�4�&X�Ƞ���xWh��pj�i��f��f}=:�nڢ�
�n�S�C��> ������N(�|��;�N�2�s�&>�7���7������_��(6Qr�DJ{�Q�i�
�*���I��7�z�EA4L�P?'�)9�ྒྷ������1�˟����xx�A'."|�XiN�L��?'-h�'Q�d�]�k�0��T# ����_%��<�9�y��Rp\
V�7C!FI��$Pr�9w��@��΅(�!#s;�2��a�.iS�[�|�w�X0�)����L�Y���!g�U���M;lwL��ǂ\<����l���������}��b���Y9E����!��z�����N��9`?B��v�@JA�	S�p�B�Y�ƍh��?H�X6xӘ)Z�/ R2��zW�^X��j^�����3c`T3L*8�����mgp�p�)�1a8����L�k������9lѴ�����eR��Tq_>,�orڏ^�����o��[�,Q""bf��� �'?�I�s�=���lf�D��G?���@�\�aϩ������/N�Om�����1����6�����/��7�d2U"�{ｷ=��D���V5�z�ʇϭ_�v|�Ǜ͹!��f�p��e��
�ͥ�h�>���w�rUC�>Z�<������d�&9P�����.�f��4W�&TXkK�)I���$v���+⧣/@�g��Q��%։}��"ǥ��a�������oþW�#�	�k8wm�~,��n������ e�@1��{:=����f����1��O�� �����b��Et�Qa(�0�$�.��ޤ��f��׸10�מ���B� �B�M
3�2�13��8s"�%c=X�E=M����@�1U!���.��~C�_S��δ5_s(Ll�F���D��D�;}�3qٟ��AU\T5`'%l�C��֪�"�/F�!�K�j�F.�o_�m�[k�i�8PT����O��0a�J��W7F�f%:�� DH9�r�աob���?���|ؿ� f���������q
fn�72y�ρ��񌚺���BDUH���΢�!)0 ����CQM�1�J��`�-vDh�p<�`�RE����y,H��mL:�K~�jĥ�4=[dp'S�4���t���0��&������� �� �L}���������~��LD~�&"z��������&�7�˟7���)~� ��J���~����gp��K�����j{�_t��f��Y}���]�ﾙ�fU�>��O�s Ø��I�_z��Wlk���GG�n�1�_��ZCBB�Uf���<�[�32zhV7�!l�����K�n�1@��Պ�y���rp�ـ9�l�ytqk�cn���o/���؇@wF����Y�}�Y�~W*���-692����C6l�%�H#!���eɾ�qڧ�v��w��rv����NPT�.\�P���?w�i�8v��?���/��گ��t�9��(�ǘ1�Xn�.��8�=���Ә�/d���s�-諆���� 02��|�R*�8qD<���_E.5Q��WP�[�M"y�#-�<ծ��9�����M���QHX<�����(w*���:B�ѵ�%+�����`�) Tb�fE���u����8Z�(L�D(�6���yj���'+�V�SF�䋇"s�7��^LA�k��}׍��{EM�2���8���:����w�j��M��(�	��{x/8	���r����s=�2��y0����1vL��P��%Q	Y�q&lb6:�
�h���^7�	�`KA��RVW�#���@��뵶C.��y�i�v��ew �#����bo�e��w��x��?�ɇ?���o���L����|J���n?ٞv{rr��nh�np�ҥK?y��o��+ ����G���{�DD;3���; �0L�GO��_�N���|�S�旼��-_�<gXɁ{����\��lP�0й�$L��5�e�Ţ����������TQ�Ұ=����/��j���S�TREm3�T4M�(����R^�S�NO0���>���s�u�&:��"�'�
�G�����J�X�Ğ"[�r����O4Yb��U�bϼ�K�-F�����������sD�?��?��|�?/P�>�$�O�6��v�c(���ؠ�P9�*�t�S�՛y =��!�_��:�@0�ن��SJ��k��yE\����f@��Xt"�3!'�I@�~�(�D{Ǻ� 8\�z�S�Ģ��N�-r,�����E[�sB
�tS���J��
��r�    IDAT�
�˄έ�J�f=B��Z�m�vn؉�Ќ�Ne���P� fhmMf��3%�A� 3RN���qۡo�0���ӻ3^�f����6�FDk3:[P��@��^�����n��&���|r�\ _,�	�R`�(C�mn3`c�nVasL����� CH}����
L�V�<�[����rMD����(����$�����������o}�ǰ��;��������M�/�{�� ��^��{�𮹚ٖ���a�S<������W,�|���ox� .~�3��{�пa%
 ���Q@�������<�󙙝�u � |a��T�]��3mO�V9����ɭ/�p|�)�AapC
p�MN��ˀ������!�bC�qe�	���]��%��P�	׶g@��R0�k49h$����b#��UW;�����º��)u/��t!O��b4x�A����� ?7�3p�����]=�M�H'�Ƀ��u��%E�D�(�Ҍ$������'{�������ǽo�E�}�S��I0�uz��Iн���>�Wb�SZ'lp���x!��ଈ��GL�` �H.�+�HA�P檨�oXN�@�����iX� �D��S�ǻ-����J����9����a��rl�����m���T2J�H)�IHO�8��4Ulw�uZi�RBK�&F#�lZ�(�.�6���irMfHb�&�/�������^+�㱮�r]Ź���ɒѩ��9Љ���?�S�*�h�c��]'#�����{q�V̬�!�%�42/��'`��U� �" ��H#�d�f�Bh��0��6���0�I+�w�9ט��v��F��d�}$�'���U& �ַ����w��?����l��RJ��RJ|�y �
�_��_ŵk�`>�m Nx����=���n�7�}l����>��Q��A�]ՙ����>2���$�ۢyZ 6�M`�qO�[��t�=��G�����1Lt���1AOǘ G�a�ã'�mZ6=�$�A��n��T%��a䖑�a�TU�y�=g���Zk���Uzp�$�RY��{��{������w��G>���{�x#�M� u@@��nX?��"Z�ޗ����v�㜄� 6E<X��z~]�k�K���9vr�;f��B�<,:"lwd��J�{����.����DZ 6���k'hƠ��*����81�[[����|���ч� jm����|�� ;km�=x>$ �?��Z��!#[R��_F�v�'M�R*�,}�ۣf&DV8��IiL8��[�D�K#"ϳ��2��Tk�^̑s�Ͻ������d���y�R������:!C�u܃�Dǆ�1sb�.e>�+O�m<-ǥF ���� ȼ�RZ!3f̘sv��*��UņሱHǪ�����:��0��
�`h����Z�]�1���8R��9Sfa\���90Q��;w�B� ��#AKq���
a�
*%A�
BE��u-ؠ��b���*�}�6���\��%<������E�	T|��P���$oi����P�����<�6���83M)(�:L��5z�������XQŠ0�/ &�X�̅�SB�/J	� Պ)H"X�b��2nG!B�	u�A����5�
��9!�Ȣ�i�ȳ�˯(��j}<.�bL
�W���,��&��gǿ� )���@�`CΜ9�7�|�5����w�]<��t�h�(gΜyۅ^�����h���+��i h�?�Xt��0��Rk���w_�馛 +"�'�s ¨P�B&x
�"�~h�Y�*��Z�^��9q����E���$�f����ec���T�ƀR=I�v�Y�J@fk�%0��#� ����ݢ�պG�;�M�g�� �&(��P�g���̍�������%�S���Q`d������PWk/�kl.�8�9P�����^�8�6�1��(2�DĹ$Ԅ&W����\|�������Ͽ��H���+%Qo�(�q��̄��t�JGwlUPb��]��i�|����/ ,SN�9�����Ę�[�=~�����M�ৱG�e�͐1�3~��S��} ���x��Y����D^�&����IZD��#D��P�(�$r�BFUƦz3:ԊA*�Tl�b��P�r+75U�Z���)|ʁ\X���ϫ�&f�~�W��؛2T˲)�А��S�	M�c������~��_3U������8A�"E�_�ǩ��e�Y)gb,4�����՜�GZ}*�l�-'�TP��Y�P3Q��*is-d"�y�<-�I�dU^X��lU=/"�.�T��߿���V
?��?�������+&�m��m [_��~ ���?ɤR"2L���(�}�n5s���Cn} �gΜ���:�l6���;��o����C�g�*mJ�+��"R~��{�����?�뮻~�b�%3�d��|m�uV� XA���c;'.���N�J�1�g �Cg��� ��f1D�ws,"�<)�W���[�6�(sr���_�]� ��*6 -%��h5����F�&��9�w�dQ��*�O��RQ��cJ�Ů��c|?�G�$hI�⁝��.�8t�TN� �g���D�	�������	���z�+v�\�������������YWMv�V��)`��)h����1� |�" ���θU��y�O�f̦�4�!ò%�V3�Q#��l�"c�V!���G�`k54�F�ΡrU�J�&�/K�j0�H��D��թ�q(�~^�b��¶P��2���1j�`()6D"Y�Z����}U@�&���,��ĈzV��%PT����o�Y�g(�jv�pU�'WKbj�l�Ǔ�p�F�I �]�H�Y|<(�jm
���UĎ:ت��(��jρU�V��P�!Œ:l3cF"�����	V�HŚ*����X�����]��;�%Q���G))rGH�]^bF:g�q^ZD���Ȁ�X~/$�yL��4ߺ����u�-��`NDm�Q�pƋ�K~�a��'>A�k��ԩSo��x1�!������`�̙3��b>�'?�I��k �7�����?����J�;r���o�q���6D�R�3ఄ�|�Ɋ�?w0����V}��o�|�eۗ���bg7sWk���97��Li��������+|UOV:WX+y�,Ci��@gFN�-fl�9k���xdf6�fe������K ����wa�������N�SK�6ܤwh �G`�81��;� 6y1x_cmL�'D`�!ړv*���S��?��~�+x�+^qA��?�ٟ�~�����g1a��( wI�Dӯ�DS�[��-�9�̼Ŝv��(�������ԥ)�]0fL�]2MvUi��*�JJ@�3�0g��6ԊRM��nZ)٠� �S��Y)�--�Ȉ}$�3��p�\��0(bdQ���p��P���2%p2k�R�j�k�Ԫ���#B	^��[`s$��kQ�d3�aљ%�*M~C`����}�G�>{o|̢�=~�om��(K�J�b���5�]R�d�NfKP<c&et���	�nO\ԇ8A��Z��@"1�tTrbI��[*�:&,T �ـ���+a�����TL,�HՄ4�j]��eE�*Q=XC��"x,���j	y[� �n�喛<�ӟ����g'�R@�G_���8�� E����|��'�F?�c�U��� XU�˿�ˇ�����?���֯���7�0��D��w�MdW|�@��W�l��'{U��Kչ��s^rٱ�W��s�XJ�<%���dk뾠��o�����bbc���$��I��À:��͑r�9l���>�ĄE��Gw��z�������� ٚ�z��L��Q�Ud�������9
RG0.�t�TS4��F�qbϩM���O-����4�����1�{�����]��O�$>����7+�՞!1GL�\B�dbl�H#�[!��mǖ��~Z���x�������ļC�l>��K�x�*�W)9۔F��em�V ��U��s�aC�r �����WJ�__� �x� �	�,OhuH�c����&$���D�R1J��న�� S�(�VCJ05���hEr�l�L�aR7����E�������+Ҝ�9�pւ�����x�.ʸ8�f%6��Z@瑤iv�G��% RA��K��qHQt(��X���=fi�i���A aFM�^�����\ms�3���]2b�VP�[�
��@R;_�20�s=VEE׈Ȧ7���	���;��/�qt=�V���R������HD�Uo����Q�ԩ����Ŝ�t
�q�Y�� N�9s�_]̇���[��� �����^��E�(�Ck�UU��Z>��}��D�!��]w������~NI������^D�o����=���+��O?���l�������%π��i Ӏ~�
X�$���@��#� �� �^$*>EмB�Fv�bʪ��%��9Hg�
E*�	��\�&F^-?Z!c�VHzI�ګ
E�q0Y���XKxLR�~�c��{4J��f�����vhmuW�
�}ҫq���[�����`(��ߏ^y�=k׿����-���lds�>�np�`Dɑ7a�L+V�21eJ��G� �6C��F^�sf�N�;��4ϙS87uk��V뿻�t�����A5�*����&L����P̏���R�?5����dB�m��K�z�
&I���1C@a��Ll�2���a�z�Qʀ��1%{x�}NQ`P:ׄ��*�pCX_y͜���	��Q�Q�H��)�d���3"Sٯ�"q;%ē>K��^�<������z�6XT̯\���d�.��lI�V���� ��?HE!��?3X�:`fӹ��P��bV	��m�AS�h���#�OT��q�d�v��jR�1%z>����f�-c0�>���^S�pq0���U] 9��d�X
�?�H��O��Μ9����O�~-��]���:��r���ϟ�����  �˥��/�B�o���k�Rk�bG��������;����G���A�h0EZ"p~3lJ�պ�9�l�+ʳN\��c�;s0���Y�a_]Θw����R�D�\�Š���R�C� �Ք��^'���f������ۘ,����L*]ki�_L�3��� �D62�,q'�E�լ�p�G��Z���Gr�����㪦d�ɻ�둷��U�7AG���Ϝ�M�.:M(�(�y#ŏ����_���zޮ��Z���+��}���1,7+�,(�{�G۟���H'�DI93��̻"2M ��SF.E0Ƨ#�f>6�|"�4�x�F���=�)�7v(�&��^!s�hД��}1��}^�E$sd��dY�a��Ҵ����6
EF�^H����)�w#L��Dj�{b��}���X��sj\Q�Ƣz ��LD��0R�VסrrԄOZX^�����˝�,@����ؤ%qb�W#`�f3837��m2�\���V��ٶHkM�;T�b(�%6p�y��,f�â�����	�{`�C� �*Aj��dFM�04���}
�2"�H3#�2f*��x���� �e��N�{�Z �.'�x�;^|�7<�#�8���������9��T �Fp�M7���}\|�?��1�����������3g  o{���D�	�%��Т���|��9�����wa��#�O��4&?{� Z��r �uQ�zS�����������%f]B���P���k�Ekc���9:g	�U��$�b��jed@b�-�^�)�]'�[#�}o�;��l����Vmֈ�"���ސx�����O�)P��g� �V$M�(j�U:VAdy D�nf����"��*L�j�u��q��.虻�-o����A匡��6������� ��GхP%�*�x+툭�π�R" ���3�	Nt�c�f�4'ƌC[
T+�G�H�l���7�|L�U�^��#�"��nE���zV"�A�͊Q�Ѓ��@_a:*�a:�sf��5���g��=���) _U� �:c�4�E�q��*{�[%f	��*jq?���#��u�D��E�٬q��KD������ph�Wu��d�� mU��r��e�1�@�9P��
?�˖�|fps:Ē" e�y`$�P0�
��oc��
���L匁kwl��8!7� � '$�0W�ժ'J���p�▩ӄ�'&<Z2�]9n���`����~#����� ǣ֪9g��~��8}�4`���>}�U8(/����0#:�ؙ3g�酾����s�� `>���|g��Ӫ�	0���?������7D�Q3����;)����$�q�H�̓�fS���0\�p�������}�����T+0�����Np�I���Pw�A%�Ҙ�+��פ�
H\��Xts̉qb6G������HtlI7�"+�>�H�{uƖ7��� ��VŐ�L�?�y ��d������m0�q�0NLE�0f0�U��xe]2_�*��N�UbZi�
y��W��D��������P��VFjN�V\��?�>�N�,����ݩPJ����)�ݡ� 0�~_  �6�_ [9�nb^0('�Q������	��4����,��mL�"/�	�f���e���l�F�`W՜�1��Z��U�@��l�M@���ۼEd0{�T�Ŵ�kО�gWD�n^Rm�9RA^۶��:r�&S��[�2�9�&�aIKNɉwcvM�fT�!�6@3ksYL���%��f����5����T�-�Y���}�(�y9)�˘u�%%jr'%� ���L\(2',2P�3�6��R�ɐ���H<GN繂N��%L���G����kcbP��w�p�[�Wl4��Ó�)�-0�H?�����	,H����x��9��'O���gΜy�wz�[o�����������MO�8Ѧ�M��߿��l6����"����a%ÅG��}�(�$�oW�Z��V�^�W�+W�W��,����`���wG���R���ھQ��'�=��%������PBG������ 'S6i3[� �<N�G,�u���O�?�����6�M��Lݼ��e�X�c�ݱֆ�1�����,�"��'7d� �̌E��i�h�'O���o�]��?��=��3p�}�|4�8Fd.m� W�eNi�̻̼%"GG�  ��&�sfl3�]"�9Een2{�II�.SpN�����г'���Q�?#���*V��(d�s}�ڨ�(u������䉉��L^Ɋe��d��A�ߗhOX VE��GgU�J��4���a} xHZ</��2����A��@+<C'��J O ؂$YqN� �p��Z�6��r?�hV�sho��l��`�?�	�8I�����x��,���gƼ���:H�赘է+6�T�S
�� TA4 ���3t�"���(�@�6A�E	"jf��	̋��eF崿�tC��Q�ӌ�1J�g�%�D�������o������G��-�8_����a �O���#��c]���}���?���|�f3���8J�kE���UDJ���t�M�̙3=��gMD�ӧO�����=�x=�܀� �auV��a�ח������9����s�;ݑ(r&l�;�C��l��Zm�� y�o���K����Կ�ZO�E�)��9��a�9S8�����P���}�(fZ+@���|�+ O�'bs,�X��.���ۓ���!~u>��:5T`�'�1e3�딑���U\�1��oy������ٳvf^��tC�k�L�s1��7��_���1���bM�Z����Q�3� ���s�I)�机Ĕ�-�@ӨKm�H���W��F��=!{��Q�ɑS��x��$�����ȗ�>�ֿ*@ry"{��P	��9�~:��/'	*�8�a�,1	���:	��姵9�rv-��L�[��N�	s��"�w�9L��~�㲲�k��m65�6C7(L,tb����$	�s�?��ٸ��FLӥ    IDAT[��Ȏ�A�j�Z��^P�1>8���9[������XA���u�(��|)�Z�b\fxb���Lu���(1-sN�w�s�i��^���ph�%�@v���L3���QE�ܿfD�RJ��'"��3G+�n�׾�5<��P���y<���q��� ��'O~
�����t�����~������>�[��\~���<_ָ6*"���Z��M7������O��E�|1�>��Q4�(�Z�o�6�z���j�~З_q��N�L(��|QE�;��v���U���}�[�x��$9m����%wX,��̌rp�*6c���_dA��fvPbS TC)�BP[���/�XTX��@�9�
W��	'�V,��x�֡�
����6A����ĭѐr����c��ac"�4�9~�G~��pp�����g�^/,��0��f���j���#�m0o��B� <��Rq �0��,%����"	�����1D>�j�S��:�]4m�LlYpg8�̳�"�P��c�y��j�](�!lk6yPكj,ي0���9 ���� �ы\�����-SN�-2E`.]a�iѤ�##Dޏ��N���2GGL<sI��	����m��k�Gb�VkU�:�D�?S|._�	�s�o�-�=��\(P2�Qٓ�iiD��,4�ԡB�(�a1��C49��ѨT ���KHit��C�*(�6�\�����c�X���L����Ĵ\�e!"S���;��Mt��S>Nc�jD�� L�Q�Q��~����{D`�vB�Y`�V�ɓ'o�d:��^���V�l�]��;���i��" ����)���g���^L�[1sT�O��9�~�9�^q86E��2l�su#�k*�/������Y��j�1�%l���Ú;�u�֌����R*��Ja��EP������)1x�a1��Y���Y�����H�A^�����U���ڣ�dܛ��m�.��_��M>�%is��(P�h�>�@k��"nE#3�K^ ��0C��Ʉ��$�����s8�D�':RJ��7��~�H���-�-%+���XB�EK�<�A"�RU�����c)��q)�)��< ��w���%JX��M��{�xt���1��A�ߙ�3n�_Uk!0����iP��l)�V��2K�94$p�}��x�3	H?�6��<�$2ZkK�
S�W���܌|�
E�S�d�U�4�ĵE�6?;Tp]/�i1���6K_s@Bx#�D� ��Ƥ:ᆨP@����C9�sh�P~Cx�b
"��7ѡ:������p�Oh��R-�S�UD�/Pp���zCfy���1�f�RMmR+�F��=��L�3�����t2%�^���z=�$A�Kx4/ xf���������x
� ��THD�	��j%���t),�a6��y�Č�)_!O`�v���o�+��b
���	 ��֛o�yCD=�3�������s�L��("��^z9w��囯Z��y/9���ۥDL�t�b�3̻�e^b�%t�ެ��(�Z���~� `�}��~�(�a\;��x�yg|�*�k���U�L��p-�TlT��DhY���G���� �īb�d� (^�o���qǍ����M���0�<0'F���x�`���|&۾�ڗ��ɀozӛ��|5g��1`} VC("ȓ���sȼ�@��$��-�h�y�#�S&^��Q`��t��y�L٠�j�Vf{���T't�P��ߨm��IyI����Z�5 *�Z0������{��,����=�<�*�mtS��`���P���h�n� �pxl��u��-�r��h��qy��h]a=v�d��M��P�&#���w$!�F�e�:b}Wr�z45b�V�O
#B����p���C����(���Z��C�ki�� ��S�٬�+16b�i
'O8HP��GQ��S�N7h����}�UMY�uD	=z�Z�,�	����8�n�c�3o�_���:��u	��:�`7��:��ִ׬F?����3����  bf�����ٳ��{Tmz��ԩS?@���7��m����?���� �#~�����(�I� 8��;>�_�����w��׽�u��o�!�Y\�(�Gٿ�[o��<���=����qݵ���=y:]�u�����@��(g��������r�o~��'���|9SE_l�$��:�,��f3l/�8��X��gWl��jX�*T�*xt$�E$��j{8�j���o%ȜIv�� �r5Q!Q$�q[��Q�2�/�ZW������������V�������d��@6����JWBi�%��Lւ�B�����oxf��Za#�P������]�@8���##`�*2gb�b��@�S����
�����y�D	^ŋ�
���$�U���@1��7��U��A��͘1crV�%\�I)��ʎ~?S�ս�Y�FT��F�<��ɡ��}5(\Bb
;�BN+���7��9�~M�=�-�m�cS�R[�IB@m�63�R<f#��1�=�pyNd�q�N������"��-?c5��e�0ɀP�?��:��Ex�#~�7�6�q��y2%p�٘�Fc.��
Rr?��@��`�=;&�X3E! y����3����!^U�g kb�c�����j�}���7؃`'���p���ml �){��̩��KQ�z	���������k_���|�����m����O�|�1����%�1�8�8�߁�F"p��W�k����D�7U��W���|����W�� z��O��d�V����j_���*�u)/�z���l͖s&���`@V��Sty��<�v7É��Ap~��<1Y��?�苸$m\+�6�b.g�N��N���^&�����Pf�����+��\�>>��p���7�%`�}o@�:A� ����6�r�vo� �����߰ێ��K���L�,H�ؑ�P�����e�_�o�r���~��_n���s�ŲUh+�㹍���(�@�ĉ����£̀��Ǔ�+.pH����i+��%V�xWX?���� �O�������
;�Čg,2۠TP��MmoP�?�
k�`G���Wր35��V��nl(�x7�=pkyT/P�L
(�^Ǫf'䁚�-���z��Kĵ>x�6d�Yu�{�I��+�ڤ�&�S�V@hh�!3,H�����.�OT�Vj�[�a�,
� �^F��;��.��V��ς�
� ����υ�i�ͫ�tƑ�����DM
�1�QP�٬����&�E-�xn=��oR��f�W�� p̗sp����2�ȌY7�V�y�%Ds���r������jӉ�c� �V��s���k����	 %��H ���_�{�7�oP�=�>�d��1�H*�>��K��*��0n�>�J}�?K���?|���ݿ�{G���O�n������Ɔ�z"�0���ӧ����ψ�x�H���@]�Z\�ֽ��P�U��˞������h5�С����匜�)!us0+f�= �t�F6Sd�־����nnjeP)��{�����kS�`�=��6�R��>�������@����Iq���x/B��⽀ !�~?�9-1 PΨB��
�AX ۞STщ@�D�ʄ�}�S��Ʌ�Q��������z�sѝ�&$uH�6T�#�y��=�F^��2�D�P�%' O��L ��ʈ��D��4���~�7���.���0kY��0h��Z�
C��ֿ�q�"e� -P�^� ��M�z7��l����,B�*īRAvt�sQ@���qۯx�)�2e8����ԗůT�S��>�k� �g��R�=4�����P�=��/*H���eM�� <n�0����'#��C������?Ѕ�Q�NcV;�M&P�6Sb4�B��'�;kDmQk� �̣�8>����NX6HZ��Y��0�5�K���8'`n�  �ۦ"RM���3�ꌓ�H�31͙��`�^��L�{O �ppQH�1�I�t-��u��Ǯ�9�����׊a@JD�����Ww�:�㰀�t% &+р,�����i����|���`c���@�z��7"jC\��d��O�Ɵu�CJ�M��[�o �UqM_�/���ޝw	L�7�6.<�~l9�΄��c�V7�V�D��@/�"���RzHl/�1�/@��Z�0ԍ�'u�� 6�σV��ŭ
�P�鏥���o��8u2V� 7�]���#V���N䅶�$�� a4��h�{~Y���c�������/8��7���Vd0
�y����%�f+>�UȤ�L�[�
�2�&J4����������K)m���9%B�vÛ]/��emHT�V e��LV�w �9a��,C�ɸ s��/>�)��1pRUG��CX�Р2"_�����4���t��l8��!MT� ����P=���ـ�k�9��F�]�Y �V��E�	�d��[����ȃR�hǘ髺��+�Dh�ߌ;`� ��zjI����	��1����i1�y J.ٔ�	DH�!O�H.4�3#e�
��.m����/U�_�M�TSqt2�Ye�)����&�Rf0�Q��F\w�g�<�L\vs�R�w9-�ߟC9J��\T��?p�ä����������R$��|��_� ��wvȻ�c��><@�������t]�����&V��_��կ�{�w �����>p�ԩ_y�>˅|֣�@�|o��H��j�W�ժȫ6E�{��α��K��d��\�Z df�<�,�tp�����Rq~=`o�ƺ��=�A�U e�,�L���$PS��Y�v��!���j� �� Ɛ����vgǤ @�����g�I���q�6�$�O�p�s�t$<���VJ�l.�xj�n��Q��(���4��^�����xի_����ݓH���J�AO]F�Z-Vb�]���0�Ψ��tJ ���O�	@�|e ��i��;�l�,�Bt��c�14g�g:ps������EճO[M�hP������bX�'�r���B�&�)���Z,�C8��d�05�Z���ʨ}��Ȕ��"��	@�4H����`Dhc�����G�@��d�@�j���В��Ya5�4+`��=�ViH8�j#�,"_�Ք  ��V��$��O.cB�Q�M(�D@��Xz��phq��'y���x�*@-HPS��/i�/E�?�[֚ e�n$�Ab��2PUd�Y{"g0�{*C�V�������]J]f^<��7[m��Z�G���V��
��������-� D0�v�����U �h$ ��ַp�ܹ
�{c��t�y�r��F=l��v��H�S� "��H��g>S���f���S��'<3j��;Ѕ���C( �*"�7W�M_e���\?��������^�g�Ԯ�/����0�$C����~�zl�q�����HE����}h�RgED��$��
i�gbQ##֨���N��hpk=6���V���l?����ߌɂ:��&����Ϳ��*�Q����jq�3�$`/:
fUЕ������^�{.�����a�}�4�(%�T�OyR�E	5䢕�^;��I�P��}#|��sfl%F&C�w�RBg_z�*�h���'ؙ����. X�yP��y�O{�)�f��Ff}����1)�U�2#`*�qL�iU�e��v�&�S�l�'����N�SQ�b�9	���BxvHk!�%�!���ܑ�>��v��B�#1qk4���E�Z�a��Ɓ��"TO��`�D��k�0 �T�4���U��A���g�lf�/�]ci�_�P�`K�0��v�&�	k%	a��>��M���Z���� $3YJ��34g�ٵ�L@�m�P$�
R�ֲ��i�D��}Zm6Ӆ���U>�Z����9��?��i0& x�{��_��_��}�{��8< ���=g7�	�_T��R��{��n�y����:�=SA3>$	#�Z�
 =��τ'���?�����a���� z"���_|�k^�o��C��uL���Ϧ�@s<�����e�ܦ鹡?���Ƕv�]�@�����EHR�*ȩC�w�u�Y&l�k���=j?`�:��SQ��b[+����掌�2��d�m�-�\ Ȕ��Wm� �>�t��Pȃ�G�y��m%���H�-UP%hjC����@�$�<����{�4Z��^���G��yД~�ֆ����eM�	��Ju�� y,�&ߟ�q�9 ̼��[ �*��<7[�Y�W��3��21�1�c#ձ��,U*��ǜ{�!=��3�N�
3��<v�������DB\�j)�{������x�mI���6e��I���0��_[
AԳ?;����bF@M�8���t#���s<_QB�v]���U�vPK��5���p��ԫvB�K����-Ѐn*�H�bryr��*�l�Ͳd��� ��(�\ǪoaHBLQ�P!�K� VkMT��H�9�rFfF��� �=�*�2�'������C��l��;�`��QǑ� �����g����������{a��c� �����<����:�ʟ��G��|�+_�DTTu�����c��L�i�_�(2(�����Ю�m��V
�!4�w�>��.��x�c�M�����׺�*��3��U�?�N��\����.cF�|Hd�H��d�L򌱕g��bGe>�f�c}����mL�f�.�AA�}B�y�Ar���;����(X�g�qJ+�>��j� 1	�-?ZV{ya�K�o%
�4��Hk�2� ���}0r��T��LF6��k>=6z�����_~�;� W_}5���j��CVe�PmBm59r�ي�R�K`�+� �ࣽ��\�O���q�iРGf��L�h��0��Mj{��3��X0cB��Cj�0}��W��Il��/�#��M��T
ٗ�1�#��j^�ʵU��Ĺ3����B2���GާJ�\�N͂�h�*(����|A��Ys$(�7蟹e�����������IC�A��A.L�P�]������hĲZ� �����TUQl*���h��[�v��Gx���+�lJ��6>x ���*)ZQ��J�j�g�;2�?g]�Z�Tǹ���� ��J�;�4�Bwf�v����%'���Yv��<��`2�c����'����{���e������o�_��_�!_��]����F�_��O|�-)���?E_v���+_�J��������� F1��=?���?&I�������>��� 6��~ի^��]w���K��<�A?<6��g |�7 |�/�W�Z�����/����_��7�u��Gέ��M6ݮ2������撚;r#!�N�8����v����l/H� RP��a��P0Q�~����j� ����IaS��������}ˢyk�r�������4U <��$2��jA4w��)gk�ְg��;(�M1��)���+;�h|/���~곸���:\s�5� qB]l��
�=�TsnGY�~�Sn{��q�h���hB Hi�R^����jY�џ���@d�	�L#jP�;�+�k𽢆"�I��-�`�2�IE*�IQq��c���w��8	���[5k����Mn0>�qq�p��P!��M��S����m��m�6(NG��*�-=��IvmM��# 2C3��++Ն��
��y�U݉Ԡ?2�D��A�7��
ݑ����%o3�Zܼ�_G~�%J#I���lx�cEQ�ԑ��[ی<Q���z�D&y�k_�Z.�O�;C�����S�X8ed+��H�� �݌Ӊ���eUQeo�C��X�E��CO��������P�ٯ�گ�	��w�Ї>��9眦�_�����	�>=��=�Ku����|��U�@�����/����o��=���m���-�#��A������d��E�����l/�u]�ML��J�F�J�ƮÒT��˛�A�9E ��uC�}HZ_\a�@F�@ӹ��
`ܟ�,K����s�Oѹ��?�    IDATD�Y������Ŋz�U��-I/�q�X��� $:���WB�92m�F6.�*�������yA7�5�]�;�[���`�AÃDJ�P�O@fK�l<��[�a����:�����w��x�L��R�0��Xs)@dC�9��u1f��A�	J@0Ua�P��D<��zPi� &�C嶙'����RD`sb�:<Dx("����
�=��}1�����'�H��T�@��Z�ZUm�-`��Ċ�k�{�����|��-$��h��s1U�f4�ޑ��&#�ۭ�H���y��lմ�n7Yr�X�����i�L0}1H-��!O��I�H��A¨&b�/NQ]��u
���@lv.� U��gbhf'!����WA)�2���8y��@�*=��n����r�r��Q�M_ʀqXДe����������4	?��?�F�g����`����M]�V ��% ��Z��`(I�L*DL�k$0"R���/VX��
{u�w��߅��D��Z+ ���V�rP��9(�ҳ�������\���Xv��QN�3%���s������%�r����e�{�V�=Ӟ�c4b�ɘ���Q��[y���Uo�����Á4��#;_��@��\+��!F�Zum����H�ъ�x�r�@p%R�� �:O����V$]�q��� ����>� D+z2?���Ld��v�z���������4�D:g���׼��`t�sQUh-�)�²<V��wtlNav��gk@O�]]2�G��G���j �N@Q�j�h�1G?��!��0*����ms��㉎g��:�-!y�����l�+�vU ��L]x��ŧV�V�fh���g�L��O���O���F	��SK��i���!H^�~��)$� �翘��+��t�A�=��!�eٮ#�'��;�hIN��A��>� P��* )�C,�N�d�P(�<Ts��RP�ms�����ȹ�S�y�y��;��+��A9�w ���)p�~��h��J ���w��g?���}����g] s�9�f����rL[ ��{�� 8��~����x\;俍1X>���4�3   "ZJ�����ٟ�Y!���CJi�*����4	��Q| �,rY}{%����nj}�^�ؓ�{������c%J�0�x�d�{�%���b�!w�4C������m�@�yJ�d����A�+|ط3<&3�*��d 0�U��� �sB���J��R]�۠KO4,�h��j&r"����W��K5
��h��]�pl�1 /���}�;�x�+_�n֡n���l6(W�>�Ʃp�E�}Z,cgJ�$�i�z�ǥ"��83�3w�� L1�0�w�I&ÃZ1�����b&
�>�F�,0a{n�n�g�5�!-�@���3W���S���T��Ă������Ȕ���(�b#�
a���gw3:�aUARAc�W
[����7��O�Ъ���"5�=x���yj{u���%^�8��Q��߃-�Ņ}Y5�#��6�!H� �7���=�	rH�dj�A;�r���ĩRC`�����Jw�$Of�]�(c�iT����T��J�	!�Ll㤁֞�iW�%A`ʖб}<f�|�H����R[]�L����R���k�I��� ��o~3���/����?���|�#��8/���.��\��?��{�w����Uտ�����8F�ǿ�,�Ŕ���T�< ���<�@a�@�ԩyݵ׾���p��Q$@&�� X���F��+�g���Zm���cۻ?p��2w�3�Z�xH�.H���R2dm����.�p�"��|&`�V�+�U/����ԩ��e��'E1��'�V%��Ǔy{��#y=Q׹|ȩ!��Pk���蓶�#�nGOEtD|��BHd�Dh�?��[/���f3\}�ո��i(%h꠹b�1d!rN�)��= (1*+2YK�&N��'��^�@��"%@Y|�P���n�#�����c�Ľ^���ZTp��*I'+Z_�����[#�8���4�lQ4 j'� ���p9�*]N���lS�T��S�L:�X����z�NTX�m@R{p�Q;B[���nAT����M���<��b�yXr3�����# ��I�s� ��vNA�q]\�W��?����j%�ړ� 4�^�&44Ɠ�2�d>����6�9�X�p�����ɹ&2ҟ	��%%7:Q$����"R*��rѥ+v˫�2��u�اw _��*ƅ�7����������_��ǎ=����0���ߞs�]ץ��!�)
�����#��I�!\ڊ���`��oc$J����$b~������yЋHOD�׼�5�?u����{���?��$��蚸�<T6��E9��_vfo�E��ɗ�<����,�9�}�a�1ૡ��l�HEB�֬mm��E
��[d<{w�Y��^�8�������S���b3K��Z�C e2n�Z¤�[z��Į.�"G[�n���F��m���cہ@��xa2}��B�&m�F x�O�$���o_Ѝ{����;�D%STF�(ng����qF��SP"�������\
��PJ4�	ʪ��[��"���]�8�y�21�ܡ#�ʅq{)39r��N�V��x����4������� ��(��n�ʮ�U���Ԭ
�h���K÷Yd2���fEJ�7�S�bIC4�G�~35"e����U%�Ȍ�ш��r�B�GÙ�� �2��fQjyçg@�֧cWp(��@ ��A�,��Ʉ����Ə����\�h�iM����i���C:I��-��]9������'�Rj}�UfԜ�Mc��dn����QU�PbD�D�d����J�u��}(}J���E~A_����?{�k[v��}c�9��{�׽岫
�j\EQv���F!Z�%+D�!��G������v�$X�`d�tc�_r�!�:td��qڊ�a�m��y�\��U��{^{��c��s�u�����dI�Σ�ݏ�֜c�o|�7����̑��E�U>�<	h�n�� ����5{���ڵk���� 5E�� ���s�=7�Ꚉ�?������9|�G�<���&� �7n��G�.9mU�U h��:�_�(���������^���գ���� �O��b�C�����x���2��;�v���~Z�@�<�,�@b�� Šfd4`��c[F�u@dS ����Xa��ep�"Ά��͈��������*
�$؈`t�"�;���y��ɑ�ͻ����M�Y�au~+��T�]�C@��8B�
��[;�������=_��{����aJ��Z�F�0��bB$CC�%č��A��x�9 <�r���l������cd��cF �V11�QCq�(F�۵¾���s�)y���Ӥ߀�v<~Z�q�ݼ�n-e�H9E�,�f�$+����ֆf�B���Mwn��z?���*h�-� 	�����f��kp���.�`ɀT�2&�@��X��y�V!�kU� ���l���P-���,5������ڂ9  �$���F�6Z�]�"Dp2!v���;~q�Z�"B#17���"b�ePJv�%���B��`&X���jG3Q1c�,�Q�C��%X��%p@�u���E��Eߘkz�6"2G�H��f������L��K��K�+�o�IS�u���'�j�!"��͛":UՓ+��Js��� ���}�]�_�d����7��O?]�(�j�i�H�M9�" se@�?��ɛ"�9\���tTy�7���߹v����8� `pp2c�@�1���s��.��R�,؏���õ.�v��g�RM2��C��m)8�͂Zl���֥ ��"R�"�Mn�1[�b=K`*f�#�+z�_�ۿ�����:��C�X��ޏ����/أ�>
P�p3�[��0I��́�6�F� 03���+�%9^	`B��g
=��� b�8�/�1B�Q��|���^r`24��,߷�̖ �Q[�~�����i
@g�+}��CH!Mjf���Mi���v���ÕS�z=��VYv�͑0@�M� �/�����j�����6��@�=o&��6h��E��>I� ��$�~$g��ym�BS0��Pvo^��v���ŉ�˓N�t�9�	Q��]�?�~�S�M�D-il�T��.����� K�ħ�5��.{Gl��J����rF8�p(��
�*�f�Q�S�Ĉ) ��BA�_�x�Ty<�r����7$`� \��Q `� 4㟹`
!ĔR�1r�c��z�����;w�v�� 8S�W:��v��}��h�~ݗB�@D��� ���mo{�?#�����vܭ%0��L&O�U.t;�W9;�}t�����^��)(�Tsd-)0":"���ZJ>�%�J�\q@���C��1��y0��bDQ ʌ��*r�0��]8�h�H�ʋ��Q� "L� n�n��tT@F>`�E�eέ��d��yB�ZK�R��Y�l����q�k_�u/Է��c�X�Η�Bw�>��D+��ic��6>����[� �&/'p� 'b�(01+d��e�BD%B�#J�@��	0x
e�-U�`�p�8�ϭ��ڊ4 �M
�ʛ\	 U��{�U��ZP3�Q�!/D�f-՟Ӏ�&�
l�p�����v����)xV�Z��*U3.�j�l�yb��p8\]_��x��b�� HK������E��i!ߍ�H���Q�
�LV8z5�P5d��T,�3tpI�G�F����Z`����$Jz�	R�& 1�<bfwl���v�IJ`KdJ���#�s���Y�37u�.����&�]C^,)K��_ �"�C�^��Y"{;(0R2���V��Y꛵��Pkk\Ed�{;���|^� ����C�m �n޼Y�h#"���# -h�=��&�V�O(�L�/���,��ԧ���H���?�
���h�{N����aSe��|��'������vx��;8x�pчH����T�"	�^X��6WQ�`M&݋ ,Dq��wR�iKE�"Ia�6J�	(��(�:��(x �N�$�MR�b�a�q�Lư�‟�V���JCZR��f^��Jȵb(u�)0�~�ɓO����u/�G���l 9#���s$/R;$�����~�W�
8Q��6�>>�U����^�Ud�("M]Se+�Iˠ��~�H'�\���z_I �M����h'�s�h#���VU��*UJ�ʯ��/��ԥc��AV��@Ř�fS)�-4�
yfk�;�Mp����c^���=�jV�]��S�	\
J�>P��Ւ'+��DZm�6Fj�*oj� ֧"�I{��'�`��o�@�c[�@��}Sk_7�YKS<�!F��X�*��x_}�&�q.�iS��Ʉ��?�# ɒ ���PE#5r#H�4�X/O 	T2���E�o4�X�z��~��6s�%@;�����}��Z��V�ʮ0G���\3.�� ;.@���������?�{1�`S����g� P�ѩjy���3d�9�x�;=<<|��������#��h{H�/����[�n�kR�8�`����Z�������W ���������������g~�e�/�Ѯ��B�&�"��3�Y���ȁ��7<^�]{õ��U,Pd���*�����Q*�k�PF�R0d�f:l##ĄE��Ec�I��0��*2X�0�%�L	�ɣ���7��d��"��>*=8���>��tG���w��	�U���8E�3c�XI}�!{�c����[ X��O��׾X_ �K���8�ɫT'H�I�z�wk��� B3%/צ���{�"��M2*�1%�1"����9͹���_�����c�֛�b����Y�g��[%;1蝗 Ph�`{�em�Pח���4\0!�ܲD�����L� >���3B�����z$��^d�ǂmn����#�VD&��@��H�2��9���1�vn�z�"�DUE�ց�i @���\T9�Vh�8ܴ�����Q�;MHBK�2����(2�.j��u^ ��-���Ȉ�Nv-J��%m��SBE)��#L�ZM��0顣R%�i���{�f9�m}L{>��< ��4���~�I��QE�d,p�8O ����������o��������Rj�?Z�=g�q�FU�-�5m�E~�;��KK �E��I/"�R@�N) |�_(��f�[����g>��%�P�?<��W�/�� ��nǺ=Y�rz.��M�׼��p���HT�����D*�����j�f�b\l.p�/�I�B�@���!S@��[2*6�ls�#F!�yo��u.�X�f=3ۓx7(�TAbIu���.���{�I����Q��s2ȡ���ъf�J^�'b,(bd@��7�*~�C�������y��G�=� P+��u`��~兘HE�걯��̽JET��*��E/w���)P`&b&#���� {5TTj�C�f���/	��DwS�
��"�����(h�E�l�{�S1ͪxW�h����*�Mr�!�xJ`���;���^��-��/���ԂekA�܏���"\��@�֊�\�\!%C�L����%�G�ث��B0��l��0Ҽl񘝯:7B[b�=�h%�ع�L6TA*���[ p�l���mp�N��� @�5��>�@�	�Lس5G�j� |�^גE/���?���0�cD����]w��[�:�����L�J1�fPH�`QD�ߦbr-���glv�֞�-�R����Z<^EϷ�l����\E�zl����������J	����Tu��k"����=�/�ھh� �x�� ����~�s�k��3�����o�/|�3���W�s�R�� 1O�m�f�����p��o����&����G�{]`�x��E�)�ʐq1lL��1H*�zhD�-��+�:�j�e�֊�C����(TM�-���E�x�$߃�wt�ܤ��?��P�M�G�&4�����]Y�Saf$:
!���{~��G1�Ŝ��t�D?��C�-�@�Tk�i���D�E%�$	��(�$�h܍�Y�UE&�"��m�j]&S�mֻ��Y���������L^o6��L��i7��pӅ���9�E�ӤO�-i"�Xl:P�Yn��+���O��gݑ��}�`Rs)�A�G�[8�,"���6H�y
�Ȫبb��R��A��~bp���.5�������iƳ�mA�Ғ682М��۹m�Fi����$�v_
��[�ޞ!z���_w�Y�I�u�J�c�3R�!���\ՠ~��w�;8Q�\�T��+�����(����'c�6�G ��"@�����軥��V9ϵ^EZ@�w���ux	�o_�Պc��Rj�?� Ld	��͛@�!�0~���q{�Kq܍ �� ��&T�VU�|��/ ������������'�[9�[���z��Tg�_�LD�"Oƺ]_���n����zx��բc�*U�(X0c"b��F�d���"!E��eV��+��c_1��<B$C�"�e�"�֒�I\c~.��'G&�J������h�����b�CG�����R�,
j���n���c'��n�X,��y�G�|�>��uQk�֊j�&vUd��U���j�?G�����H ��%��#��BIeW�X�	zf�cP������Qh�8m) �ͣY���S.�Udcyb:�zC�d��cnQ.��|�o��	�����gG���Z kv�6���z>�[�rV�`�1`��J$U
���{)a�1�:4{�C�LwN�i�>�N ��-&�L��y�Y��**��ۚ^��=��\���Dd�v���َr����ݽ�=H���t'��F�]#S�҄�Xt�);;��8��vyjd� ���-	��T����*P�%������먷�@19�Rǂ��    IDAT1�8�om%�~�7� �F+�((�߻����O��x�<$��l;lk�+�m��.	` ����ǟ{����9���4�w��՜�TUǛ7ofG �D4�����<���o��o_cx)k{�����֭[����0}�Ϭ>??�O?�t���ַ�3f��_�[��'s4�k�Ƴ\�/��7��a��F�p�k�VK[��ϥ�uD�Z���uD*:I����p�F� ��>F,�R0��q��f����>���]���Jck���T����mV1��*&������j��XJ��ܩ������?�S��������X�Vx衇�g���T�Ӽ��1L�M�T��j)�\�:�U�  W8 PD���8;rF�6�WF���Ld�@�"{rw�4�)�L$.`�nlQ;�MWN.��tZ	^� �`�"e�=�oD������'K�_�Q��U�
�@X�����G@s�"v���^�X&B�Pj6��|穩�)�T����m�����}�jl��!c�;H�!Xt	�]@� ��R�`�ф�͗�'2�%l:M�cio����C��`�Q����:1|��:��Sq"dk�!E��Đ���O��
�dh���'�eİ��k�H�K�PG�����0(ϠEREP�Aڔ1L�B0�m��6�m>�I��8�W��p���j�x�6@�N}��{�����_��_�����}� -��Q����C�{��$����q���B~�'~"����z��B����o������ox����k��������3OʓO>�6�F����9�V?Z����90Oʶ���z(T�أ�	=��\pD@�ɾbgR�e�k��+����f���D�.�p� ���4c���@�1"���P�Qm�Hs������ꀗ'�m©�3�m37O13��q��g�`�(��G�Zl�}ɋ���������S  ?�0n|�+�d��[�X+�ZT,Vj�REuTPC���y�& -�_�]ە�V��	�`䮉؇�[�]�s�S�d�2�)���;U�&�wgp�J��ij������9RZ��t�m�q|"��׬��K�
*)}���
�.��6͎��. ŀ.�Xt	}b��C3�g�d�����D#K���%�,��0����rE�j��ZMQ;����mB�� ���Z
J�(�
�K����VF���@���O�T�Q[��UO]~I����bS���_��R ��<[���nQB��J�JAV�ƀD��"^2�C��?P���e�^e��T Cg��U���!M���"2�U�e������L�\)���d��������O�?������ၾ��3��:�>_\\�D��m!�}���^>�я6K��� ~��~�?��=��_�����/D�*�fP�H?���"�� �6����9��D`�
T uSk����Ȑ�������W�ŵ)F���E1�]`,8`�-�`��0��I�`,�I�X-� T���H1����! jD�[���Zma����]���l ,�v��( ��~��W
���ke.�U�y����
�I�g��b�9�駾x����i�`DkO����@�za�E$k��B��ݍ�^��r;�B�� "���S��bp�q�}V�a	Ph��բ.�#��9�Ň��y7XQ���!˛�2&�S��`=%%�N�SU	H�Uڬo�Tm�cR�.we�����M�'(�� "X.:��� ��{�P�q �`��\���j����dm�΅ ��B��!F#���3V�WTUp �11�V�\0��aP�Ѹ����u	ݫ!����+�X�َ8���b��d�I���S �_��Iu�!�WC-���O���<��l����U�����5���� f5j� 6�7��0���V Q�"K�(eB�����@��z���-U`�$��E]r����Yn<L-�.0T��NĪ��"�ʫkE��"�l�i^��&�`A����$ ��g�c �T�{�T��{���.7n� \����°��O~R�k�]J �0���o��k����7g���	�BD�g�g@%�K�ڈ�MG;9Wɢ�ߧ$`(����REǱ�7m��_����}�%�� ��$B�Y�% �:h�i|�TAF �V��!�N�/�4���-H�ЃP3��w�T�����OK�@.�6���Gi��[�;?�Hf
dK��z���}�P��4�����_������� C�(6���k2D��J)Ud�*g�<�U�  �7��3M��7=�I�l�$���لl��<�f���a-"��eF�
ޣ�jLm㏞]�@Q���e{�سs�C�m.�6"��CN�&��֜����#�a�'�����#H�{K\�v��ja�{Qj�̑�����RDJ]�@�/-a A�0��-������1�Ň�]b�	i�*��y���E0�"18$�.�K]b3��6���b%X�F,�\�l�b���Z=fȁ)aj��V��*������O�N����:ZO ����'M����:���5³�SE@�^j-�7��A�1�@\Q 2�����Ab��K%��Z>�����6��B��@!�@h�����Z�n��U���s��Ƀc�5%�N��9���jZn߾=��3":�ԧ>�% ����%=���~�'��G>�]���Ǿ�w��1 ����y�Ї>���}L�û��_x�w]������_H)�<���f�K4�߶���1Oʕ��A���2�E�0���2���Ã��v{)��QC �>�PB�����힮"7���}�뇇�\lPu@�:�d�n��ܹH��X�ݕk�9`{5�м�=���(���>- ���}4Cn�rd ]`���A�;�*��Wy�'����.@##V���ڷ;��5��Z�*N�[�w� ���W�  `�Bchh>Tw�y4���V5	y��H�6�6���v
,�؆J�J
��A��G �J���Kh�=��vI����!�kҁ]EJ�L��7��Q�%�>��;� bt}��r��j	a�Yy���
�{���[!�d��rF��4��N��s2f��o�*7g����'���2�d�>�բ��/�}BJˮC�zw��ȵ"�
-<*�;&	$@B���_��;,�N�X��6��,�n�I��pٲs�|���c_�ɉ �)�o�X��p��2mS+4� 0��kFEF5�A�u"{����	~/)c7+ P5�";�XE]��H���*d��N�5-��TFW\4+S��C��%C��j��Z�U޼�E5>@�n�ļB���:!��럠ϙ�~9>>�8Ws \���X,�-oy?�����|�ԟ��z׻��&��|�C�*������oտ��K(��
	�/���m���&��m>�-`7���H����P�t]꛷9{9z����`�� � �
�
�}��ր�v0@G)�Q7[��Xu��C��`=�@��hۺ����}w���^�p}4��Ŋ*�>��%7�:��6��G�A�)�\�D�Ȅ����Xw�g��� C v��k��Dv��Z����h��Z���}/*�}���A
d@�����f�ܼ|
�ޟ!�'����� "��H!�Qf4�iӷ>�"R �t��ɼD|�mK��jR9"�N���F1N�Z���%,n�����!���R24+��2u@)�89���r�ȹ Ĥ~)Eȃ`�`�(ZrC(bfC)E�
HE* F\�3jQ\8��b �"�T!H�����X�f��jٮ�H)!��D��"�k�VT)F��h0�@��:m!�H���gi�<��.z����a�8�Q���V J`52�f�C��hZw�V)%����!l3�a(�z@me�1)�Vt`���&JH(d�Ia�*~�	iD)u���q@�дX-�R���n����&����H\��L.U���U �Ν;U=p�u݅�K|�ӟn;3ϟ�����������gr��U�P i�ԧ�z*�jf��-������������
���r�d��"z��;�y^뵇��-�#B~���!�"�q���EQAЌa�dy�_� .@��q��������fL&�{kf�����L��"�lG+�q��"[sN�V1�9C�v����C�T�B���Z_�lb���1�X��}��K ,���q}�?�� �*.�U�h�Z��U� �� ���Z�|����jAU�N����C�^����nP:�R�ߘ�r���.^�iÔ=z��<����hc���&EY%��&E���g3��Ch�3�#BP�eV���8�[b�E�1#o��n �`<����
FΊ�G�<"�!��;P`([0�S��k+�Xe?fl7�5��<@8�v8��=��;` �T��K�f[�G�vU�6��m���B�bу	؎r��R̾�M�ޛt��Bt����,�'wF��e�vYh
�eow�C���50%zL�ǁ�@�&9"��:yKL���C����~�-]�@+Ѕf�^N����"$y��ȓ�� H��h`,b@)����b�Z.�j��u8E.`���h�y�IЕ/�
P�� ������-� ��8����߿:::�~����c/�}W��I _=���R4���,�QZ��'�+����a����/% ��i[e�9��=�J���q|�C����.V�~�X0 62@��HKt�}��(eD�`3���@�/V8\�9�/�p��`(�Ra��
j�"���]�fk�LF�.t^���#�X����ݹ�ݩ*���l���;��];��K<��7}�}xx��j��/}�m�J��L{��
۞�x綦�"|/�x% �dAd�3�!���EA�	N�H����M��B�")/yO(���xO(x���"��ۘ�
u��Mt���AM���:�g��[j�Pc��h�=:��R�դ�J
��O�:�V�*,�K�=:fs�d��W�DLD	P �/��
34��D RBZ�(G�
�]@L*�-�B�b�m���}4۞U���xD��W(E �Q�ͱ�iGA+�^�\ }���Ȑ�1g�Z@љ���d��d�B�0;��E`W�:���oH�*���0�r��:�d���ѐ$�yP��
�[U��E�N�<I�jE�@E_�3Vjs*���! ^�4٤���Y�:"jD�b&�\���.�Z-��T�$T�&�M+�4�Q��G5 @w��j999Ed`��8�f.�0/z����[��"v<�KG�@�� �*O=���j������f��̓��%C^،�m�㳡������Go8<X�n��}vu�dhe,����XQ��HE��$��=RD�8ٌB��)$l���E��g�XTۗ�l(�&kC�|ݻ��!���p�!v2��N}2'�"D8�ʬ ����ս% �� ��T��SC�)��
�ͬ(�
�(0�w� ��+� ( �K�ĝy�«���(�;"�Đn�����f/�V���גk5��)�w�����$��RA�P���&��`���~�Š�0����;,�ެ.U�2�7ơ���Z2"RJX�)�h���j�-F�oz�;�a�5�����͝�$XĀ�&���SD�x;Bc���׀L�/lw�XT�צ'��
���k[�X�
�TS ň�	H��;*jUN��gk��S��gX��N�l�@�%Z���NUhU�x�ͳ������.���������:�8#fM@d@��{�� ��*t�c�wH��T�1+����7IT�:�������VY T	H!`R�ߴZȲ��Z��XU�%" _&���0����4�\]�H���I%�JDB��^>��O�>���>�x2{�V�+ ���ߟ?��~��� �-�f	���PQ���/~񋕈���^����Ѷ���<hI�``{��y�z���YΏnE�)�^�}ꘁ��$�"�bA�1�(#��"�z���U��!c,�H]�����=��hH�Ɇ�r��� ���V�k��d� g����@��Zz�x�].��*�z�)�g�G���G
�Ff6�*QQ`����4�%��=^�@/�l�b���D�K������������n	�a��s�n�@s1�*"�`�ix����&��^|���F��`�a���@̄L2cĽ�E�p�ڇ �b2��%C�L�	g�3PELb�"��v;_ P%�[D]J0�i�f v	��Ǫ[`�
V������-��#6��1(?dO[Ԑs�RD&$�S��&r]���L��f�#�Z�TU�R,P�����y��j-��(�̜�ULL%D�!y/+��ؽ�I�ؕ&�lᖧN���5S��8n׼��@��M��U��-���C. �ے5�!sV��9�&�i�
��1!0�s��Y��R���Ƃ3O*���g�)>�\�����9��|rr t"��%1 ��>0G�㥵��~��g�{l-�� �[�n�Ь��U��H���g�y��P��~����/������т�<�Tؑ� �M�mV����V�s�xUy����C{���S�u�}"�F��� cɖ܎��L	���a���`
��!�h{im�~�mZۏ[�O�I0��1F�n�*V�hC��U� �{ 3��)d_�1��+0���7Jl���ٱM[q
�vD��j�sl���*��̾�	�|#�E�*k����	1D0e��*B��)DP@,A`���&�f���N����Pj�g��aS��% ���:9Z�a3y߈(����)�
�d2�	-��`p �v�e��HR��.�/V�F�$��Y�_6��˶"� �	s���(cq�@Z�Ȣ�_�8�׻��e��0�,g\Ԃ�K�T��6y�`fF��3Ճ3o��`����.v�c��!��,��%�U�"m���E�i���4nC?��y� l>���&h�>�����4{=ϝh�/�+&������*���Y�Z��!�K=��˅�	l��[��1�Y(� �FLņ>i����X6��d�H
]j�K9*��D�;��l�n���!t�����P+Q<==]0���>����{��{��9v>�w��7D�J��@��'$��t��v ��Ч�~Z�y$��=�xǯ����G�����h�g�,�	a-�ͩ��(r2����vx��Q�����E� eE1ڮ�jCĲKH��sT0�12²Á�a��6���y��rF�q������:��"m� ���d�݌XѠ�ު
L�cj(���3DP� 4�~w�噿��{���cx���>������c 4�����r�E�R�DD�����:^	`���vi��?'��
��Č�Lo�|tjk	�{�7⇝� ȳ���Bs��F�2@�0O��R�o�� "+�Z.�IU�h�-�q0l�(9[`� a�#�rȌ}�l�(�K���A��]��2�|�0�$u$�|؅�XۼD)��/ @� ���P�DXP��q}��c��z���5n��q1� �P���QA����e�b�_p/�V�2ir�!$!*@:���E0i{'@ٮ'5ҏ8��LDQJ�@�iB�_gO�����bT���aA��;@C��Z������wI$�}1��z�����Rp��(����l��&'*�!2��������Oz-
��)!Uh�/V��kr��Yk�]E�_a&:m ?���?�|��>���HD����>���o�?���?����Q wfk|���1��_��_��}�{���:{���	�o�?M	� �w��W�b˃Hs��k���v�.�5�U�����+_-��m���v[�����ӱ�w��r��c9x��_v��ǘ�b.9!��������b���=C�Op|�A��P@�:Dh)�Z�V�6)��DR[M&��:��&)�����|Dd($��2?�l���CZ<��fX�    IDAT|��=�أ�#�<dH73��C`P+~�[��RK-�%�c���xI��˗ \������ �X�pF�7���sDR'��6�����������q[-���q��Xܙ����@��"����H &�A ����\rB�]�RD�b����?���k4� �]H6Z���-�Fjs���@�+U-@�@��U��P��e�E�U����ԅ}��E�>�BH�-R��XF�DDbHU�C���7o����S��l0E�N��v��S�v����U ��St]���5��A�4��)foL]�O����^��RP���)F�_ƚ�EQ��H�MM UL�D<M�*^�3x�'���Bu���&1��b @�kN�3�6�\��[,�-V ��5j��hD������<���G��{�1� �YV`H��.�Z��R_���l�����ьtZ ��F��^��Z�b���ꃪ� �����_Y���k����������O������v
d��_)?��?�-���%�.��i�؇PU��޼y�+)�����o��o�4^��Ԇ�eĦ�*r|||��ׯ_���&W[-��	�[Ed{��c�;gc~��<>�w����{˽H2��mѽ�C�3C�f?�����/Q��v��qDAbo��˟�����*�=PH��œ~�j�>�����`ŉ��/���8����74�'������O�|!D�X@5�$X��H�U�����N0���	��8U�*�@B��@��̈���eL6n�hbeO	��9��Q۔c��f�ⓟ`�.C�b��<&ɞ+�bI����T<�d7��m�2��RJ 3d,�����a.�$�6&��>�!�i���$LE�/ժP	Ƅ-���R6���"�*�,Z�Z�f�2�zB|`oo�������U'EQ.�y@���i��3����q��>^w�!^89ǳ�wp�b��1�b���M��@H���)�Ԡ��@��GH����
"�1W�~���mx��ɯ\c��o�f��}��.VL�>�辯fs�D/�h�G�%��2�(�^��QB��:@X��=�ri'���}Ϟƪ���v���YAF���*�Zꔈ��&��)-Jw�KydT9�������I��������NNN: יy|�'���Of�k0��n�MǪ��o��������?y�{a(}��8}�;߹ ����y�#?�#���O�t{��k��k��w���q��J^�(�̸�X�"�ƍ���������x	7Η鰥~��ؾ���۟�.�" t||\ ����/O"Оs�����6g9_��R�O���鸹�����þK��G�h�������<"2�"�`���v��`�ɨB@�7�,p�!5[s�	)�w܂[{K1��ZafD�H�xBa�Uk��� 0Ő?��/���<<<�ׂ�?�S��\P��ss���3��n��ξ�I$��b]L��IL�.F,��L3���V�W��@��M]�~�r��'����j6�[�^��SM�n��~S038�����k�:M�m=[�h�)t)�	�����=��U5Y��������R�u��x��ð��7gcF�mVls��P*j)1B�_^˯��1���5!�Y�#�a�'\����r���V��?Z���n��q|��z���U��[���(J�>=�7�ڴEF���d���&�� QAE�u�!��/1�T�];�õb��� ���,y(�f��i� �F��>��A~49��=n��)�N�$ۃ6�-�T$��z,�K"���R�n"b�4ɪ�v%���J D���V("��X!EZ.�e��Z�����*��)�f��n����N�������|ZU�z����{�]�M�����*����/f?o�q�W�yo�;�:���~�� <���7o�0֟�~����4�7nT"�O��?~���j;����=������TU&"������� ׯ_���+��1O���W�-� 88[���yɏ��n�������� �$��������"���~���R�謘�~x�u�r��m����}�i!�<jqB����2߀&+7BpH�:�y���[D�d ;��]Ro1�Z��ӿ��% �z�%ʪn!@�s-��AJ=��9� ����${/7	p���5R-��6�"
,�X����z/  ���^n�a�xD~ZL�M
~Y�K��V��W�ַ�w?��V���X�هD+bnt���ЪVX@
:��!y"];�����D;QFm�_U\��*wr��n���b}zk�=>���걈�W�mq�j�Xݾ���P�|����;�k�=~}�z�2�@��X�����L�X�)�5ח�_t��{,�q�|�m.�E|��G_h��R|0Ou6��^��:dP���6� j2d��j�`��&�lJ c��o3� �����4�y8��L�T!żTiJU=1������e*8�]B:I�|]��HCl�`�"�".}o����$��v"���T��A�Z�&\j����W�m"B2��PE�Z���ZĬ���^jw�_�~���Ν;QU{ ������<��������}��O X2󒙗 :fN�%
�tt]��x�q||�}��g�7��;���'@����}'"�9�۷o�_Ͽ	��� ,  8p��WUV� ltg�|��˔ �����D/��.P���|��٘�u�}�V������j�GD�G�������>�F�8`�! �N���1�|?ti��-q[ߎ�6'@@�<�d2�ە�h�� �	���ێ>+  �g7�����a�u�g��7���
�"�ֲ�S���WG�����@U/�a��� 2��"`,����v��M�$��i�S�7�i)�`U�H����	�f�7�.����6�2R�W��߇Ш A���͇�����%Jb=17��>�F�5���ͫ�O�
��[�������������'9?�En�X��n�U`���X���~c����v��cG{{��_t�.P�!f(c���]X�_�2.Ep�.�u��� 穻}�H#ԸW��(��-���"B�X�!0J)ַ&��yD6ɧ�4!Ow��Z�<k'��'=���q���ZSK��m̻�)��t�	�4d�`���U
�tA�������Q�c�P��}8�c�IT-1#V0ɤ�0T��ϡ0�+DƢKi�Ü��䪊��VZ@����{ �s�t��}�G�|�;�����%�/�I�*3s��D4G	����J�����g''x�{��~x?|V�OAv��>�쳕��������������?�f��+p4D��U�G  �: �=�쳿�	��_I.�@puo��<�b � �TIU�_��¿w//�|��ƿ����X�Ga�*�}r�M)Vp��c!�
*�D� 2�B/��i�������dV᭨��qBa���"�.	'w���)�q ��w�>oD
*��y5%O��_������0�H�j��ն\&ؼ{
�T�T�!�i-���/�J�f�~�Q�nc�qCv����,#�S�m��c?��#��S �q��t�F �2�n�AB@�)�OѼ률��s`P�GQ%RdU�ت��a�>{�>{�����8~�l,_j}�1�SXϷY¶�6��T��_��4ֲ�:�����{�j�l6� Y�%EA�)�$a$"#��pF� 0�DCQM�@,ь)�
�"� Q1MJ1%j��4��I�-��j�z��z���{��k�s�{���Uwu��l�����g������c��n)�e�۳,�؛�o~۹ͭ{�m�5Pdb��a�$��vdB�	BR��7��`���sg.��A�������� �������%E�nk���� 'cY�JK���C+�z�ɒ������R�n���Y�ތd-# 2��|����*i{� P��"S�����Xa]'c��}(���	Q��S �h��P�%!2R���'!��)�G�Q.�YX����~����q�������O?��OS������'"���?N�J_�:{�,~�o��������CPWV�QUU�^��j�I����7q��hվ��� .��EU5���U��~ϯq ��ak����ƍ���'/�=��b�9�sg��{8Ǵ�`����������
� P@
��a���uu�ܘ,D�F�#.~hUT��KH?�}�~����\M�`2�`>�z� �<�21D��ꡪ�h���y ���" �ԉHos�*d�� �ϴ��9���v���!'���Z�׾MM �~�
�8,\�k��,��kz�m%5E9����`�=��|1<��`B}_1����q��x��Ja,��	)�ȸ�e��)b����|}��>w8۽�螝�<����`�k��a�aj�v���`_x/��,
���}>�ٍ�;6��y�g�h!��x,�5`ԸW��A�$L�-F���0`4'.\���6A��
���Gj��L`�,���p9ejZdd.V	SELL�"559�ulfUQ��飍� ӕ�Ie�j�4s#��/̏A��	TED�)�R��V;t-��;�%��s @l�hBR+��%�_?P@CɐaS0S�^��4��H�GCh�D�:Yc-3a�U�k<M� �={v�U���C�!��{�'{�u�`�ԯ����G~������w	`5r�HA�^��X�����Q�}�{�w��=���W��_ͪ��%� ��Z ���_�r�ʏ��x���uJL?2RQ�1�����O����������䯢[d�" 
����Κy��=
�ۀ����k`��E{����^R�8Ȁ:�Y<rޙ��\�+8�����b����8 V$)���N���������#�@)s�T�)@(��k=�+C�����d=��ȕ�l��S�+xb�:*~�ڌ��o�8^K2au�3���'#�;l�2�vV����g�-؅�� �@5�Q��"���#3�����YY���2vr)W���g7����"��g��{��Z�׃��$k��ML�"�N��b&;S�o��o~�bk�3����(�%�z�3��6�vM	�5)�ͨH0l�#��.3�k�U1Wg^���d,X�����x2F���~���+�x��pCV�Hx#����>����j"`�Q���z����j��~0O,]�+��x]p�(�E(\:�C�"6-($�PP��(#I4��`�*�^-	h)�T$��cQR?8�����]��23ت�W�?|�D�eV%�E��ҏ�ȏ��� H�����?\���w�(.�q�`"�������x�o��� �s�k��$�upX�7{+�T��k�ԣ{�؂!vvv��W��J,���vǈq�pf}9���e�T�O����~�4��R{�0wA	7VP[C>��舓�}�pe���kss/���1;���bpafQ>��_Md����b�Fs) H�*���d1sof����W�v��г�졺$h�w��$"�C�l����u�k��`1{1k�|}C!*�A+���������s�\
�����o" )�d�s�n_�3��޳����.��B�1���`��8c���Za��L]R0`��y��۝��{������{�l�ݹ�֜�&LD�VY�>i1J≎ ��G��"0i}Q,�b�t��$@	�L�� ��Z<����"�]$���];���횣��\��&%L������~#�UT��*jm�	>�Y�]�0Tp{d������`��d�����lg�S��>&ڃ4��y�=�eA��bE7/��MG��a0��'�\���(M�n�3���IU�����֫��RU��Z��}# k9�/�����y"���] !���� �����'�������?
p��ۼ��z�]w�εk��
<����5J�R'@6`�� w�����y�M�����R
Rd$l���P�y�94���(��R�����vu�M�.;L�@u��&�"ʼZſ�PO{�[�A[[[����Sm��R2�̪S�[���m���  Y��Zԅ�b4Fg�q2.�R{��6[�"���*�R36/����8��@��'T�>H��D�����	�he�	��k�9���XJ�2��.]��n�6!�dU}��F�E|��=
�r.�������7J~h^� �x�u�"�*��c�j���b�� �C����Y�\9��W����;6&�;�����Q�P@R�*BP1�0
�����ӂ��Y�������$d2��w)E�O2(��@M�L�'j�a�P���� �_�f�[��j4��B�`�P�D���A�:,[��=e;*�|6Nt��S8�-*5s�,�nd+� �M�J6Y�
ՂXhx�F^
nHU�n�~g��s�$TS�Ѩm��+3�ܶ �J�~0�8���j��=�,"�]�z��z�q�y��?�?���z��H.��S �Z@������g�	��iՖE���P�"/]��; ����h];���l]�zU����u�W���-�� .��� ���/��6�z�Ѧ`H���M�`m� ��Q���0�{��IDQE���8�� ��#brk#�4�6�Y.�^S�>3�B���V�/��#�t�;Y���k[�:d�̒��\�gX�ӯ	��>^ �	 �j/",��p��E ?�V0���c��XvAU��qƽi��n_Q�T���� ����7������Q�7�yoW���H,oF��b@��я��ɨb����uF��4�+ n�^'�g���>��nl��'��Â�X�_���V��W��f��뀣r��>v�9X��>�]��\�wo9sxxץ�h�M��{6�Gwo���6
��@�"��6F������dg@m��$���E�d��U�K4v����R�P�e&.\�b�/���;�!2Φ	E�1�������%�/K]TAb-��fT�!�P��M�^[���ޫ{¥H]�7KA)�H�r`p��F	�m��ﲑ/�"��p�")J���H
sU&�/6�LU�C�4M_�Z%9�ޫ��k�-�p)��}?Wթ�̈�������˗'D�1�������>�O�i����;>	P[	���@���/�g?��?��~�������K��'04o�GX�/(���ŋ���ի?���&O��ն������j�߀A� \p����G^�\�v�Ї� �1��q��yH�6b�E��&��)��3p�hІX�2'�{�P���'k��a�������6�d\H� �_���w����u����u/>�: �6�nU������ ����YE{��-C�hN�[�m�16�_�1�f�g� �= �z�8<Z/u̺�	K������F�M۪(G��0O�D4g�����V���G� ���Q�0�,gt��mZL(�'�]hs�E
�%�v�X\Y���]ytV�Q �x�w`ŪU�˱DOR������ z������O,�]�w>�;�t~m��=[㷝�Z������Q���S5�@�\��Ԇ�&ac�`>�h�qѣ,��j��j�l�Ĭa�y|�9��"�Mr�o�"؃ �A�)F�!�ܲJ���"����L��ⷷ���T�)����_��Kt�)�d|��q���ɜ����~�1"&AG��hW6���7 ���D�2�)1��m�cl��+W_8���+^N����E�k�9s����E�����ݧ�~z�ӟ�t��/9�	3#-�1"�RJ���#�6� ��������?�w^�-�����Ò�),�W��5�F���߽|���?�KyZǃ�X�',��U<7T_��W�������  ��o�ךlN|=+���`�&7Rk�$´(���j��|7a��Z�|���-������!�q�1���>�cu���?��~����oN�9�� ���Ľ;�"��ܼ�{C!A��'    IDAT �1� �: !��k��~�黃��.���s�����Y��^�Q��u����I��[T5�qe����Y�˜p��@a@*�{�a8���(��[�U/�r�̙���bz�C�a�Lf��������v_��	_���0�u����]�(��n��������"�=��ck�����ﺱ��~�pv�}��g�yak���ə�О]�8�$��1�l����-Qc��i�m�X���3���ˌy.� 1���7�d~*5C�C_""�d�xQ�_	�f�Ud	��(���9b�~�dΑ&����|�ώh�-t�)�l�"�"����C�p�f��#��(T�U\�P����Q�w��+�%弈�]~>�ۖ��s�׾�5<��Ӹr�
�^��^xA�\����C��N���(���h4ꛦY��޸qc{6��H��u!j�&��w�9�*���?��DP�s�{��{�{����U�8J [�f������?~KI�����?��$'�K�QŻwvv>�
� p�������>���җ�q���^��@��^k��hH��$ĵ	ڦŸ(h֡�zh��wKp��������֚�����|3�Ck��'��5��-y�YC��8���Ńk���o��ߑ�r��З����rC��/�CDdF�v�˰�ռ3��V��B�C_����2�J�
���`v��B�Uc5�%)ď�聠 �$(�p�Є�������R�8��BĢ̺��(2�X�z�&�k��(��z����}���E����]%��DN�A��XM�n���m �(�k���[0�ߞu���zz�����ݼt�ٵ�o9_��QjϬ�0�PL $H)��Y���H��kX�(J.�-:�gv�	�"(��G2���Gj�~X�n�ϯ2XOa	`F��{U;���������x��4��q�&@��`}�:&T���Y�j�>���M� E�d�����Q� ��r�
�0y@�IL�;�=�˜T$jI���Sl�ӯ��C<��C�կ~=�y��9�[��U�E�U���z^L�Ӆ��Tu����̻}�23��(ƈ�m�O=��c Ƴ��F�Ql�&��U��%"ef��s� x���Qo;��	C�;,���<�5z������=��N&�S�����]��ݷ���oa�S��׮��[x�aݸq�Ї��������;~)�f�ؤ�<:��,jƈ"�m��8a���{��Rp�`��PjwPB 	�?�[�YK֫U��aq#�7�zA��!��Wm`��ןG���=T���t���o( 8��T Y~��Q��9z�������jU��O�R�kM�ߐ��
�G�	�A�+o�X��K6�0���LPBl��j����f�1V7�A�wX���Il0nF7
XX ��X����eyr�x�Q���Z����8��V5	�D�1X��F/r��κ��sy��"��Ƀٛ��k�xǙ���_<�vυ��ڸ�֐b��̴�Y���0
���	���q��Bp�3���0E�&y[�m�QGq\K@u ��
T����+�v����J=��3$�T�M̠G�5�: >5�m�'n(�NUGw���#Hcߛ*@4�R����'N"#����HfU�	Eyh_���������C����檊?��?�g>������}��W~U-"R<�/�y���SU���LD�\��3g����}/"��ך�ivvvf����lnn6�lfb@%��<�C���W�� nS��5���>,?���8h���7���������rｷ��j0��.�`����J�׃>����}���[�]�I%�HЦ��L�܅�kwm�΍GHm���^��hc��	.m.�#� ��5\�.��֚�� 9������!��ѩ������! DD5N�/}�#�ɟ��S}�� `t�4g"XMR]��5����' V��PV;��2R]��K�eU�K�Cphݬ�֧���Ч�.Ko�c �#�Lf&D�j��GE�u �x�!,�"�Cc-��NJ	�{̺�0Rh1N6�L�]�t%(+zV����N�wf�<)"��_���8*�J7�굩��Uc���?���L��Q���|}���g�w\9h������g�fw��`��;�����Fm
���Ĉ$�l5�����h�`4J�bA�3�f=��q���F�V��lS���X��v@`���G�*Ud�#p)s��3b)?��L\Ua�	�%��V5A
8�����-y	�vT�h�c�1��A���� F�ġ�&+�����\
�Ճ��l��7n೟�,>����+W ���`?��+���#�|��|���c�}������y*"�����W�~�ҥKo�v�ڿ>������_���<����5,ŪJ)�����f�R�������C|xx� ��V�o���VM��p4_ �s���Rp��5�t��iP �ŉ1��~��sgg�8�k������~P}�E$���@~�G>7N����M���_筭pvc�Q3���@�2�zP�X�L�5c�i� ̄@/�`���(4��l2)Z�*�(�|W�0��+�J4Ȉb�\x%- �vk,��m�"r��� �7{�d@3��|��J���)�1�p�!�ӕ�A�V�{����{�j�b���C$��X����G��<���[���bA��!�h��߬�Y.��PŘZl6��-�9c������>��w��˪��������Ǔ���h@�%����T��nW��S���.?��Awϣ����s}���sg��������b��PBV�<���x��6J�h�m��6`�Y`�Ϙ����^	Y�	��{�$��=a���8��ڳ7N��D�G�*�4T��{��hH ����1D	@U����\(�#<������	N�a��-���lNaJ�P1�i�ǀ>�e��}N.�\
~�K��ma��(>���,�j�W�\!}7�_m���c�=�� �'�x�X�Js ��lvcmmm����G����=�}�L4m�Z���W �����������N��猗� k�S˚[J�������D�;;;��i��.U�'?�I���?<~Y��LU�?��/�>�h^�RJ�ٷ�0w���e+�����IH�`"��� C@1��/�DC/�=��έo���LgX�l�a��?Uh`��F��|ɜ8B
�@�� � � � b��?�� 8���d}s	H��X�綏���Z# ��L�E��j
bT"�A�U�Y�Ņ�, ��yQG��pɖ�1@�
T����a�&pq?�NKq2�����h"�I_BH�2>Fփ�DX	[�1FMƼ��R�B�V����z�@AЩ�B@��a���Ew8��9�_����^�u�UFM��zd\�D�� ��vew�+W�̺矛v��8�߷{x��w^<�yqmm����$ S@� 0��2�rۢMR��܆�&�gs��:�%rR�����
`σlL�0$�C5�G�M�Ԥ`ٯ�}��|����T_� �Z�'��(�8�@E�IT�9�vމ�*Gu%���B�! �Q 1���L~�6U� ��CU��
����?���x��������}o}��=�䓿�%:��5Q�N�?�t:=	�J�����-� M�P4�Ͱ�Q�� ��]�UN@��������'������>����y�Z+���n��h<>���T����q�K;;;･����_>����}���0���#�=�1XrX �D�pd��!�F��d4�y=�����sNQ2c}m�Q��k���1v��qm۳)�M �0
3=��D���Ɣ���(S�����WH�~�<���50D�L�{�p~C� t�1@X��CЃ�1FAܶժ�2�0;����8��a&,��� �A��C?�&��g�9&>JET�b\c ��Ԃ�D�`�~��1��5���h���]��0N-�NF�5�/����1����n^�z�r�O�$��!^���$��p�(���*O`�e2p0g>x�۞-�k�s~��9��{�t��7�'�Tb���B��1_{�`<��4�4n�A&�B�v�u�䘌�IDH�5C��Mz�:� D*��qEj��F� �'TAl?CjJ��Jw��D}>�'0�^!hcĨB�!Ĉd��B��*���x�%#�b#���U�(�Ea|�������=���U��t�<c�C��������O>�(�֥���5	XMV���J'a�p�a)i] �x<N5�� �H [�NUK)@���/� |����o˗����$����������䮻ﾥV�M�I��"̝𮝝���ʓ��~�S���~��5�OUu���y����?��Γ�t.2	�E`M���\@ %4N��.:p����!0(ln����&�S���F+E��-�) 6�	���,f����H},��/�#��%���޿��" ׯb����/"*,��q��5I^/��P�����G��-B�6H��[�&�s5�56U�`�T}`8����.=�s����^�8�P�Ǡ����lM��eX����v�,�Ilpf<��xd�t�df2as4�ָ�$���f����4���nQd[䈶���O�~���Dn���820�ǡ�l���ww�/�������ٍ��]7 �+�3��&A�L����36Z�Zkķ����{�N�O�xm��Vŋk(ͤ2�A:��K;�T�!��Su4uGkD���#a�
8 N�q�����DI͌�A)����٫S4��;�R��I��%�脽�V̋�7�r{%�UU���TU����|�������\��Xݧ�0f9�q��&X��L�T�������4M$/�` ���BD������z���ʿz�$ ��
�	
p��w��! �^"��������0�j���Ky^���),�R����%����n.����|�5-�v�عk !�w ,r�b�y�v ��1��RBJ	�{��Q��%H,��H�,�w=J��T��[sQtE�E)l�(���}���ɪ�@ȇ���;�*�C"t|�� �l	�H15@��u���Y�& ��X�'^����U���;�Z�jĲ
�V��NYM jJ �1>����ܤ��9�[�}Yr��A(B����6�7-�h�&5	�(��h��&�b[)�R��X`����}Q���X��^�`u�nBﻜ�(�����2}d{wwg>�~n���W��|�.l}˹��Ԥv$�jL�i/���0���4m"�Mº�5�`(@Ǧ� Bd��5�����WG��(�����ˑ�Д����ku��by���O��bxm�=��DC�C��� �8�U(�9cƌ��ş>~�.���R
DD:�
�5�D����G��o���I|_�T�  &�Ij�&���VN�+PC�̕M�ͲV�������0W��[�\�rE�뮺�oF���;;;�ToXM���(?�3?��܋Ⱦ�\S����G/_�(�{����G�s�E�6c�p}�8w��]Sh��&�B��3�(����Ƣ̑�GӴ�ֱȌ���&��~fE?�УC'�̲2�`(
l\�UM�����ˮ� D�kL���i��
��]o� �|��EJ'��*Z�vTMk2�W` W��7�U��A�?,	~����lyF���������g�0Ũ.��,@�.X�g�%�|*j)s��be� �)b�i�Ѷ%�(���V��=���,�Bè�/v���l�'�Rq�d``&��ʼ?8�r�Z��կ����/���=w_�z��d܆�FY1� ���pѣ+�q�BJ[�-�V1��3��D�W�ѯ�ҟǪ}"�Yz��9�h��o
�*;F��A�������z�k���{���%�?�8���u&MH@S�l�"�&���0&-Y�/�y.��<q�/23��:��f����}�k�|�}�}7��SU(�L�XV���I0��*��m�
� j�6��,�l_�V��@�Y ��~��~��������9��I�.�΁�ʣ"7���h�F#����Hw����To��m�裏��������\D�U�f~
"_�����R̬&}�Q�QMp6��������E�uf��F������^�E	��ɻ�ƿ҂��/������5�7�ow�d�D�(�%P�)��@X��q��X�t'���.�'"R�eU��� �T ��h/�V��q�l��\��5��3L�֟����Ԭ��|/�P����Y��0r�P[^ܙ{�II�`����Q���BU�{�M2Y�H�(#[���J#l�c4)�s����M�":e��}����Պ��;�����v z���tZ�tzX�t���E�Ϋ��o��;�o���K��]K)0	�vsI�e�L��q"�0J�Ę��yo��6�1���Eh���ذGs�� ��ndF{&A*ʮ�e:ye^�vV�!Md���=W���#K"�X��&F@�{�|~ߠ��Y��^̙�� �W�c{{�\�?�'�x�7q�VD�������z��=) ^�,+�
�B`�jO� ���_�~3"�/ `���Q���ܹs_������<��Ύ�;wnU8��o��W�!�]���~���l6��Ȯ�\e�'{챟�2�\%6�b��rjb�� ;�"���惜�3�i�J�
���@�T<T	J	����E��>c��.�%�l��,j�!��G�4؂��+��[� �}������$��!Z=�O��m��� ��� h��4ֳw�� 6ڶ�B
!5nӚ�Cǐm��m��s��/Tہ�A��6���Ũ�k��c0Ö y��ABl�mLhSD� ��{l5c�� Ό윁�2�`�i�~β[�bY���~#��*��\��)P��Ã̇O��n�Xt/<�?{�����M��[kƛ�C�Q-�P��6D�Q"l�k��2��� �#���Rmt=w� TY�`!e0��@�N��Wx��� -,�Z�3�R�������6������m� r�#�����"@/�9f����_�勵���s����b�=ĥ`{{��K|�[��~�����1�����z��e���_{��b��\��ur����s�
R������������>��WE:ص�	@E��Ν;�;;;;��)��څWw�;�q�To�����s~����_�zu&"�"�<3�����	��j:^�*�����z���R���3.�u)�^B�}_�I��-�M��.=
�I	�s4�@�L��#�0"q���QG�	��}�ۿ��S~�@�uǾ7��
A��c�
������ ����І%۟��.+�AjcymۘY���(	�����Q���C@�&���@�-�sV���\X�e�����Ma",f�� F@�"6Gc��-�.�`��/d�sV�L��/������o�࿺�{[%u���U��^_��,��^.o�~px�w]�<���66Ώ�Qjlο闯PXЉ��0E��	��0�MȘu�����B���6�#C�ԏ4�i@�����ք!�x^t'��;�R�J�;)�H�O���¶�R2A��Z�E�x������ٳg�w��/�����ζMY���R·�""��ɓ�ɚ&����II��PU���W�GF�T5x�%J�_z���9��q�j+ ��5���Ŝ�S��;;;�s��݋e߿V���˾)OƘ�?���?��TD�3����<�2�f�,��w�=V�D
�,��>_��,E� ��q�p��j��"7l�FP(z�lL�����!̆>��&V�?���=V<u��(�@?= R�mJ��kv��: ���2 &�%V]r,B�mB��{����
 2Xmēª6���[�����g �4牆,�����P� ��W#)
0x�Z2b0�E�j��i�    IDAT�W���z;Bf�4�RЫm2B��t���KY��XB��!���ˡǧ� �3��bvmޗk�y����M�pf����iS��:�G��~�(J�@'B�n�����\k�|�#jD�U{\r�^� ,�ޑ'��͢���M���*r)�E��+A5�2�H�#�CH)!�`.6^
�W`.�����}�c��������/�V$L����BH�F�8J�{z.�4� Su��VG���^ǃ��8ܿLԗ��;:�1s "��W��7O��o���T>�K�����P�S�`�������9�e���+���������\��E��˗/�3U2}9��C=/��ἔܕ,̌�+�]90���bD"�����;¦�@���;ťBN@�Bj̡Z��������~ʯ�  gS2hO��� ^���� �XT�*�4�[ibD;a�I,���\7�$Ɗ���=\g�(�N�P'�Ye^eSW<�&=��+)�K�q,u�`�ߊ�~�W�MH)"DH�0n��W��t�(d=�.��\8^0�� ��R�	����Ѐ��*Ip�����;���۟=\��/�YϿ����q�R��������n��A�`�Q�Pf�x���BC��HyZQ#����_���-��k��+u�O�E��T�O,c �k��*$�T09���U7� �Pe�GB�����[g��#��?�q �����\9����!���Ik���bO��������+��J@�X���l���ǲ�gw�rb�`=h'~�/Œ�`I@������6͉kgg�ϝ;����z�7�?f�?��?ʿ�K�4�����<z���_���8a��&�k��ڈ"�(�=K΅��q����KuM
>�%DV0�2��~�L
�0�_�>(Y)p�< �fK��t=ߞ�������/��T�� �<hȰQɚ ��� �� �Ģ��"���SB;!��-�K�x/���U��Z�ہj�K�5��ѭ
;op��UC!���<�ެ�H_�I�b���b@����) ma}4BJV�da��?�	�E�K�E���r�o��_�Ih@�\������|1�������\�z���3G�.ũD�J�Y��ztR�6������:	(bhM BL�ر��?��� �a^v��v@� ��$>q��
V���Dp4�*�"����33��L�,��\0+��k+�?��?�O}�S����������Ԗ	�mj6�'gS!te)�ͥ\f�1���,{���~&p�}L�~��%�_��[U D�1FU�L�������}�չ�����.�V������m�ӽ[r�ʕ������;"�3?*"��"C�L����>�II@VՅ�j�!�1�wA���u�t	!���KA�;daP�HU�z�:�U@���B\��aV?��n;� �)5X��ED�b���=!^����� ��B�B��lmeQ*,(d�i2�_#�����{ ��+8�:��8��J�:�9��N�r���w`���+Ɓ,8L+ $b�UyMLhc�1����E��Z�\��"g����j���f��:i���R���B����_t׶���y�����Ξ�8J��@B��E�������m�@�K��g��XJ0Hyj��o=)� ��}�5O��Ǫٿ�׌{<��h�Q���Xj�˩�LP2".~��+��`&�3��cO���K�B���_���O~r�D���8��;��t7"	�&��I�lJ];�c���gr��q��^۲�^En�����q��p1 	! �<x}#�̾֫�O�@W��m���VZ�}ҳ/A=��^�/�����������\Qկ��#�?��?ǲ��$p���2@BB���BDt�5 g5�
l�\Ё\kS �[�N�#q��l]5@Y}\W�Ѐ����ۧ�΀�- "`����|.,��||�ku�! ��ϥHa6�5��A'�q)� �N�2%�h:��\��1�t�W!O����j�6���oӓ��gv���>�Y�Zkbs�I.�D�hcB��	F��oFhcB/���bp��K3�Pg6�y���D�o�Uob:��UU���� t���S����2����p���[k�MA�����h��ξ��I�A���ɔ�e���՚�����d�>%��i`�� LE>/\��*��^�դ�

g��\�з���c���_>z��_\,�s��>����[[[�0;���e�0c:�� �M1
�:Bhb��1�s)��]._����� K�7�����[�\�h�4�D~��;/�j+���=X�C6�
P�S��W�����{l���T�IU}���˿����qm�[z��?��I�F��+���U`�GwU}ft�GV�Ds��BAK�
J&�b�8
���LqV�_$������/�<��{^�c��@� ���*bFZǃ�zp�! DIs�UD��H�}Y뭄��������ic[�_�0�g=3r�\���C4�c	��PC$����TB��&$h p�d �h,ӵ��8Z�R��Cl��JIÚ�3�*t�:^�a����z�^��;�� �Y�����"gY䌿Pz���F� Q! �&\���b����%@�퇵�;��_��u$ T�Y�ȁđ������-
C��{U���K1��)�锩�㎄���R0g����cv�/ԫbaFaF�;|�_�?���~n�4M�\
��l?OVHT���ή& ���J�0)5�ϣh�6���3sm5Xn��n�ޙ����_��V�?%"n۶&��Y�I@m�`�
P .��%^�z����P~�~k��;����|��d���U���guu�dZ�(��M}61-�*Q��\��3�Rlr+�Q:��!@!��쵓D���}p�I��pr��(@�~hxT`�M��ד07)�s�^E8��M0�"��') +!|��E��,Q"�L�EՉ��޽M {[��"~�[u?�,���n�
��RB��g�����jB���Z�"�F/����&��X�a�YY��(<~||3����Ϲ���{���t�Y5�R���"�9��Ѷ�B�zt]�b�n��6	Z��ClB$��� �`����p>��SJC�`��kI�?O�P5�"�lD�������Ѐ]�)�	�AԌsf�X�ٗ�u	3r�X��x��G�3��(]?���{�<%�|>�x<`�$/J <i�*f���F#'%R��x7�BL1l4141�Q�zߗ���Ijt'�t��� W޷]BW�n�o�������ul��va��5����K�ne"��/��g�yF~�g�S�)�"�䣏>���$�m���z��D ��MD1%"��,��w��>ň&�	�6q���]�! �Ϗ�Ur�Z�X��@���&d��-d ���0��{2��*�x��3�"�3��d� HL!�Hn��#,Hb� �
z�Ѐ���J�b\�`$��TS�e�X� �z��pMg�a����} ߁���E��H'"��=��4�0�	mj��U	�1��'b�@�c����7[���V�Lǉ.��@M���s�EQѢDߥDr�ٳ��"2#Ds���F��"�� v��L�G��T����$*!)�!���3ET2�:Q�
NԄztNغ��<�D�R<0�Y���>3�1+��(�/Ы_`��KA�ux�����0?8 �w7�^��q]�������a�֭5�����iM�3��@QX�Α�Ц#��16�(&P7"`�[�z�W���=ب*έ|���Z��l*�/�NBV� c�p�-����T��{����2�N�D�+"�F�g���ߎ�_�>h�:i#Rl(Hd$��Y��[�Q�_Z�}:���=B��']j��	{�6ꭤC�ȢP��� k,Ǡ/�nq	 a�0@T�U�{;�~�����>���3������ ���������d,F�d�Ds�S@Ȟދ�!	���j`=������"�RU� Sl'7'�(���i�ӟ0�����1���4$��@B��Q���g��q��ծ�D���W��!!��蔷w��b�	oZ�l`��ZE��v�фE��/!����h�%��ۿ
D����r�H͋<�U�Pm����*hHUpe��
��P�WB�>fόy.�����ןz�/�+���q����`��5. 3T$�&�1ڽ�4M����G� m���p�Z����GGb("Z�A�B�@��W���+F Tx����l�Ԥ�o�u���P� U�䕿�*~�~A{����=�'?�1���?��U�?� �R��QJ�h5��Q�=+�ʹ�����qL���*�r��A�c	�Oi�yC�F�~�׈= ��B��U[ {{ױ�u��)���WG����������&���޻[�]Ubcε����ά�GV�V���8P����n�A�tw��������v�M�m�@�h�nh�p���+�a$�a�`d�JUP@!U��T�̼7���Zs�cεϹ7��n��R*U��Q�=y�{��Zs�9�E�H��,�\V�H�";��Uy�7��cB7�;HXn�
�WW���P1��,(���:+C� �LO	Q	]���	�LG����*��8� IFA*E�Hk�8���v!2��z�@�^Y�����7����}]�LI�� ��H�\u��T2X���g"�k{[��
p�:�c��H}�v�����_͢��̄\Z� )���;?��I�\p�2�]��ӟ�wM���c��/�<�{�iĒJAP�J���C؈M
��˯`2�b6��m[����bh (H�\�rl�u˄���<�FK�'N�\������u������d�
�����9s�Q3��2�5�&@��@o�����g>#��G���Uu�K<��ė�������y0Ϛ66&m��4�� ^A������
�\0T�?f�&"( �}�����h�S�i� �Ղar�q�;ow, W�l���n��qǟ�� ���rQR�%IQR1��")
�C�����ڭ{�?*c{��@"N�[�8�i�� Ъ�XH1J�"d#���A��PL��#����"&�E�4 ���_���3�D���TET�R�"�*�V� ��c�9�ީ{ "x�xV�Im���f�C�)'Df4��6�0#�!6����c^؄oX�L�	
d2�O�O���T SXz`�C%���Mz�,D������}RF�	I���-����O)f��S�_�ٓ��~�7Ѫ ��� �_3�E�n���u\�x��ML����~J�@N	â�"pF� �B�r��*_fCZ&�&p�n-�^�γ@C*��Y	�5C\%��&ӛ~�L"�i��s ގ�,
����`(��8�ٸ�����^zI~��~LT58&�] �?����E~�;�쿁u1Lac�4ۓi;�-���A��G��aUd�(9,=��G*�Z���K����?��G=�Z�
�3��gU>����ߞ��*��q�G���)DE*$7!do��7�S�]Q��$���mL�X�/Đ�@�7r�V}x�%ų{k�p<�-�5(��V�:�D���d����ߟJ�V*o����D�6��+"���  5��yN��ڛR` �D��1Ő$���Rj�̪xʛ��
�A�k]3��X��votk�.<��=ai��`�!5�>SX�a�v֯� ���͊W�+�)�_�ȲՏ=P�D@�Ae�`o?4�I).�MP,T�����i1���}��Q�d��_|�#���	{��fxR����UP�8><�b>7��.N�����C��h%�|Ҋ��xW.V63��$)m"�v�R�!�*�I*���}�o��j(0vT? �9�NiY�1�]��n5jPŁ�a� �X���ED?�C?���ê@x�'��/�w�J�������f��i���zӬo�m;�@EH.�`D��ϱo������R�!��s��U�*r2P��Z���~qt�]&�7~��p�߷���}������g�-��k�u.�]����O��"%��J�Ek�]�j2���Rc�k��a���*��4���kAb�/���wV"l�����M=�2.tD�I#��~��1ٱ['�1#tI�<���L�����L�ZE�����u"}�; ���lmx��GxPD��'����d{ֶ�l�ō��.-䒍�<C�\$��P��A�q0���Mx!2�pIP� M�����mN$�~@�<�P�6!
@%;���w�|��o�i5������7\{�EL	Xc`�D,���X�3!(�E���~6'Ϟn�'	����	\�0-V/U!d0��(2.��0� B�I۬'-��*�u����Z\�>㫉����OQK)�$�]1Ʒk	 X U���r��h�����o�������O>�d�� �����<���?�/��_�j 0�G�͎qqB;c�QM����F��ֺM�֚rB�	Y2��3k��!n�jw�#�d�Y�gɦ��ͮ�S`�����!Ć��o�����:V��RDr)%圵f#E�	.61�&�rv&���T�&ˠ�M�#>R^��X�V��������}��~E��l]E�!`�<٭�@�b�p�>�Ђ@]�h٤"����H�� �v ����/��ȪPZ�_o�Ŭ^�ٍa�t}������i������.�t�i�0O(�غG��mF�� ���b�#C���;�m��lU_�Ȣ (TR�a	U�w��aQ�r �\%���#���3���o�O~�*&�����##�!���;��������K�aK��X0a�H��q-��/��@��4q
]O��ѽ���Mi��rU�u��՚�
�V���ٌ�� �jW@uԫ5��VITU|۷}�2��[݂T���r��R���>���6Z��U�Cp�w0N��k�� �y�%�@FtN�P?��1%�iːKCtL@���/�w �d�vx ׮]��w�l�\2�B^���-� �^�)&�*�R��R�Fi%gC#���i0��4̡b�Sf�~�R, ������e$�ti�S��E@bX�������$����Ý"���� ���q��Lԥx����2�,�t2�(3�a���!��sٕeM��^��vg��S�?�!|Ч����N;�tg2�m{csMJ<I�<�	��h$�
H@���S	#�����2B}�n$�o�uw�Y������-�w�8�P|�JE�( ��s/��(p�����~A-)& �DXW E�۔�f�ZB���v1����b@���� S0�cĉ�"@qB@����Pr��8j�1vYi���'��J�R@ �j����t����?n��*7��X)�������=��?�����O~�������NA�u�2 ``�aޘ5!Nb�&C|�dG�V�5 �l�A���U˾l�~�0���{�ر`���D<	��o5(����^ v.]F�	��1B�,gȬ�u�78�p�S �"Z��d�̻�l�~<�tm�M�A'�b��E^�;?������L�y?�(�5(p^��;4��?�d����(����P�v��/�N,ј�.�*Z �(H"z0����C���qx;虿޸pLx�/���׷�kkk]�ܻ����p�~���x�ED��k�����ޝ� R�恕F���8X���^f��U,1�����5t)���]9��19����v�]�D�
Z6�]�-+V��(��̂�� �Z
;�����[�h��"�S�	=J  ��QD�E�(�J��i(�����~������ ff���x�vF �Ώ�W������}@�[��}�������8��w�֩��}��a��<�6Mhc4��ċ�*��cD��&B��s�*�os�*���<���B��)`
��&X��ǋ���O�z�c\�~�W�-
"����}�8 *�YDrư�    IDAT�o4+���ƦŤm[�@U�~18��] �\�#��o\�i���	��wՕG-���f����<��;�B2"�4���	��=(j*�C�����Xi 8NI�4,���+�" wrb��G��%�Yu��"׽r�x�ϯ�ol�M����x��=�I�����2A���8�'yY���TM��2X�� �n�u�i���p:��,�T�<�\·>��{#T����w~��U�������jfq��Z�' ���f���U^�w�Jn"4�Ы@��&b�{"���*�ben�4BR%��R���|�@���� �F1g��S�*�Y�f��������.��16/Z� P���{ox<����?����>��Xf�wj�f��bz`H�&!4�6��� @�г��|�V=���?(Ż��P�t46{�NGp[�Pu_ FrI�:��^���?:�^�zu嫺�R�"���;�����m��B.@�\������9K)rB�ml0[�����y)�d��!�]kE ��Z���-?Z�ָ*G���(��	"4�(oB )��
8�"��\]����WS
�z�JV�=�8Y��bH�聈���߮m��5j��BQ��1S`������╽[�n��н��l-f�!����Ź!�d�.ͣ8;�w�T��a�~�sw���P��ڢF.&X˞"XHA_
���D�ۯ#��:v���'��?C��j��u1σe�$/��lnma2��i[p잹�0�`��!d�'�Kn��Db��!!@8"�����e�Yg9�����Tn�RV	����7e�O���#2u�  %���_��`sbk��������/��c}��~o��>�f@�g�	�idl��ۓ�iC��ڳbY�[-�������t�$*�E�Ш'��D]�Αm� ¹a�dA�+�����w��"�" ����PRf�ܠ�Ҹ� �Br @TU��=���)��NTAM@ F;�a"@.�6&�=2e\t+:k2����~!�P�U=
*��Į��Y���{Ĉd=ݐe�i�)��+Q��{���o�����y4�;9��a�Y�XNg�w����m�%$�=b9���9Ϟ�?���q�B&_{��͵u��hC�b�C��r�@�l�F!������t�QeG����I�ϼ~b!�ƿd8�Eqџ\���AOmh�}�"����q|x`���e��������)f��������� 1��+a�i�P�a�:�"�"���@��"!��DWBD�0i����H)]��C9 ,�s�*p#b�
�`�ȱi��@D onn�K �����_p�{{{�͗rl"U���/�Η(�����?x�eޙ��u!0AԐ���R�8�)a��, ��*G�ZR��}j;�uu���b��<2�eY������������"+�D�j�[A��R����ns �߭b�� U3�RW^2�}��j4'tE1䂡_#����[����T���/u�F=�����1 ��ş����K`$�y�G�7�Z��z7A��)��B�ͫZNR��b�'Y�)����Y��w�ӣn
f��w��w���s���r��l������tm��/�9��%A?r*����{�����&�V����P6I�j$�E0�����������`���@�Ѱ3�U\���@�2�D���?����I�oa�"���}q]Vo�tuN-�
L�k�%npM�0��$=�'��@
A�N�f+K�p�t0���;��ʺ.�bD_�t�7^y��^��DD�R
Y@RU���
���?�Ǐ=���������?�m�`�Ž�����"V�x�ʕ/>����߉cb�����O`A�F�tq�l�k�ILl����J]E�(N�4+J!�dN�L�"�IT��q���U�ÒDF�]!E�-�&^�'��U`-U�3��)$뮌��X��!X!�dT-c�MTRƂ
.��4�؀�a��Q$.������R1�'�eǕ���.y>�u|;K?��i���?f�Ђ#B`3��(�*`_l���S/���GC�}��^�������_{��e������|��_�\ڙN�;����l�k��1bH	MQLZ�t@�g��=R�h8`����#�d<��D*��;z�_�S%�e+��(���`(�/���?�a�#����ަh�����p�砖�c{�fk�h�!ƛ�`�3ܸ���Fx����f���4 ET� �UP$a�M,Ph.�t�':ivr�Q�拔V� "lT��U�)4l$V�=$�=(���Vշ�n�L�g�% ��;�;�����vw��Y�*�g�Yd��.N#O֚�`ϻ�ɸ�_��v� dA�HّXrKxo?��JvN ���Y"luԂ�Ϟ��Y u�ж��X�f4�MG�v	@O�*ʥ��Ψ� Ub��/@(],h(m�P�>A�z�f(@!7����-�U!,�P��ff.�No�A��d*bE��	�+�Wmg5��z�Ō`Q��'�y�<H9)"�Q{V!���G�'K>@��mz��s//���ݽ�K;�#!�u���f��f4MD�`��6�Fb��N��S�G�PZ�Q"�+�g'Y���}�������~/��2�y�h	h�sV\�du��r�e=�X���d:5��5�b���_'���-UWT�!&0)�AS<R�B����ի *a�ĵ2�����	ҐR��V
��Э �j��ش13�*33mll%z� g��u������?<���G׽��>�� &/�����˗���Y/�Y	����5 ����gC7�-[ �b<��V���'6��^��(^P�`U�x3��󵖙| �rc�+��?���T���o��s_��bww�~@qx�kʄ:�MpWJw; X���Z�|oD,A)	���`&D@�$�bc�;1�ǚ%s��2�����V�rgd��u c[ ���Ü�Dx `~Ѷ��B��Z	�PD�1�E���T��G��dz�	���Sх���� ��8�X�t���Ɛ>����'^|y��^뢷�QHJ�B��!��N'@�&K��L���)�^w-�����Qգ�W��= �E0��?ھ���� T�"�#�1���$�R�qZ����������]5���߷X�}B`Z�FV�#� ���c@Hꁒ�ٲz�.-�9�s�I!�2��#�`΁�-X&��Įs�v ��`U��lnn2�=��u�mX�/�{���~�z�������ЇN��o L���?�S�0c�N`l�.MC�Xk���@��\JA���!"Fs��d�2��ܶj�S���}X,���e6�P&CR1�X��$O��ԟ=y����]!��#;�nb1,�Ң6(���|y8 �kۨ\G"�Y�P�
`��H�l�8�C�����u)��?��_�l� ����hqZ�*`ED�F�䋫^����LK�x%���#J0�{�S�Ą���XD�^�� ������� ����,�·���k��m�����kM#X;h��9�=z!��E�D��R2�0��	AM��;LK�)`�;�KN���, 0�hr���$������}���뿎�׮�M1Ԝ\�P/`�b��i���e�Rw ��ͭ�Bq|t��3Z[k�<Ҁ�#�����p��-d*
̵��b�j�R�K�b�ךv��T%�C�T
�6�,7��N�"v�"!�M�%�����'�'�����V������@"����SO=������������5X�k׮���s�-԰pU�w
��#�=�}��kݤ�v���I��"���1	�4kϹ�Ld��
��&��@dFm>��e����0VF����u�q�����=�ˋ_�$@����U��h�*J�(�M�	�2�Bcd'0�A���f�[(��癩�j}�R�����g&T}��P��
�Z���{F�hBdBd�;��^���8$��?�"R�"%��@�T�&N���c��θ�0�6��I|�e����#Ҷxd�6;�77�1�$����bX �`2�a:i�mf�,
J*j��֩F���g˶�Zj*��񗂾� �����1~������e�&0�X���)Pc0����u�I����5�o����Bʊ���@�	A�b�J����YK"!F���B�S��+�C�\8���N�-QV(���	��ZX'ò��\ǰ���\K(���K���G��c�=����o�q����xu���x�I�f��~���߉�}U� �~��<�s�z�U���lw!\��p�i&�.�M;4mk^����p4.�)%̤M���#"���yd��{1B4��Imk1�����r}/��iE����4 ��Mu֪���g�|�Ɨ�� �A�ą]���E*�����	�0%�l5�.��J�<���!@H F��c)��	J���a	�	D�>Ӣ�0�/�eM�p�D�R����2�2��o0�|�ş���H�5
��@�G���|�V��S>�'E��}���f�M82m>�1k��&��f_�}��,
�
&mDCMh���[M#p3�t���r����~�J֎�D�D�WΟ��ʯ����j=�����hA?("^>�:�m��jDdZ7��� n�� �����E�n_m�����<8��.D�4���2R��� �� RA� ��)17��t�d[�ON&CJ_�rw��ϔW�v���v3��˗#�eF�]_rݿS�=�~уL��j��k������9�9��ޞ��켑{}J�V�� �����"?�������B���{f^
T��"�>�HA�d+[�_��1 h�J ��4�^���c��؀(��k��7�@�w���R��D�6���s$-5]}���7e|�    P@P&Q@ܷϤ��5���R�XP�H��icV@5� hT� 5����ѭ��8	 �*d���K8װ�e@�L*2��oae� E�Z��қ�yb�24DOe�*�V�?����?V����a_�/�DիQrz�y��w6����#D#��`H8>��C�	Eh�(��DP��j�/���#U�Q�T}���w;����C����<MR4*�@����@&���$�GeGê���ctd���ja��>�j������$%3�
v�$�\}?��]ƴ��DĮ���cw$���"#@(�H�p�n�&ۍ��9��,����� `
�,!�2�k�2@ �p����r�oo�x�u�EU�������SK�=�ا����?|�w��Z[[;Ϲ���������j�_7�Z���3���6<��ŵ�E���(E�d�Q�X�WJAA]k(��E�^,&�lP�?l��%;�`Z���Ee��U��o���y���?���^z��c>�xU	�l p�Ǘq�019����͉K���Y7��)*t������HM�7�Wz��8V������RJD*��������X��F3.
|�࢔�,�Ų5�4+�]n��M�����G�_	�q������gn� m&���7�ێ��t�ta'Y���WC�ЂFh��vR�@��n �z�C�pC���-n!�^��r���_��_��ѱ1��Ђ�M���F���c�Q{��a_�ƚep������+�B�F�҂�$0�tۑ�ܙp�6�)w؎S�`���	���*����d�+�5L1L'��Xuz('[��+�a�Ϳ��_]h|�  ��mۯ� ���=���??���Cӫ�� �}衇>�����9����o���X��c�?��i����{�]�nN"f�A�CƠ�B`QD2�u���&'���կ�
J6��.F�����)��1�R�������pl ��_��x���>���+_9��ؤ����׭��1��S�nN���,�b�|��7�ʘ���B�%c^[��41Zd'��I(�і՘����l~lk_� .ё�e4�@)�א��q�s���(���!��f0T;���X]���K�� ` ����P³�I��66�]��\��Z�{/�!���'��c  jm
h�� źkV���΂�B�Ek�����y���>򑏌�a�mס�{��!a��W����X�C�(j�����  ������y� �	E�0DaЌ��<�F'����4���h�^Y�d�	���-�h���@c�N7��J+�b3K�עU$�>��� WI`Ue �u_m����^�����RTD�c��~�3�Y����?��`� �;;;��z�)������d��V��b��F�<|y6{聵���i�E�/�
!rDL3���
(�C
�V�w��F��,d�yl��q�J�c�*���Q� =�毪x�g��G}��	05)=�\�@ 8�wީq������k�jQ����*�
��'�(�#(-`-��S4"�a�lmz�2��
u�����C)`!Hc%��d-K��N.b�~nGYsfk;�l�E�,c@׵�� �hU(/mf�A��Q� ���:N�7��<s㸝������Ű�5밹� �6����9�l�=9���6��4 (2rJ�N���D��zQ��嶘�?��?��|>��{,��:p��3�&�c�o�p����!o[���o%�{va���n¼ڶ�R���P� �##M@���0��8,sL�&ӈ�ȸ��m0'���Y�)b� (M�C�R���'�5m����"r��	 rJ�d�:���ϗ��^�|�N��|������朵�")����O���N��L�*'D�밒B�/��x.]�t�kX &X �kM��K����ml]�κ�4���p�@ؘ4����OXg Ċ��#"-��MSN!c~O�>�l��R7Vv�i� ���x=Ŝh��K���E�rIRS�-�X"S`榔r6xӸ,_.�� ;T&�����S�]����H  !5��X��U䔼���d5"�?���L��˭�/c` ^�UX��� R� ò�"�p�>ϴ�8���@3�iL�S4D��*A��q��j�p	����ۧ��{G�؄o
��#��w۳�flA��QA�	 F`��6 v��H�s�V�R@V`Qǹ�x(��������я~���P<��o����j�Z-+��T(���Є��׫bowώ��$0E�&��%�lR�ml"@=A�`^�#HN�N"փ��I��#���~@�N�t-C.�" -`%�D�>�t	�E�,�Y��HU\��٫W���Nu�lG ,� ��x����W��W��7�r||����ҏ���ONNN ̉������?�m�۰9T�y���_�x����z-���\�l�w_����M�3n(��>4rƼ:1�X`H�>a�
�������C���c KF2�����.��*�cz�fe�*'������UZ����h�vTRL�h��7�7�p7�U���F�2�u p��L�lIа ���,��Tڤ�T-3g]1v!���U��'F SXfQ".�jZꒋ���5T	(``T�*�H9�Q�?�nk�MۢB�V���� ��U>��T�@ �ī����'�Li����3\��Q������C�R�'E���!���B�����Q���y�X䂡��md���˿�4.�4*xd����@��Dƍ��U��&�(��%�G_x�\�?�F�2"��!�$�i���!!���fL��b��R��G���M;��D��C�{쥄a����h`G�dSQ�&M�̦��yߕR�T����Z!�5 FE9Um���-�>��?y챿y���9�n���f���TU-�h)������|��Ї>t���O�P��z#�0 x���X�ZxPS_oL&��4"58-��цp��}��l:k�
�p�cΦM�a՗�E*�=�n��]�h���0�2B񤮔��[�5�]7�S� G��R���CY?�/�W���ӫ��S�ʕ+�����L`0i`�&�0�(@    IDAT��VA�[�p������d5J3�*�z'S�+��N���4x�D�@�Ń,j�<��Q88�omg��?���*X�I�]��vs��Q�D��Ð�R6$����Ĩn���P,k�Bn&|�i��d�i��SH@�sx�h���{�&nwm�\X_ǅ�)e���I2�``�� ͤ��|1*���H*�`A>w�,|������~H0��Q��F�_E�n^�閺���s�k�`	!�"�����v�I���,���"�Ir7|~��l�`J��.5-�;SB�='k<Ŵ�0mJZ`q�@/�ɺ�$pж��h臡)�4�X�J��'�5� ��ԥ��[u�j�����ڵy�\��a�|>?���?}�O}�y^U�������K�L\�,1�`�@�p��o��������ޞ����j�Z�O��ؙ�p�z���ڮ3f�Ƅ"E$w�,���]��FBK�Bbce�
N-� N7�־V|�q����<zk�1ᳶ���\}�q�  ��o;t�4ĈA9Df�<��Q�0oY�����`�����U��4�}�� �0PT��C �o}�&S*������|�{��B�Z3�#Dt��-}k�՛�G�"�R�q]����d�}Bʩh�j���h�
	XU�e ᤔp�d�]�m���f;P۬�.n���r>�I���0$�tࠀ�C�(�R0[(����>�i������Mǈ����k�����U|�˙pb��o�bow�o��s�>gH�h�)�mQڌ�	)�J��� h   �Im l��Ms��Ҽ�|^�h'fQ��Yp<$�lgA�Icl B=��m@m��Cu��|�r��k�[�WS�J�� ���p�;'�I�9�}�x��g>���TJy&������/����<4K�l�Yǲ��)������{߫5�e#�=]�{g��b�P���´�<9�䒑�`�1�i0k�))8�j�$V⍌�P�;~c۟���B?<
y8�|jE |�U��?{��sߏ�-����nBb@TA(�5r�3��Z�[%�՗7#QTQ2W/�0ƅ��#����z��R����cr���@�iߐ��L&X`��Z x���%ӂ3JHL�53�ԯʘɳw�b��)E�� �����GL*��R2J)TD��˭Z?�_�8�����T��⫄zX�l}ͅ�f{:���mWw�q��$a���]|�`!F֌��nr�������8 ��7*hQ�R��Q�L}�"Xp)d��T
R.HUHq[���d��|�������n�L�Y���-(rNh�㼂��V��B��X�1rօ&b��/�s���t]ĔL��b���ۥ���:c���k��(hTU���w�B��[Q`�pk��}�~���~��RJI����'�'�=�s~*��TJ�
�}��v��T%�X����sn�]_�5�z�l�_M6�{�1^���, ��_��VD�sB (�9"rDd ��� p���/�jH�J}z|�јt�*?VZ��V|.�(����O�s  '''x��W�Q�_�������&Ę��ƭ���x�������ńȡ	�-f��r�N��&WZYj4:���7�l�"�˛J�wԱ�b��Nl��Yul��+LM*��Ly0�!D臨�DU��`�i0�3�!4`��5�yRG7p�o���Z��NpgF}�
�A�	� � ^��Q_�z�p�؟�r�?~��+/_O�E����ｈ�;h#AK���@�rj�F�#�����+W�Ɠ�����%�{�c���j�-h9۹�ɀ���0�ϣ���ne ��1t�䈛I�"J J�e�Nl���($+C�aߣO:Q\���I@��{G88:BYh@��-�i����&����U od"��)6M�>���UC�M]H߄q�߆A���6���~���D��������{W�\yID>�������X�?�e�s ����_����}/���ꣷ�T��*��1��޵�Y��M�����6���R�"��@Y
�s�dwh��2r��I$\�o|����yf� Թg�BzS|�����ʕ+�m������iMQv<=b�Zf�p�K# ���@���B��Aa<Y� ^P��Ugd�`�A��Ȍ��Er[�s�y	.A#�㥀�����z�+�i�5�5�#�P��TIW�] �9S�t{��mS�T�NT��p6�{+-To�� �F��O�" �Aϓ�l��i����[�7n�X ��� �@�^
�Ȱ��$���ٿ��c��������0�@�`��w̌�ֲ���zUp���팑 �*p�m�Q�'�B��.�dB�R�m�����Q#b�qJ��`-0.N\ׂ�y���� f�Md���i � ���.�dh�����٩�mZY\��TD��=�<���G��{�[a��ﴹ���J����w '��������?��_U�/ x���%���82��TC�T`$��s�ҹQ�3��u����+�a���.N�M��mQ��j�T�Q�l�-�	JQ���K�3,�`���/�s$��7cwʑf]���&�:>(G `e��A�N	 ����}�I��ak9LL�� ��b�e9 ���h'�	b舘�6�AJ��<q��d�3`�g����B���AВ�%���V��K�� `�����"��@!�"UU�(���C"B���Ajm�
 ���@��
�Z�9p8�	ʨrV����+y�z+�2 ��7�- ������{���t�{� ��pnb!�h�m)�d�d�9)YM|�c�{�ߟ��1�U��: L�ʳ~-� K0�`�<bV� <�S�y��k���ڶ��P��<x��"4i�l�eo�*�*�z��"X�blŀKm���`/g,�s´� Vt�GX� bC#T�޷����UV��\�0�� ��~?�?�7a0v�����9����o��G�."2���+�?�S?u]U_$�/ x���{��W#�z����w�,L������J�����O���&^����4PhT�B�A�&$M D�h9b-4��m@!����̌@n���/��oI�@�
$^��u��;����_�y�Y T�~xh�!���b%�M��F���p7�SJl�;#OB�+���C��]*S�@���6���o�ѐ�|
�|���t%p�J�X.�#�[
��虼��$��c����v\Ss�p��`�Zpd�ǡm#7!��4�M�
S��u�����P��þ�9̕��� ;�}�vck�|�5�O���5�ǽ��#�ۄ�9�iU����� :��ұ��B�w��q%bb����hFU�\�S~��X/�����a�`�V�gE@Q-H9�3����4�����`010
�M�Q��0��P3��D�(�^
P-��h�Q��i�ЅD��)�c�� �� |����M~���������}�����~�_���W�����Gl��b1��?�xx�2�gD�Y /����A�����j�� [8M���u�g�)�~�����Y�߅i��'���ڤ�S����qhR1���܋E	Xk"چQH0�@�"�� '�l� ���u`X-����ֿzqK��:��v��E��'�xb�;@*)���r���	�U~����7; �'^7�ٴ�4��A= �،V�~R�\�������H

nL�OC`0}�`&A�)0�	�.Q���w_`�g�i�	
cMn�R=���V}x;s��L��B�@���E&t1RB��k��&61nU�|�s����p�'z' @̓�t����Ӭml`�P�.�J�#�3k��"��g�x�����|��[�;<�	\�o�Jˬ�-0�R�I�C�n��1�]�:>t�'-��X.�IY�@���;hh0Č�
�tЄ��A/fV� ��IL�
�ar�9	6)b#JQ�^ja'�������f��@��Yw@|�{�S?�-�F�*���ܪ�?��������W��g~�g�|�ɫ"����_�r�)ص������ݓ�2�5Qo�ep[(��������G�����p����ݿݶ\�N����i��ZZ��*
��Yl�Bh.�&$�o_Û��/��KAQ��l��]�)(��t�#A�l$��ެ��?��y.�Iz�.���cV�5{�X�{s�V�� �f�3O8𔉣�HmO7s�zSx�i;���v��̎7z���o��0�e1�yc����6��2����'(YF��gfӗl�OJ�-�"���ż�SqwAd�	1�c�	��*1�����s�}��q�L���q���qskЄ~�C4Y�1\�k�Q^�&�f�_|�9<������7�4l��Y	��X.V���H��:Q�:P���UU��^���=F.���nV�D )�!�#�mGy`p@����^����L�y.@*�BXW�#zvEї�ELc���ִXĄ$2
k��#f>��������@w�T|�g7�Sb?���?x��8��ԧ>u������EX��y������{�`˳����޿�9�կ��Fz 6&���&���Uv\�ەTP9�É�� 6�C��`9��8�%W"!�b��� @&#�B� �[ӣ�yi�==�}�9��Z�c�}��;==w�n1v͞:u�޹���k��w}���sϷ��:
p���a�A^T[���o�e�.�{�pno^sng�������Z��?��;�Y��,��Ja�&�� &�2H����*�Uv�i_�[7�f�#ސ��`�4��& 0�o����~۷��?�я��F���H(���lL�ϟ6��# �'��gWeGEwT4����zh#�v#�������k�)\��<����fkRT�r�.r��霃�Ƨ⸤(Ch�a�A��hl�BJ䤌Cf��=K,��lM:��b��s�P�K���s�y.r��pM�M|9��ㅂ�u���r��yI3UU�Sw���g�����\9\2M�տ��E� 'tw�V~�gq#c̀'�^o�u��0�V��(�y{����Z �f�?�z��_�� �'�j%{8_₋aV�)6ޜY�+3*&Q�UŤRڵQ�R%D]�pρ+�ɹb�EY���>����0�R-Ƚ���@�,j��;@=:lx���>��W���Z� ��������o�{�ŋ�6lJ�]��Z�ﾣ����ك�~��{�����B�Nl� {\���bP ����?~�w���>��^�?�9=���s�b5�=Z�qH(��5�Up-J���:1saԐ)p�k�WR���?i�P��6͡�d����l�g�P�f,�k�I�G>�k.m�{�a@(�ĎRo���ҍ��[ l��k���˾���Z�BR�*�����X,j}#.$������BW��Z�W�zm"���Zp<��|bD��kH_h  �CBJ�֗Z0�T㳦�9Ö��u�t�A�q̳�3�8��}�ȸO��$��D��ӸQП]��j��2Y!�Wy��;�������ꕣ�)^= ����O]8�8�~�_�+�{P���bj�Z5D�Z�j���J��?���͛([-�7�8�O��m����yt585v*w�TМ���|>��/��DC�E��uCLI�JM�҂c$U�MY%�Xe�ĳ���~
5ϙ$撘4�����/�O�owK��+M�C0�⎚Y~���:�E֎��v���wp���v6��߅���_�~�����<stt�D����>µ���_ &6��K�@>+B�S��~���?��o�/������|�nN�*nk>�:�CF���]$ō���OԪ�I�j�^��i����N���~"���
X�ϛ�.��;��\ h; P����/FJ�Z ƭ����9��ߒ �V# ���q�%��$��"9z�+fn&!��T��8a��8hbW3sU�t�s����7 A�m����$O谱H��]l�1�{d5�;�B��h�̬P5!���£`塄VTCL�(�$�1�Βγȹ��il]g���������'A�ϬV���2cW�zp۩��9����ɜ�O�t��������pf�ɖM�/>^EQ$��: 1��H�V=��i��[���.��ԧ�j�a���l^�`,K�k�Nl�
9'vҀ��.YLa��FY̬4�bxT"��6���~ʘ'���-�9	%�	M��n���GT���.��_��_�SJo���D��H���6����_���ŋn��������z׻�>��O5��������Ǹ���B�s�D��e6{|���}�������|�w~�wE_���;Q���:Aո0�*��׳A��_�^XU!�a��� Ӌ�S��X�Go�Zٌ5�$хg���=\@�9�5g��T<��<�e,�?7Etƈ����Yʺ}�:�-���5�cJ��蠑��^�u����/��:�TuRR����Ȯ*b5ڣ�랶�Z���E��[��@�I@F��%d�[�0���z#���S2��ª8�bA��[mu#�E��RC�H�!G�¨*�A9�Lo3��oo������9ㅐ�5���j������/����Q���oY�I��A����ٿ;s7� ��DҴf��I�"%�N e���
����E �.=M�������p4B)��61�j��BZ*�l`�,GX�#K|�IId7\*E'*�Z(& �>��f��2��,l�r]2󂚢V[����ɀ�&P��9�������3���r��z#`{�� �F��k/^���O�&M��k����������3{8_J9�����n	!�����3��c���z߿xvH�T��;��fq�8�X���v$8&^'J�,�Y�@�1���M���
�m��#Ƕ�� uk��b
�S��0����⤧�o��o��F2c�2%yaPgęy�av��,�y&��� ���:�Ϫ{9��cγ,��)�Q`2B�G��"g�hN��0d��f�fɨ6Q��n�'rCw��Y�Z�g]ǡ�AY����7�jc��'�ʐ�qH9�R,�g8���e�m�.V�T=1�!�T��dwf��vk���Y�L�g�ɷb�e�r pk�� ��o�� }f9e�0���/~噝�{'@s�7O������|�C!�K�*��%�����*�I{vC��1��F�BZ�Z;��"���{�ˡ�I+{u��3�u=4ஂ�����|d-�sb��J�!3Z
���s��p�"�՜ò�j��y�ʀ7=kV�`w�N�a�4[L���7����	ފ9w���$�)��������}�ew����>x������|6	��8P�4M��|�T�w���������7�cN��l�����gbA�SbgHdFV���2M�Ƅ��M͏���cY���5��0vsz���I�Y�P/��S��%������q��(�-����H&�Y�z���d���ُ���E�TN�Ԑ�"�7o}DPZ+�����e�̐9=���ыY�Y+8"5	:��A:��m.�4����Gh���^�v��91&����ڈ���;7hC�9�����/ؙ���0��W�r;�Mw��]/�������"ϫD����b�����G�����/=}�Ϭ./���ߢ�����W�}6L�y}i����K�kB��*�a�S�R�Z `��J�'<yw�lz����͝ 5�jks�5�-�ՌŴbQ>&��9�?��9�:��Ju��P��l��gFF7F&�^�G8%��42J�:,�Y�78����w~�5� һsd�������ſt�`w�u;��f9�~U�x5�bw��ַ�E�n�8��ߏ�F���s�=������O��yw����g�<|�$��/��ebn,��W��W^��:}Z����w�g��N�ޤ�]ˎi�J
,r�ΐ�q����9=?`�fd�*�U���­!E�C��K*�6����k ����&�v竿��?����VAx��    IDATW�0��C�:�P.����� nɸ�%�aw��SJ�ҐNK��pY����(�%ޡ��R��ƁS)1��(+�x���͙M��S#vnE/�����!٩ׅЄ4�L�=���4�D 0䌤����o��xV �2��p+�J�q��!�7g;��LY�k����6l���2�֍m$��.}�,Vf���Ӿ\>�G._P��Le�f%z�2�C�`��R�����M�PES׆%}�5��V���&�f�ؔ��'���G��1`�N��rv�V����jyH�9iT����*L��%�Rq%��\��W���QKT�$22%aY�BG�w��!�-:���tK���������)I"2-�%�fה���m$�f����\K)���_}��~�����%w�Pk=<t��~�Ͻ���{|��@�/}�������_|�w��k�w�����l{��)s��3��rb��Lua5M-�\��Jb��ϴ��_����Z�=�6�Ř�B�Ō?�-�����3k[�~㝋�.��S��*Q�i,�$��u������[ �ɴn��9?��d�s�4�s�Yzd��@����<	�Y9;˜vE�ՄMT#%ͨ&�m��Υ���/�z��_�Ը -��< �$�E���	���Z�7���F�
x�����+"3sm+�����|6�)�`U�]z=ofO�"�^q-��� �֍�p�3�S�N_\�>Y�~��d6;�?S�5�����[����?������m��z�ݰ��Fj��LZ�R�W�h[-+�����Y�>��O<ў��t���1�<���v�ڴ�Z�G����Dޙ��-�r�`�Z`�� Z�A �L֜B��P����@�	\�j��x�#d�7��غ���W|cTwt_"H�X����̎/����U+�F��k^,�_k�+W������>���?���=������_�k�g;^!PW����x��k��������w�#d��Nh�l���H�&o�DE��%����XL�.W�ܱ�H�ن��4�ԨǞ��5z�g��DX����?9�E���Ej��ץ����p⎺�#���P
���$�F�YUOi�gs�#h
���'�7�<Kb'%v��;����q`W)���G=�&p�w(����K���l�m��ئ��n���F�N�a[�3���h/!nT�ANxIG���V[z��|�{u*�-;��x�Ķ`� l��^n��z{�v �\Z���3����=����l8Q���f{�������dRa큱v5�6�A�o��7�K�X�M7K+�d'%������
�:�w6e,P$I�d��U��j�Ue�/#2�H��3�-��1#[%K�nO��	ńE5�Ju�jCHB�����s<g���������Ѥ�I��w��Å���ޱ�/�����B�����z�)����X<���O��كj֡�����>z�|��NZ�W���bP �o��?ƹ3g����{�Y^�Z1cl��(V�NA(�Z���"m�.�)S!]��N�
�)5�i����1�'@�yū^u�s�뮻��^Hۿq��b�Gk�.�P���E��l�|�?�7u�*@ෳ��a�9�I)��v��C3<ED�)���R� gN�S��^��ӒU��,I�h`�B[9��p5�EC8�7�j��6�k�q)�*XL"J\��r5�XL,��b�	�	K��P�%	5)���N�Bm��*�t��xz�sjw�hP���,7�m���� �~�rKG���Ub�\]�z�����SW����˓-��|����Mo܍e),�)�#�IJg%	M��Fot����(Q�%z����#�@��*>�J �Λm���zv��O��^I�rKWF��`y���v�S�ةV;�)�N#�A���M̧���c�?h�-0��^l��M��}���?���|��d������ۻ}g���!��R�7 �!��o#6�m�;�z"��~w����9����S������>��_1�Ϙ��f�I��w��̀���<�x�.h�!�c鮻�Z>��<�x�W���x�7~3��u *�R�i�4����i��傫�GRFu�f=�R�V+VӪY��H�r��9�B~ߜuͿ��i�E,��>�,�����z_zx�Ǉ���[ޥ�^�Z�먈$�<kp�3wS��[� l��]�q/�|n���5K`h0��ɝvr�`̜�ewPvEH�(Sa��'e�	1�4�&��u}�̍ZB!Pr��T�gw�v�A�� t4�(4�b2�ZQW�1JE�Gy�pX��/"�*�B�ʊ��$�kb�S;�e�w���
O��U6� �Q ����q�G ��j�%��̮��<������}(�䶩����[�$�EH[ޢ��E���VVe����M�/� ��|��'�~=`�>��ı�M<K|�v\)�1R��e]�Ѓ=��ѽ���3�+G,'g�qa��HкF+A��.̀"�"�лbܠcH���~���/�'�|����|�����h�L�����V�X����
���;^*��@��w���/�ڱ�9��Z���=�Y��O��3{�m��{��%����܌у�mB`���#�1�[��[~ȗ.]����o��?�׿����-��������d�Xb%I�UR�$��7�6�[K)�i
�?iCe��J#{' ��:"�*F 	K��>�"����گ���yh�wx%5>�7��������((0��v9
n��7? 8�w��.�?���8��sN�Q`]��9�1�ĩ!qn6��ldwT�f@b�Pk�EДI:�R&�O|��k�h�� �i�Z�mĬEz��e�Br�"L-�
���a Q+ZXdd+��,TZm7��@+ TYeW�\]�^�Z����e" �<�mQ��	�rp�FzT�����5�i2_�Dq��X.��o�E���˂�Ib��,s������-���������P�XVg*A�;�z�f^�ʕg�e�!v���X��������?!i��c%H��*;ys�2$��{��{�,*i!��-X�.�(�KH���B�@���ͮk��k�� �ߏ������k,�]�kog��ITE�rz@��,ۇ�ط�#0^�t�~@�D��P��t�R�=�y���~������_p�0{�X'z��V�{ �	��ٸ�u���0����޴��_����������G�����|�)4%��UkK��DG���V���=�aUI9����2�����xV	��\Cȭ+3�����?��N|���˿���HHin�Z"7m΃F�m괱��f��H�B �G��9�3�8���糜���k:��0����3C��l��lƘ���͘!�E�U�gm�V���6Z�p�-�Y�צ)�5������*i�bM$	��L�2�2o�c�Q�j���>נ adfʾ�vN�fg��~I�r���	 ��x���/~�k����ss/�����G룬Kf���aΝ>��&�+n�9j�
����Dud�OLV�<�O�T�;�=�h�8Z�(��Y�Z���
���ao�U�֒kT�x�F��\i}��srуʮ�p�&��9�q�b֖�������&�RdK��9�sݮ R�`�H��
�fAu�.��MEV�2����}?� x�3G8V�l�٥K�>�7���zQ�zc��w��ݫ���٣�����H����[5:��fs�36`�}�k?|��ůy1A����*��w|?�7�:�qNV)�U�!7q*)��S!{8:��N��]!���[�
�8Ņ���j#����;[v�/4>���}l����y�G��N��\���� I�dV����%dj����[�� `�(�=��!�>��gw�yFժ��{/A41G83fn���e惂TJiR�H�q&�jm<;O����V?�B#�6���@�f�U����{��#��^�(UCX����¯��2�@oɤ-�A[�/�IZ�5�+e>�L��[�rG�����W�ْ͢�m\�C�|~ƶ�U��Gㅇ;���j���yi�}�D�ߴ%hϴ9X��j��(VAKt�$W�$j�'5-qw.<��z⾥����C%�X h�F�fFp�]�Ko��)ȼ�h���JYR�34'lHk��A�#�W$��*�2�DR0&&�L�׿�U<�����6������|���.�l�s���eմHeL�i��unf= �zP�	���}��sp��ş�*��:����}�&{���=��O�đ�_j&?��r-Q�f������g-��'y����s@Ν;���.]z���o��?���x�c���ºC���#hn�p)e�?am��F4�k!8k����Y�����Ĵ~�7?|������ڎ)��g_��
#�~-�S�	��GC��0�G��a�=�� �<N���9�ٙ�^9���f���̥�
�hÛTɃs@掝���3��p���T&0#� � �4�D��t��~H��X���֌���5�P���ă��R3 rbie s���3ӊ��y�!7M��V�BA��B��z��A�(�$sjgg,S=]j��}qxGf� �(�����[9�#�5�3��O����-��뮨���V_B(�-Q��)Ȱ��yRXD�cN�f��3y̑.��\"(�1�OpL���!�!0挪�g��JoQ�dDck�)o�v3�W(���6��Q�L4��|��d|`���FVW�%OG��Q��%4=9%it	t����P��|��~-��-�A��qSҳ����2�\=Z�,�i0�n���i��A�=�^g>ی}o"�����'�'��i3�`f ��{���v	}>���tB�3ĵ��=6��?y�{V������ˇ��+~��#,�ʼ��%	U��V�u���M�E�l��J�D�7�D���V��,�F��5�{�����?�l�C��������YE�PP���Pݲ�n~ �]�_���$���;���|r�ɐ��VbE�X���vv8=P1����4a�"=jb=����ҠQY_+_o�-�n$	�4��rO�	nMޕ�Rs�j���+g�S���a	���Z6�yd���R���U�	���:��s�Y�1gN��gf�lſĎ���V��9A�ˤ��7�:_���Ü�Y� �|B�G�O>�3F�ِɪ����؇5�I9Pj@�y̌�L�P��ev��+|1a^0�a�z�w7.<� $�J�[��hYr�Wo�-h]_ �I�Tm��amQN�h�H6��	1����K	�ϱ$�����P���Z��3��(s	o�`j�hl�����b3*!�]�T��It��L�G���u������Ҿ�a���=��4���~�>������wV�����3{��?if��w�}�7���k�_"qޝ�Q�n|�}5���۟��㯟~��O�>���븧��3j�q��&kzS�]_�������y��.���d�v|1���������W?�����n���v<��������4s0�H
��`���ק�2nE �3�uD8�f�������٘UE�Cյ�Yx�'vg#��yV�R(�0�Ҿ�޺�:gg�C�.�6���,�&�k����dV���ꛨ4��@R���יִϜf5lX��R�e���R*�DN���3I�������k(C0X̙S�Wv�AT�w=�~�Mv����։>�C�������>��'s�k��?`������#���݁�S��|�������Jj[ i��<Jc�l����~ l��^��9|���H� x�̝>�S�&�6L�/�V��P�Q��Zo����}E[���X�d�
�&L��d�ʬ���$�Lp�f��J��7���<��c7��m������}W��X#�J�������NҤ������~��g��B̿�=��z��lk�f�>�`�������>r��fv������{����S�q�����:�Y"0�H�O�m_K�ɨ���������:�Z��x��y�ra	�V*�{	ƜHJ[��:&��|?��_9��j�����Wd�U�X#-������|���en��,�p�2C-����tLi&b�f$"z�7��7+ �^<���ݜ��8ޱ�3��aɉ\7�|W�Z�p�כ����	����BH��;�B�m��vdf��E5�?�.s�j2$�u�E���&%��b1c�����ӊš#� ��qdl��:���`��hS��&9�*��M�w�����VW�j��|�����8^S;޶u����H�wo' ޳D0�7���"5��T`Pa/+�vg�N-�LC9~��f�n!o(�U�N�UP�)5��i�Y]kb���n���Q��p��%�N/�mJ׺��J�>�v�B�,Z�����ina�r��sش���NN�Y�.3Rci(�N�(	�Z�V=�����M��J���������"{;#gL"����ܲ�=f�I~��0�Y6e��'>����Z�����?�C?��z�ꑙ]2����A3������1b�_�{k�ך\!�g��M
���	������?�o�� �N���ݻ��AU������RSf���O`%\W���g�-P�+}3�v���^��h$e���j|��������c< �G���y�m�D��Q-Pa�>��g�7�t����%�8����t��|�m>��R��EvT4�O��^�~�"��nz}�Հg�_�x��,$���n�(�7m�pd����L^�fk���-�/ׁGt8��u!��k
�@�$��Ϧ¢�L�h>�6EX�jʁ:� B�1�&��d����tvoQ�k*��g�ӳf�	����E�8���ۛ�Z��5���N�㾝�z�E�NT�t7������9����L�&�n�m�`,�M����{��ʑC�cU�#����p�^�:�19W�\��O�G�Pk
ԫK�M`�=b�
��&BP:�J��@S<�e��Z�0\;j��c���bJ#G*L9���J*4.��%��\�lF6����gΜa6��*jmCh�D�f&"��!eFU���3˩�7��I� *�]6=�44?{���/]��GOz{�1�{�S~�q�4@�n��fv�����l�A���~/��i�휀+�u$"5��jR\;!����?�_�����O��}�G?�Q���A�#w�<`�����w��~;�[�X�����ͦ�ҞKW�V
�	du�O}�=�x��x���߇��1Zt�X�d�VZk��Qns*�������L�x��\U����;󝳳�l��}�X$��M�WI�yaU+�T��8�K/�A!��oH�R��ʝ�8��{���7t	S�L����FV��jnl�{k����A���I��X�+���lb�J�R�YUm�T�c]s��a
�)������ά̾��_=��df�Q��Š��}>�/��|~P�Z�[��뼶���Ć�w���]�t��<*W�O>� 3�Y�ؑ��Q�)��o�#��+e�8,��}���L�����;K�ȅ��P�}�c��]Ƃ(W�q�S�
�ۃ&M�0gD����z�YB�/Ѻ ��?[j���2sG�	9:b�d��9Q���F� �U��s�VI��&d�I�%�}5�]�q�������Eܗ>�m�Ž�%�q̧���2��b�:w���,��7���旈�'�eZ`~���_�t������y��'���}�����\��iifW�좻?Zk}�����нA�I/��р��H֔U�u�E7��>|�����x?�3?�_�+�/��/{�7~���y�;߹f֋K�#�OxUr�������ABu�5ٌ&���WZ�̚��fA}㗽���~꧞��N�V�
�r*�s-�)Jj8hROY,X�׽�7�~��@_XG`��7O���q��s�Y�3�`�kfW�=�����J-,�sZ"$q��uv&���O��V�����([�6`���ו �!�2��Ǽ��.w�q	��-]Ͻ�n]k�C�l~�^;ٱ-�9ڜ��s���^�,��:�(fv\h{�l9З�ކ�|���m�s�%�m��z ��& ����v�������KYM�fDy�\�����@u��Yh��M�    IDATK�ֵ�m#
R�cU�V�ժ������8rg��t�>�p��؅�����Li*�����M1��$���D�����3uo���	��7s�$R[-Y%�qm���7uDR�$G�2�1�d��V��T��>����?�J/��ƭ�aSzTALQՔ�K$��z*�V�/�<0����e6a/�g��2 ���������}���V�U1���=��}��> ���7���؞g}PC�Zv2:��b��%U�;{\y�1~�����?��|��z��k�����6��+��Z+�<�����?�����j�~�(�6���Q�7�^���~^��ג�2/���W���<lL�l\�t��w7f��XA���)��v���H
���>o �~�Y��Y8� ̒���ҙ1��,C�bq�Vp7��� 쩲�
��M��EZ��2KC���u��;z�����z�R4ؽ�q:ݮ� 	?A
1���|o���
еD������;�6�?է�9�2C+`�i( ��K���3�ݯ�C�ȇ�1� g��{��V[������7��>���a\o�O[_;�z�~'�����k�U8P�}�S"����w�\|ߍ�w���p���=w�I�*Ƨ���x��ȼ�`M��Ф̲�uϺ�7�z���1g�js��O�Ct�G/\���x#�2X<�!��Z6x%Q�Z�y [�3sD֥��qiģl�4���G �X��ᒙ�2���?#�dI��Y����S�"oUeG3�=��\'��C�蛨��$�h�eI;��(�ꏵ��Px�ׄ��������k�x���-���i3�p���/�n{�_���k�e*0�����"���*���,�-��U<~�?��������k��FLj��9ʦf�ۿ��Z���^�CΡ�b޼+�6+M��x3��qN6����1M��{��ݘK�$s.)���S�ԑ�����]��~�
`� 8$9�5�y�4J�bo2� 9%vU�Q%Ah��!��f�c%VJ�k5&�M��m=���b �o�j�K��B�H�z�y5�?�M�#$���}J��&���*.�a�oZ�P#D �Z�G�}]dmJ�X�4��\���4�;��|y1]M����6y��]�L�RZ<N:�o�/����?��oo�{
�znH�v�-��U�s�T���r1K$�����ptm��?q7VC�����$� C�/��Ɛ�<d�a@$�~�u�ݹ��bB��Uu��Q���������=��Ƒ�4IP��g֛z�W�����&2*��Ƽ�)&�Ϳ����I=l���K��0k��l���>��u�ݭ�3]*ل/{�k��£/x�@ Xx����G-&44N���F_9Id�'��IǼXz�_�=b�,��Mm���*������w�����.�ٓw�}��Dp�%x������6���z����do4�$�uC��
�Z������f|��yŗ�񺁀���
�p�8�1���j/��5}$Ф�2V*V���-1�ʲTSeY+�����m�v��������}��Lp��ً\��_/:J�.�Db/І@���p�ǶՄn�@�Sۋ� *�������Jʊz�T��o��������wc�vm��ָ��5\��q�~/TJ�g*�5ԏy��oj�]]*Bwo^�^������"JI,h�S�S�F�6$�.<��ڛϹb$1L6n�pHQ㊔�b��;;�W��R��v�ugӢt=����M�-o������g��7��ÿ�U��I"g����z[Jz���iFbL")�$u�p)n2YmP��ȅ�o����L��{/n��L<y�J�>��;���DBU�e�cJ줁Y��ğJe���XuJ�U��	�ϟ�0���>O!WHS�k���&��CB[��]93D�,�O������<���\ɨ�u ��m��q�I�8Pv_*29sRxhe��"Fi!��m��������o�C��!�K[7,rQ+�ZSys��$t�ATO%!�,�qi�)3��f��ͻ�F�o}���' <<�ַ�������?Md�ϲa����y������.���֐��nN;�� ��D;Ģ�jPEj�i�V�r��s_��x�:^��%G��ɝS�p�p�E8 ������&����?)��egLS<�k���#�<2�V���O~뷞�"��/�O?����K���)��%�$�~�Z��@�f<��D�4Ĭ��[����G ���1��A<N��ԫ��'��ƾ%"�R�:B��w��O56�Z���ZdRiu<	f~���7`Yg��n�k�hpG��"�r�1�e�w9�q�����R��
[[�j{��e-T��G�D�"Do������#HI�"������<�^N�T^-��C����b%3"{貥���t�v@���o����Ϸ�Ϸ����)�SY��!�m=�5�v4�Ii�*�U�I�2Z�>;w�+P,��^`t���ë<�Q7��� ��n�MRt��$4��DI�A,D�&CzG@����bB�x�d�&z����CHS&��1��:K�V��ќ	UB{7���iTB���ۺ[�F���k�4��"�RÊ[��7��S���I`�	�0zx��@JP�8��Ц�������#��;�������c�0m"]>vKT!֏8_��|� �.W��f���:I�W.'"@x�w?���f��?�^�`��\������O_�{ �f��z�`6o��S��h�¢��U�*� s2c��!��9G�|"�Ȗ�����[���<�4qT*��r�Zm[�qj
v �Z�X�VH)��)�e�cIh�8���W��_���?ԌW/��䁶�U5ԕDB$Q�L^��0�x��3�k֗�t	 ��P�[�*�|����i�|WK-��Y�5�0�4���7R�w^�[`���C#�5~�M}h��@4���������	 �g��;!\ �����Ĝ�Ξ��e�Ω2�at4ḱ��WzO�*�@X�\FU�fs�0N�Y�*,Wò���z���g�$��� m����ތ������^<��o��\[�W=�pZ��"rVEN'�tV�Ϫ;9�y�<&�A%�28��]�<�3�d��4��	�T���������d�5��n��ǽ���UK�L�5R�m�g��c�k�a�������O1�&����:��^D��5r�D�U���E71�wU�ϲ� n����q����
\E$��WS�N�I�Q��̅Q�8o����xQg��;���9��]�o��o�ztev�Yh��8�g� �z-		aM*�|�7�jR�b]��G�ϗ�Orm���-u�_��z�/t+��[�������g7�y�}n��hD��A����8�q�b���!�f��峷��d���i��)S�@:��n��3�x��
��]�J��p����R�J�&���&�edI	))�)̐���QV�<��*�?�.��_�k7��m|�#�����1.��6Q���QoV�Hpp��ԼFɎ�>�����F�
`�p����eO�����H[饯�h&�Jh#{8��ۆ�Һ'Y�T�7BS'�![��+�L���_#[G����X��u��Uk�YBq��9+�!�b�����VAfR��QJaf���UѴi�UХ�U�y���!�$�U%_Y�<���f�s��=�&���W�f��m.�>�ކ���vM��5���TV=�D�"r6g5��,r@�]U��Ȑ�)C�!���%�֮����FV�-�4*d�|��]w���=wߍ�18�by�0�$I$	��L|V��=��:�2a�~�BuX�qh��M���}n4�=�<�`0�U�!��AΪuI������D��@�%pk��ڐ+�<E=H)���@�T<��v)!�W�U%�S�9J��L�sy�W��*�^pO8D��rS�\��̂��l���9Op�'R��Y5�d]0�J����}�������µu���9��'n�X��W�ο�y~w��u/�	>k�;�L{�͢�Iwv��3�Vf���kb�)4WJ��{8�VTw�`f�|6��9�e�*�Y]e>$r�S��jLS���b.��>MEb��CF?�:5�6�_-����������}7�$׎���ٵ̝/��$��N3�)��rj�H�A+hj���|����f:���-]�o�`0֋z,qZI��Ī3�uV�D��3����6r�B\?���s �	>4�����(x �Z}6D�~������=U	�&�X��}��wd��P%jBc�|��Z�v���ʪT�T�qF�ɺ\6ş�	5Уq>�J�͓�v��x4M��R_39������\�'E�ګ#�L�K���[\o�J[�_O��z�5��FxeOUOg�W���Hp[Jz6��kb���I5#�]�zԢ�Y�����	��D\rm_�;j�B�j����x����;I�ݕV�A`->ճ^���{��D�X笜`�;=�ՍU���E�7�(��j�b��i��h�I
�S���!jI�F�f�5]]�sa�DN	���6C45!�� ^C�(��p(�+�f暐a���XUV�}�yy1(�?�׿η~��$ݸ�J�*��Ȭ�H���7��v�M�9�Iĳ,�=�]�z��{���^�6s`d��g6�����o�#\;��������x��������!�0� D�n7��AtH��4�Jψ��1a2:�i��J��boCVv��ʏT�U_K��(U��U�S	�~cm(niJ�7v�>-�nM�*: ̜������'?�I��k~����[e���b���=9�fG{G�()�L�q��m�Xo�@��贬�BjWP%2Z� ��>���uv����!{��O���ږ]g^�1�\k�}ν�\Uv;v	����51��"�x�y�:�xABBB��n@��N��H'BIp��s ����v�NӶ�����v��rݺ眽ךsƘk�{}�:�Z�TG���9g�֜s����F2����ȅ�������T��|��zas]+'~����0Ɇ�v��~�ZCZG�)E�k�$ 3��}+��ĳ�Irb��� 9��|��(�zXݞN����u{��xx5}��Ծ��������D�Ң�3�x9j؟�������L����?�{��aU}IE^.E^.�贈�T�<P�]�Ee�⓪��g+�\'���O�`�k�D0�n��ٗe�	S�7E�pYy��`��)P�<�8�EF`!Z>X���,e��#y ��zz5�I�ŭR�_�"�pj+�|����G���W���ͲrLikpo:���a�g"�u�tr���Ğq*�Q� R���a��{$��u�0̚ĩ+��qr@:��(�(��p�ʝt�m��^�<sgk�9*����#�?���`)��A�#��i셢���jUy���O���s�p�Z�_�D�a�3�r��z��K����y�</	x^��x�k��/���[DԢ��6�j�P/��S��n7��{W
F��SU��0k�����~�����9�#�䦀k	�T���u�8���o>��?}���]?�s?�T��^�:_�=�z��.7�e�xO�ߊ�(f[��keVev��!�8Y��]�D�g�}�Au)��Ec�yj�c.s�!@�g4\��:�=r�̨l��#pFu�,}�9?Z5+��=�@R��A�������É��bO4���F�;�IrV �	2J���Q_WZ�R��m��qp��DK�0OԪ��ʮ�ݾ�y]�.�B��˷��o��{^�9����?!�+�50�����<[��g=\V&OI��n"�%��ڿ&��"�b-���I��u*�R�ԝ��Q�!...9fY8�9���Ty���k��KT.�Y���������� ��i=d����*W*< ��M��@������z^�Q� MP�(A g��R ���/)ɲ�WV����L�!/^_3��vZ�ǅ�x���P<՚Is�L��z����̶�`�
��u�e¯Hxxdk�H�M�����\8a,�xb��J7��b�,ə苖7Ui�fE#fC�XR��r{"Y�{B�����R�ﵔR��>�.mw�,/��������Jw�ef�����T�ͦ~����2��DӞ�g�g%���%�K��$ ﭥ|`.z���UE�;�c������|���se�"ɮ�AlՂ��/E�LS�L�20�������&����7�!���Dǒlgߕ_��������}쩿��K����*L�Dl���y�M-��ݮr�&z�\uc�;u]�5�?�ۍ @.p4����AIG4e=�,�8��u��Y[T��Zj""*Kt��^f�i��؝ϱ��C�7�{�����K0IϤb��[��N�YA��� !��*Z��L���Bo�\(w�[�9ԧ.�l{�n�l���\���&|
T���U��R�����j7���������������^�L|�Ӈ����y�����%���*�Y3�gezW������}�(/��/MZ^(��ʮ��J)s	,����$0uې����#Y�*/��ph��d"L�2�a%l���Go�g��M����Z�Gλ�ٹS%es�ru%}%��$T�5=��f↛BVFn$g�{����7�x�o�[�}ڗN�y���[ޅ����P@%��wj"�A�C�������
ax��'?�ʘ�>�E�M�y(D*b0��:���q_�{�5���\�U"A�~��|�O��	�~�������ͨ��V�P�c�V��}�PD�·sI"{�jA��4��n��U��NK{a]���ǧ���v��b�k�oI��/Q�K$`쿱�.ex�������3�ٷ�{%Oq	4���&I���zP��<t�"�k*����J)�.&�w��T'��U
��e#y���ި�4S%�󚉘�e���U�w{�i�}��k�tN%V,�L2A����^�МՍ������_���N ~�g~���?3҃#��툖�}�3��yf?ͬRx��L�e��`�Y�;v�	����I�p):y� �����ulm�-�z�Dߐ�6�7�O���9�C$lGc���/��`��y�{�Z�a��t�-���3E."a&#�@�:3#��>5C{��$��(xk{gu��n��@̪H��Uj,͙E�������m��u����4��izi*����N���I�������g�����ɳ��ge�ϲ��U�U��#yW�奩��J�wբ�R�n*�+�N*��𔅖D�\�
���m��#@�l�D��:b�����p�����-�����:��+_�՝I�Yc�^���DFP��TO�@<�d�:a�\�:�=�c��6��_�B0���������S�v��c��ifםvw��tb��5X$zV%�HW�(=Љ�l�(q*�N���ج�F�oMSZ@���7BӁ]z�bL�+J����\��_�8�/��'i;Ω�-��$��J���X�B� x�2��[��ޖey�|wj?�XuY훫�W{�7������y��H .;�0�S�KU�z�����1I9�Y*"~�������$��i-Z���98���ј�,rp��=���~�������.�\��C��5����u�P`*�Sa�XGA�d��ʼ���.p�Y{c��2� ���+��2��^����9w�q��n�7��z��7~�7���>w~�qC�����Y�����ib�����saW*S�!�W��ϩ���J����& ����n�鬧��f ����b�Ykts�9NR������F�����H�{J�Ώ�?Z���W5�dW%-�Is	ͪ?���TX�v0hJ$�B���3�HȦ����LEY{g]Bw�������Q��={K��E���ʮ�~���kkR������z����������w��%;ۍ��$�y�A�& �.�ga�g+�K_��E^���\��XD_(ʣ��z�uW��Uu.��"�C���"��#Q����D5FG�
  +�|���֘{�!�@a_"�-�i+T,,l�D�W�����W�;~�*%IJ��p�Q�FL�d�2���6��&S=��K�A���{H31މ����������d�    IDAT������[[dubW��^��Ѯs\
�1ѲhH��>v��+�V��q]VƸ���=<A�%�A�h�P��I���^��C�������8LH���a�Ip���k�$�F|i~��.�A�-10I���b̽��jYw�ӣeY_<���nǥ�ǭ�7Z�7��q7{��'{��[T�EU�"���\O�^�"�Z�U��>K.���$f���v���JO���H�*�<�4M�WcC?<�`�B15�J���'q+�.͡!�ʌKU����9F�v&���r]*�z�4:R���n��je�8	�wo���.�xȰ-��	��L�c�-ݹk���q4��_�_�������>��ĝj�]_��c�[t��쯻���A%Fӻ!��P�G���c>������;� l��J��j-�T0��IԈ袊P�޲�y���#H�5��+f �g^���7~TF"1�'�ެg�6��'D����@�|��h�R��3�Xn��STcD�$G���ǣGv�ۣ�r��,��I�%��ٔ��V|%t�E�)	�5M4��X���NZ<�Z�0��˓�������_k1���=�{�?/��4y�?*�S�/諭[U_�EUy4��@��EeRѩ�2��T"�A���󙜡���p�$?��Ј`�m��^o��%�ʣy��yǃR(�,XV�ٯ����2��oR&)쪠j�-塚=}3z��1�B z�N|���<���wy��h�}��~�3�����B���T�-�#���4�Uٕʮ�Y���:����31m.Pk�]5y�2?\Y"���23zJ}5^X����1�(S��#1^	b�^���5��p	�?�~��=��_�������a�s	Iޒ�A&21�i�$�>��2���$�Y�ɡ��Z'��4���P�Ws�Y}ש��uo����-������VD)*��"S�2�Z�Z�V���R�[���EDd�/i��!a �*a��K�E�ݎi���?���O����u��F_Vz[r�i��!�no�Z30:���rИ,9Z��0K��`�h��ɚyP��`se�����Y���^Nb�X���{�_��_�_��v���W�λ���w���`=wKyV�L�:��Ti=l���^X���6��9�M<e}[��3�����T2M��<"���I[�`ct�G��P
<�p���)m�j� CF<���%���F�x�$�i���u<��~=#\To�w�	@Ϟt���.�	�9Պ�h����q<җ�^2Uꔎ���h�Łĥ<xT�2GR�'w����Mf)��i��aW��'k��;���_i&�	�a�'�l����_�+���THՃ�����s��7O���j٣Z���HA��Y�k�ߞ���mM��_b0N��>�8����Q9��ăZx���p������Nn�����vܤx�|�Wrx��	�/�����K�H�x!/k�h����Z�{��l�YB�����	����g�ϱta�Ό�ř�p��]/�M� ��]�H��R��a���Q��	���.��(�R������� 
��"!O�.��
���.�	]�(�5J��cƣ=��["SŐ �ZX��8Z��Z���1�� ��� �D2�@qL��(�N "n��mݙ���\��53k�z���#5�EUj)RT���RDk)ZD�A<��B��y
2Z4�"��|K[�Q �(�K�э/��!��G����a7M�y�;��j�Ph)�晩���Ӂ��R��ZkX[b�V���Ǔg���+�y�Cn� �tk�i"����\www��/�b�\�=�~���Y�+��mĢ�w;���@o�NI�4F�MA��;���v% �p��2wW�5�R�T,g%VJ����"Pw8G�-�>5IY19,n�9�J;���lua��E؂����!sۼ7K9c	����ge�g�'y����7¡n�����)���DJQ�VzQ�˂�N�4�0 -�*��,p6�����
,�r�?D��XҋZ��^vS�ޝ�|X֫���������� wG�.N�T���� �����L��E�J�>�%&C�RS)�Rˮ�T\�k�E�F��h��q>X"��Lv��L�7D�%+5��ݘpv8Q�K�0�U)n�jL��\��N��{��2����x�o�#p3���o2&潧'��C�d��[ﻻ�Z�=%��C}�΍�ܘq�`G]w�������S>�'M�j���ҙ��(�J�S�h1uC{�5�ɗ��Xq*a��ܹ[Vn�^�u���D� ŝ�V*�*Nk�=�\�5��\��ppa�Νߩa��CXMr���q~������{�6����=����9���+�K�IJ�`ȹ[�?�σ����%�P��󞭃�n�����8Ln�^J��B�j"�)iD�����@!���sц�Q��L�D�ܑPU����-��:��X_����,0ƴU{W�-��9���EQV�h�yǤ�M�h������,$���|��,��5�~�Y�֖�[Jzs���#��{C� ��Gx�����	���:k\{��D�ypY�4Sj���P��a�b����:C��.G�wWo{2�v� "���i�uχ�fH��{�	{�$�*�4b�OϹ�b����\
���H�&ˮ�������a��c�Дv"شȻ��&ʜ���LNB�.�d�Һ��OҘB�
�ZBC�
WS�d�X[c�;�R�(p�.��m�~X�Ue?�P�iT#}���4]�m�[��nY��ږ1u0�?�T#?�y���:�@�t?�ZT&U���}-eW�Գ�3�yr�ۖ d27��q�d΢��DM�s@|D�ߕ�A��9W"<�$`W
%+�*�T�In�!I:��A�����N��ů��-��P��lY�&�g�n�nk0��D@��������`�~nO<�ov}�3�.بbrrCdx�8��	��11Ӳb	��!�TE$�!�k����ͲF$��vT
�(�nb�j�Z���2qw׹�k�u�d<�tf��H�b��ns�w�١�]�V.��9����Q�<�S�ɘEJ$>1y�$ݒ����`84'z�=��aS�&\�o��8�\j�拎�8/;ۏ{�`zʊ��h+.>�
�C�zA�s,�;��G��#�yH�Ƒ�R՘�/!ucA�ͅ^�<$�2���`�`5�{)1#㮭�}�4�n��-O�Ӳ ;�gP���jt3���t��G�G�ʯ�ʨD����\O����9��,z��gݱvNxT��J��i-��q���$�1��(�ۉ \B��Sb�t��׆�������~��i��{6=�$t��%�M�'�|C8�G2`�YSm9�#�ɑ������m�Nec#�M_��G��=��[?�ܬ�s*�z	#Z�S& �@�A4��)E����D�]eۚ�BF�}x�W]�m�:wJku^��������x���H<��<F����f��"�	Մd��Ҥ� �+�h��d+�����H�'sC�fed�S�S<�&��Jrd�ΌJh��{��u&s��Q!ĳ�G������:�ּ������^�z�ѦD@���'+���z�F�*�TS+/<ֵ�@w��o���g>k_��R��0�1���i/���o���k���XG�a��� �TVwn��r�f�O�I�w��<Q���e1�^N�X��D4��u����
�&ѳ�]�R��h��ƿ���?�i�ڿ�#<^Wn��v�b���E@�D����#@��,˺%���U-iR�C�1�A,(ۺ���a3Pʖ�G�8L�dCiȳ����3U�ӂHO��F�5>/�����a�5P�i7#����Tt�5�<� �)��X��S��g*tx�y����d�zr�<��)����`�HL݃D�ޣ���vj��)�w~�~��������/��x�ε
��-wx�$bf���@���%�h�xot��ڥ8*��m��wx;��5�՜�wk�7����K}��Q�Ď�wʔ�GȌQ"k��l<���M·���{��4���g��j��J�rJ�6"ڨ��Й��V�ee���[^~���&�� �Nh���~o�
u{oU�E��5�iqi>�Jkaq+���KE��@]��H���aa9�$�c-}�f�fD
�%��1�F�Z�&�O>�H�k��h���z��]�m�h�&q`��P�1��{�0�ٛqP�a�<�wJ��-dy�|�_b�4�k}`]�u����#ww�<TE��Ъ�0�3�;s�]��2��ú�ZϷɜbX���Ǿt?�[w糟��F��p�;C�-��@�Z$���hv��� ڍ9�)g�NSe��>[k�R߾��;�qu������0s���v;�˜C�J�77ܭ�2\6��$[fs����y��V1V�3���#�]~��~����?�����ጤB�{hXwK��L�Ƞ=��3��Y�}�S�3����,eI@� �,o�/�p�_ �	zBѴbt�$��{��i}E�qJ�f)Y����^�C��\i�in,�����M�p�`$�>�<^��L��0�ZW����޹24���:���\�"��������߹�>��G>���[�֙�� �]�<��.[wK37-�y���9�Ak�VJ�����#λ`� u��_Ϛ?�#(��Mo�k�~���"���l@�=o1"a��\�2w���;�1U�),	���9�JP�J�o���u�eT��S}fv�R'Q�j	ݶ�}��
�e��t0����ؖ�H�fζ4�mf!�t�8&ѮXW:B�a*1�(�z�/O� O�T.��2v�ŀj"	���5'�`Ha#��HN���!��)0�G���e���Vg�:���D�$�V����,�Gُ�$�b�u��<���&�^�aQ�JẄur-���6���$�T�M��Л�\X]�L<�ôI�O�0�D��q���]HM;�����n���E$�k��)`����umC%���p:����?��4k*k�#{�ґ���"hV�F@��dn3z��Τp5)���N��N_�ɭQׇ/<8��jϼ��R����rE�2�}rKo��h�UIB5�[r�4"4�E�\� �������HDx�����N��y��9�	��!�!���+,(�J˽W���+�Y5	�~���H��<�$ɾ�<�,R'zV4��"���d�Mm"#�:���NBo�,O݃�QK&%��f�D-ΨE�̊y���ɜ��Y�5���^X̸k-�n������XN14��Ґl���S�yE��B�z����>����l������#q�]<�/A�gBg�*�ݎi�C�G����c��~.�\��'S�r@�_���'oG0����V]�i�n��R�s��!dMQ�.�\��a�g;w��͹��:հ�\[��F&)���D0Ds����qc��W�El3�1ֵ!C"�����h��&1�"�Anl	��hZ�6n�\-pw�%�I���65�֘�����JAjd��8����k��=f�LC���JQ�x�.`Cհps3���������g��Ŗ��<fd9ٻ,�-?K��~,{��i����_s�6B�H_E�{�O�G5[H��T43���}F^|��NH�Zw֞l欐���ɓ�o���puVw:=z��P	��T�]�֣�H��4	h�`i�Hd�6���>�Y�]�BUO��@�F[,�g$�uh�l$ܰ�%y,��9j�4@�X3݄F�c�)K3��X_����閺/\=8��_��j��0[9Oa,Q�AR�%��e�[%��:��\"������_�8��?�-Ϳ� �o��P1�;�r�;LE�{f1C�8��!n�C�<���.�����$�Lj��з�:����8s�Ll��k��ڋH3������D�K�˵�k~ͬd������=��өPp�}n_͇}�.�0�K[0o����X1�Wb��CkΩy�<Ճ�ISlc�և�����Q|��23����i�eٜ�v8�8/��>_�T��(se��nǔ�kAc�a�y�[�I�X1:��������#����JL)}�������f֥�X�dF=�})�ZmA�
��VQ�o�@8;���`����,�ApF���~vnr?k��g�m%�}���R��Ei]PkQ�'�1�%�� C�>t�dp�,>���f8$�G�(LQ�3~gA�q�����H4�Ɂ
٫��J�޶�L�PƆ�m����u0�k #z g�� 3I¶�����A,*��U�za��u��S;�I^��Ό�}(�Ty��U����h�����K�#�~NV.�[-!�Ռ5]���q�Kx��Ɇ�|����k�l���(Ljɖ�Y������0�j1M��%Tz�7���ާ?�ċ�3L%\�)�3Ƽ�"�w��VF�HdC#ο2"�Ҋrj����W�Aq��Ǖ~�0M��ef?W�Ù�{�Lκ��0�H�=9� �UvE8M0��W⭠  ��G�����b����D���۽S�\�һ$���p��$��(脍;�')�-U�'F2)l�;��<��<G�,��@�)hp�5���R(5:�)���ȫI�L0;s���K&%&&�y&E��P�Fk��$�2�i�p��Xo��`��k�����u�Q<J��0)qǽe��,{�U�d��9��f�ݼ�w~���}��� �s���Ϟ�p���~E%�U�]�0�j0��D��h�ƽ�D��;�@1Cb�-U73s�K������I �o�85�fu�s\�Ӳ.VUKњ��38�D�`�� �D�i�LqPv3kH�gP�,Iw�m��W_ ��ŭ8[�0�Er �yG���խ��M��
�0Do�؜�wS�
m�y��v��t�m���F��*v�~�����ZT�D��eծL���Rⰲ�1�>���;b!CD��{�[(p�E�v�2��}B&J<��b��`&��5�=�6���{6�I���(W�[�1�F���V�|e��t��A���A�Pa.�#}�x��r���<ٹ��Ϡ7k�}Pki�sf4�g[<��Ec���W���B�J�ge|��s�ps��i�nl>��X�{' f|�S�B	Hw���K�P38��xl��iG��s-l�y�g"���'��+�.�~��{@�^+�\�Nx�w��,7+�|�jg�-e��ĸy�Y{V�6� �me�R��ig�!�:��1u�?����o!	�{�������Q��u�e�3��
^��KK�p�vM�脻�n�Y&��%�n��H����w~>�N�s5lp����� B����ڏ�K���K	��ݷ��>�k�i���<�i�T����ޥj��2!�g�Y��[�5�$z�U�((U��R�Ȱ��leDr���8��_�����;����?��[�f��x}��]4�C�r9A�5�nQ������5�2�K"����i�[������I��Q���ۍ �`3nOK{���ݲ�m?��범�G�;��n-h�X'bY���b��ƌ�txs��C��O�Į8w2C�<��@7��*ׅR �!Os�g�c��4[��/�la��n�`�x���M�P2)�軋ni�"�������Օ��]h��bL���j�C��^��W	%�$XX�g�C/`� �YVy��`��3��GK��I$}�2	S�Ik[{��\��@u؉3k� �=
���NS�d�c[Y���SE�"�*a_*��`�������g�]�5k<�\/��
�a�kv������w�p�F" "�s�"&&�q�z�g\4��Ӽ�=�1�"d2ӉVB���w�|?M�o��?��?Ly����=�f0�c��4?����0�, N*K�VI�(h�L�;���Z��
����oX�����<�S|�e��h$	qLy�$�bF�8d2ܫD�a���{?D ���ًb5/��d��"5*@��Ր�g�e5&�Bg�ɀR��xFT�R�`�{T������&�R�<��p̃�S���kk�vO��M�"g��B�e-T�� �q�g����)~n5�WH�W3��(A@�m��Y#����T���s8Uq1�:��{ΓPV��un{�7��͌Ǐ�_���E[N!55d���    IDATc�.7�yf��7�"A~	��� ���D-u���=�CA�Hxچ����*ޟua}����N��T6 �[Z�vk�q��:����|�~���t�ң��`~Z,x$5�>{�������i��Z��ES��,�\��7W?gk�9P�Y�cX��Sc���{����tK����Qč�gSͺ`�>��赯t�h�T����<�o6�>�������,��� �'tϱ�s:U�iC2)yTnv))���2��Tb ΤրWU٫����SĢ���"���-�@ݰ�1��N�u
�:�J��΍(J.�jT��5�{=��|��k���5r�>}�k?��xZb£��%s�%C[$~B�ѷ�d���2��=>[0��l�����O7���!����HO8�?R��~��s1�:"%�cV������عV�v;0��ӴE�3rD"�Y�Ņn�W;v�ăyG}Tٕ�����d���^�5h�n�D&E���W3~���?���Q��壿��c)�\/N�y �#u�JOx;;4�x_@�: ������.��hlez��	�6H�\ʛ�M���u� �D7�h$l<�|c@د���7��6�I�Y���F����0����W�"�E�߃A$�6� �:=۹C�ݬ�z��]��OW��V7N��'���������o�m�����ʣ��g���bO!ΗQ:�$�Tt������K��5��a����y���&[��w� �5�7��_�f"��emm���М��*R��(x����0��`<pd1	v�h׶&�U���i�/k�dԱ�� .a�;Մ�b��<�F�L���D��������c��`�[���o8@���/&�ɶxTc�KYrb�e�s��F=�k�62l2x�lY�ҡ��5�
Ȅ�L����3���>݂�Bj~3��*Q�K�t�5\�Ԍb=��)G�'�xb+G]�~*<���́�	H�x::�ZJɩk|�@n.��
��1�P��%Lc���v]h����8�GuɁP��2̍�����U!�v	�}����77㓟�d�)`��:B�R4Ǘ2��A�='F];{ÝwB��� t�R�M3�r\Nq�-K�reZ�n�Т�k��՞�W�����=>�����b4�c4�Hb=F�*Va�1~vM����~�>�_���b�.�2@���i���"
%���K���8SF�0�.��5�*��6�3]��i��Rm�I���㢖����wC�������(׭8%�R1S47�~�bfI�jޅm_nI�
:M�[ۜZe$��u��2��{��D`8z��&��8�~��?�ѿ�?�'?�	�:%+�k��8{.��hwd��Is��{�GS�un�	�nܭ��.�������簼��;%	�����|�."%���X�6�D5>����OSU�z|A,��>*�q_$��o�]�1\%��Nf���W���m��Й��v��)H�X	Ê���c<2�Ъ{V�y����H �rJV®>��a�Kkd�YjʅR7g$@-6IJ�L�T�ū�t4LHߢ2�'3�=ь���a��2�A�ZXƑ9���5W�T9ha/�8�HVw���a���X0�X�]��Guǵ��Ѩ�����ѓ3�J�I��I���s�.~�0g1�@e;\sc�Y��eoU�\"J[���a�i��zڐ�W(���"���έ3��6�0��7w>��������,��*�)Y�=Q:�;��_E�+�W�M�>�!,.�Z��S$�#kkA�+�-XA���j��8��f s��g��Vٵ��Y=����=֑@�ѧ7�}��*L���`�o��>�/}��ć�U��h�J�j�	����J��E�VRǦ�q�����H �2>W�Z.`x����L���7Ι���y��0�d�LB�
䡐hCO�p��<剘a�W64#��D%�L+�P�fkH��)[�4K^�2�ʤJ�Q�0��Ħ"�ܘfp����G_�������?�/����S{g��1	\kr��"�/=4E�"!�ĝޗHfU����1��8�Ω�\3�n�'w�#�w��N	��H z|Zۭ��PJ���.c�5�z��ã���L�2Q7RZ2��1�i��[ ��Q�CG�5����$����*����L Ii�H9K�|#ۄ�4g�����Xar3�-��3�:J�%��"���%�mCbI ��C����V�&�����G_qNw�rǂ��Ʉ�i����-�P�* �I�˃�It$`�1���E�'��VW��4	����r-��eǵLTkk��D"#\%�d�R_�)㝎�{�N��D�B$F��zXU[��N�|����Ehi�jko��j�I/쨲���ri��;��[8ܝ?��W��+��#Z.��?\�DH�Z~��H���/�=}��1��a�E�{��v1�S�HL���Jp4>�ִ���Vںr�]ݝ�s1�[�kX�l�t�z��Ha��\��)-��;���-~��>�O��?ʘ�i�S�3ՉC���@�2a4b�ܝ8�HV�Ą��#AJ�� ���,-�D�+�;(N�_�Y�����'�x$^q ��ʄ}�X��Qol��4��)�JK	������f���C�3O�NOMBh�hͪ�6a#Z�Ź1�0�¾Vf	gOͤ��p�6���D!c����oi_|�k_������Sܘ��[�
�
��3�`9�\+T��xO;���)�c*�{띥���Fs��ݚ�C��x[��{@p_�D�#p��}��.����ݏ{H�Qe���[�;	Ȥ;�j���3�K��BA������)hTŦ����c�M�%��m�pO��Dߦh � D3�?]38�M�����Q�KЈn��O�?70����e�m���iV��?.D\T�Y��T�{� �{�J�K�֣��U{J|z����<���Ka6S�����{^,�����Ź����-=f&
�I��(�.�����k
a�	H0�'#�g#����<߭Tnठz�J����Z~��P��u��-�(�ҫ=aQɊ��;�L�2��{V�]���_,~�3����'?��\���%=m鲏�9��0���+!ճ����<Y����]u��~���܃��C��N�.��Q
�]�N[_��n�h+U�ǻ�pێ� �J:�5LD��ʕV�wr���e> "��o~����)��8�<�^;>���U�4�i�v�8�������qnLM-��FR-���Ý/οn�j��o[@J��� ��` Z����niI��AF�A�����`�ʲ6h���j�����mC��T����p�Y�ԘTؗ���2��[H��1<+>g#TG�ܮ�_{�f�믿��7�7������5ε���� ��� ��eBjN+T6yz�4}�?��rm��eFQ��&�nn�{�n7�M �� ���u�߹�;~��|��nxd��bˉ���<s�ڣm��va]F�C��a��YYJ9�˧4u!`��a&YI���2E����&�l��~�jdߤ<H0W�R�R���� �G5�3���X͈��e+�pg�A�r\�0��n3�wJk�Ɏ��C�,6aqara&��ɖ�"97D(���mG��BIcI	�$�%�zN�'�����!mNm0i�N%���ŀ&�2�D�E�1K,��4�B�z�0r�<=�?�b���v����	�ڛs�3��S&9�8f4\d���k�q?V���M0H�ov�9����%?Ù$��rI�,�lA�9�hu9��%�0	��otj��%/��34�f��]�gC	�cU�u��]�ԏ�ξ8no��h�>1�w�)����dre�I�8[i���:q��C9-2	E�E����>����� ����?�cBe�4o:&O�8�p@���ߗ���x�	PE��^!]@�+�FO�.!aMk1����DS=s�$���~wɞ�$�:�֋J�P$��Vb�O�=�2��b�>�U�� +`�R�t3L4G�@`���"��pS���}$:����s׍�ָmo-�����_����W���@��c�����S���*e��:��qQ ��j�B2�gi�6ϔl}j������jfO�����m�ީi�8ǥ��o��+7wǻ��i9�i�Ͱ�xM�P��L�L�����[� ,�U��Yqlz0�C�����b\���*�H�P0!����V%��S��UJ�R�h=d��oL�0��6F��*4�>DC��Jr�\�<�_������@�F� �d�; �$�L.�:EU�e�����]ʲ��U+W[W�)y�%�$�;y.ib���� c���f��=_j�<�%8�uNk���I�(K�$&�M
��D1�Hl�DB׵l��H<a�<��s$���#����z�-|J��3���<�f�����"���#IKב��l.��l�*��l���y�W�z��cH�}$N��k��6���Cf���#u	��p�K$�Ȩ��)%+� Ս�2�� e��Bzyl��$x�)�
"���妪p���~�c80���������rlP,*���ǅ�;S��R�Ǣ{���2!SeB9��Z�zb�Bk�5��Y�J�u�\I�G~�w��C!sL�羮,N
�2��QR�rg��|
	��H#�ҭ%�ݢ����-���c~S!���2�y�=�'�P�58�ce�^IO�4�DJ#{��Y�sB�II/�J�S0����]�`�c��0��	���(S�a�y��p�co��)�i�������������Y����o�M��>�i�gw8�i�����m,� �k��<��l=t�_k*���ŜQ��	T)4��:{����՚�~g���Y?���z���؈��i��������酺�ٽ���+I�0�裷�1XK7�q�$D�/(N��I£n�$ތ�[tȯ��f�9W@�e�T��M���nD�3���O6@dz�CH��>�T�E�O{d�7�⳩(:��ԣ .9V4o��ٚ�#���D�V+�pRh�hY�u�!�<����Zc�unL%��m���;�$�F--#�?�xP]���$!���7-�6����#6a�s]*W5��V7n�­7�	�(��������Œ��厝I��� �&̈́��~�n���Q��c���?�Eb����XG�D�a�s�:�����x���n|���D`&�87d��h�����1ȞU��3)�*�q/.���Ɛ�i�Zk$�r���(��� ��̴/�&��c0������������coۮ���s����wι/� ?�	��M�`��T�!��&r�T�RH[U�4��j���4Uij9IUS�$�J�(�7!`�[c�`p����u�y�~{�5��c���>����\�n�����;{��֜c����w4t	e�h���;E�yڳ��T���\��Z�U�)l�-�׀��N�u���3��7��o���&��5O�J�d�K�bÚ7��R@s�'-��A^���
TTB���h�Ҭ��GV��Op^��4�r<�X��=Z~�(+X1N9�GU����8���$J����2w�� [r�#9�K$$��|�;T��ra�Ρ�\w�؝C3��������i=���x�+x��ކX��{�\`�v:W�aQ�א7w�}�b6E-%�Zcm1(xk�*C�&�6�8z�Gܻ7_��3�ӽ ���t ��p ���?qu<~�zY�{k����*�Ҏ�Rz���=��*lPcO�	�S/�:�b<�g#����o�J�MgK �]}��o$��=-V����f��}˘�-��;���UZ�Ihnd2�T<�%���%˽5�M0��&�N*$��UI�0�D�j�Z�U#�IB�u�r�qY*;��S���d�	�g0��93HBa"#���g��V�2h��,��	h��&ըLTP����^��EF.�%a�*�'�ٕkI���O�駥lVF8�a�Rm$kg+�I^�}/..�+`*%��H%���
��(�j�u���ƵG�1-�)mHs~����v/+�5c��&��P�R.���<#�&�【����M��39>%�'��jj�-��[{��p����ܼ�p�s�8��	!$�k_i��7}�!J��x7��I84�rg\j�T&Iٙ���g�<첻M%�L�/�B���m��S}}������(�\
1Ȃ�h����8k	����6R2q�0AS,[��P1|!���9HOE��t& �Jr�<�'�X5	yn�Ja�${|10(����
��R"q5�,�$�[��=��4�W*n|H\=�#Y�Pj 
k?Y�����x�W��z>��+_�J~�oDR�W��s��ԉ���%#b�� �����\�+�3O9�K�忶���ю�(+7DqpS��l"��澶nw���4��� N9P��\��ձ�'�u=:�k�&\�ڴ4k�~X�I�wˢ�˂w��a@a�!�n��h�y(��6�,T�iC�򋞔�8���Sg�3��1�e����n9c�8�赑6VsܤLhF����6�ѩ��_�,��T�T��� �~J��e�{�K�]�p��I��~���٦�#m�<gp��iy�j� p�~q�F��9�����lLA���N�9�T15�*9+"���5�{�r-�0VZ5��8���4�����䣷ƒS�����<�����σNH��؂"�s���|��wW��+r6�ƆaL,&��U90�8��zl��}�g���'��w�#�������8+��QL�Q�	q�j�T	�LAXM�_��h��ZG�br�4�5Cr*]wg�>�n�sy�p�B+z��i��U�~��5�~��T��?pXW�i�L�̇4��@�X�C�,뵋f����΋���?��� ���7�/��k�"�iPc�a]�d�*�c�I��p�qC�I��ʮ(2W����
���KeU��+m��V�K�U{��I	�glD�j92 �xLro{�{>��t���a�ʯ�@4��O1 [b}[K=�Jm�;�.������W������H��Qzc���ՙ�$�▎����TE�Jù�W��4M��zY�)zo�mK	��N��]�x���V��k_�����Q4?#n���s5����o����ޣR��.<��+w�V���ŭK����1��H�^�`������P���(I��=��`/i@2 ���9C(eȯ�N�,Ȣ2��A�o-��N8��-��OfaD�7͓|�0븾Z
U4�1�{#Iv�d�V�$�����(�\\�=��B��u�$;5�׈C?��-X�+�m�N���$���.f;�R3c����z�5��P�.}�W�j�	w�{�C�Oa��Hebd���������0Ĵ:I�Y9�z�
?��� O}3<��͌8��B��L"���;|���F�5dx�c8�����܌7��σm�a��kC�Uo��G�v�*y:Z2��I��6lY]b�v��8'-�I/�@h���会�^�"�=�"ӌ肙3�Qjż��L�%��.�����u��Ef����܉�\։�s�AL�Q�����Р����s���|ٿG�H �K�9��0�
��im���IE���d�&@�0O3K�kaГ��D�˄V�׉�.	��S+q�0��L�,��h;�,s*���	fI�%+���P��d�2�
��j$��f$c�Ǿ�8���u���w�����/����y�G^���/��/���Q�?��'Y/nrᝋĤ8d�$��4)�T�㾯\���TUX��-���=4�bўq��ޱ�,�̚�~쭍��9 ���� ��F �pl���ڽ�z�9"�h�	�˲��r;x�
=�0�Gn�S�������-��/a�)AK�I�H�m���w��1
�d7㒌uهuF�^b'y eX�?�'�#�Y�'R�Ǵ�>��ޒ
���4"R���?���]���\X=J�R�}WH�j�NqJ��\�H���l%�0J�q^gek��EP5�}L��Y�o�6t���iVQ�f��;�혅ě��i���A���NH��P��4���UP-�i��oV���'�n�d&Mf�-Oy��*�    IDAT���s��\��B[�����\���G�D�e=��G�HTi����������1FW"�����D9�q�UF��q�H(Zo�nh	▨b��>�@�f\��e�k��κ/�;5LuZ�p��̕[z�n����4C��t|�#�r_5�X��묽��͍{m�{\�D0�	e?M\z�v��H���$�<�W�����	 �+?� |������/��l����Hsi#���7�ɸM4(
��G���^�"�%*QM��NZ2�0-	�%�C��"׼z(�z�8A���(D�L
%ZֳM�[��c XID#�$g*I�y�4c�k"��	����������3 �{���m�ƿ���G����ٍ�ib�؋1s6�=9A��<�yBj�ЈCkaM/×E�}���?Z,*90�u�u��ȡ���v��k�O ��y9T � � 'W�m8P��u�Wͼ���Pb������\�J���o����%��{|��5��Y>�5]�d �����=t݂��`Ǩhd;�mȾR�Z��W?�t���s�&�z��2�֡f{AV͏c��[����QE��J`mkf�Crw�[� J����or�M"�k-�z�
�򠔑���֓&��?�Iɠ�y�IL�쩚&�Q$fx��H�fq(gf1&1qP�	���P)T4|<������{O׺x���1�\��yS��#�e�R-���X�0�R���S}e?��>��x�� L,V�H�K8��%�"�naD�L�ڣyj�����=�Ft�����_c&��ٶ4-�V���� 25V�6�J�P�\Ӗ�nK�HxU�~tCNzG��R�����D���
���M0��J��Hf�I����Qu�*Z&�T��r�-\��{֘�0�ʜm�����}�\t�J�!��.����/|>oy��A:O���}!��?}3����É!�4
������^F����%�t�8hOC�"Qsq(%PQ"��E�L$&nJ)�3J�_�1�Y���v���*�ha�SK�N��3%R�!זT�,����!r�_0�%uKv>"?�+�����x}������̻���g����s����tc����@BU��T�)F�6`i��bn��2MS�d<8�g�:K�2�W�4�)%_�HƬ�m��n��os" �����{~=H ��i6�Қ]��]-�����<%�Э3:���E��/+��ѐ�T�B��U�fm9_�dO:��񬺓���Y݄g��c�8�I�2���C��[���j��2ӅX<'/t݈3�1Ϋ�Q{��0����ɿ�#Aك�A4�a��Ʌl���rDb`	XhT́2v�����t>�!�	�}���� %���2���d%�38Ҹ(�����ƛÝX=þ�S�	�R��%�usV�����
��&0~>8�ƺ6�,`�Z7��J.�蹏���0�l�f��>���=�Fpw��˾��|�����6��|LE�R�-���b�b���O��g���H���{O�'�D��!��� �_�)�"Lӄ���\(�ٖ�h��@�t�4��@$�B̟�-�Bj8���Y��\��S$|� ��' 	�f��?��2x� ����B�x���5��S�ǡE<X=�5����_|�{���)������y+�~�W��#��
2�	�j�,�G�����J��"1�e���w�-~e�m�G�3��W)Z��)*Q���h�-��
oѯ�����@�zm ��.��g��n\����ʯ��9.���w��o��o��H�	=T�����������`%P
ς��ʮVj�����;�R��7�;�*��4q}-s�
�R
j���Vr(R�}�mY{��i��O� ��j��I@����m��I'����Q�������W<�����b�!��R��R����LR�]6��l�����X��%���;`-�óg_1de�Xj�X�8�8`,���閸��7��fW`̢���P� ����Cm�v� ���h�cH��D�M���F��a�2*�H�}'hFew��Uѡw�Q�H���c�lf�h $oB��1�þY=�9Eg�:��j����1��dBhx�_V�Uj ;Z䪀�47�N|i�S�t�������%����$�����Rl���SemC�����;?��}J�p8�?��a�L
���}H�4�$gS�9ZZ�2ϑ���7'�ix�x0$��-8+�[�r��7�U2I�O��;W�a�����Xb[pI���f�H�Ŝ}.d
��u��;¬���Xec��u���҃���������}��x������gz����/���9��GU̐(�?I�1M0���̲��0��T�X�6��I
hI���SKrk�+� 5�TZ+��X&�����F�052e�Ү^��eC,L�Lò�ݪ��{0�=�����ȟ����9�_��#?�#���],��l�X�Zc��`u�Fka�\K�y!$�S�yP��1�s.���˰�d����Pf��c���,<<��j� X[�ـ�?]8j��zP	���O'���qi���l�1!˺m~تJ�j�|��G�^Q���?X�#b�Y)V��.�	AJf�$3��tb��	���!1�|p J�@H9NU�V�2��q8H2��`e�@6�~���>2wO�i�H���(6?i�1�eȳ<����q����1>s�1�"�|��u&!�e�#ٶ�ŷ~�xV7ɝ���@��@2R����`!�03*y�t2y
g��}}5�MP����Ҹ��o@��{�Sr8�BG5��Ic դ2
�M��^��%�ֿ�=����M,�Lj-HVoH���9;O������O�$���a�3�����ܷ-����l@<�N�����Q��qd��g#��[�Kr��!p=���hIt�X��m�z�/�?�M�s�P�mo%q�Lj�
�2E+�V�.�~<�����=�ZI�+
S���kJ���?�w����ǯ�k������%_�Ŕ3��4���5�����$�C�����}�6lc�W�U�Ja�I��rXrvpRJ�{@SS�������ޏV����N@@�b���?��<�}�>	n[��_����?�����x]_]��*~��~:�~��~��=�vޙ͘b')���X��>�I.���@"g-�P!��c���/ZA2��G�POHƚ��[k�����>s�����`����ٯ��z3kͽh�_�5������Ȩ�����W�Z�(vP.?.��n�r���qE$dF([Ͼ{��3MO�abrv��;	�e2D���l�Μ��Co���I2���@&8K����3`�P����Q�~� 8]����&��F�=4����<�`H�m���GF"��@��x��G o-!ژ���
��R@�9�$Y�a*D2�#���d���66'�{V<h.���&:��=�YVڭ7�`�Z���lSWL�T�}	�"�	��W^�#�=��B�m���v$�2}&�3.����`ε9G��4�l8����?�ȉQ��"[�:�_��I*T��p~C<�7Om,��~�r�|��&�ȳ��戯���n.i�+I5�I���N�<H���G"�A*@ ���{����X�W�|����sQ+E'�c�V"�+���$3ԭI�u�/|��qw�����W ��?��?��TA-[xC�_Ju�F2�tD�C7־"��� �Q���`t	�nP�5�$�+�Q�^�pZ�T��|��Ls2A�ODA���v΁Z��f�Z����ةENL]͹6�j��]����/�CO�~��;��N����7x�{߻U�����)7c�C�%@������S�Ki%}E$��i�vp����Pq�G��5<�{�SK�=*�N���u]׵����p��� <��3� ���g�uoˑ�W���=�b%ܤl�ܽ�<~�qyi؅�ڱ]O�~ǅ(���ڎq�wMLp��8��:m��`Ӕ�c$�}���ON����8iOЯ���G�!�ĸS)UK�ܘ(���lޘ�D$��7��s%�c�����:h�N(��?~;��'{f��{�g��E�a\+�mD4�έ���u]3Q�ʰ������e�⃜�{Z<3���{�	��5�mS�6ރ�=�{6Q�=�M�X�#F�S��)���� ��)�Tݸ�$�$Ԫ����'������S��
�IC�)�[z���ќ��\�Ρ=�b�o}|����L�T������)�Vλ$���^M�����Mv2!��.��QP&6�{��j��e��w�yrB�,�EK��EC^e���3�5�T�lk���&�=��t��i��E/�Jg�B��̴!I��p���-��� [X�����������)?w�7>�1��>�']��Si����}I���(������Kx��Y�I�lBe>�x��9`j$��7�K���b��7҃�14�%�a��'��-[�;Fwc;���$AP`x�t�����\�Ο�������S�� ���|��?�y�kN^���3���b�O�f.���b	�t�p�=sE�
%�����;���rV�闭m�a�DsL<�(�ƌ�Ճ@�,���f���o������,	x�	�gz9�^3кu���[��RqӋ���9O\�\�[�مAke7�JL�:�J[���4�,	_�Y�6�=~f1u��hV�#8�t?��G��u#錳��0I@?F����8\�*+o������ٛ�(n[H����k����m�C�>7�LVbM��*�ܴ��9&��J�,�����[�x\X֕�u�]���o.��7�6�)	��o�&�a?��d���5}z�i��B!G2��.��� k��щƑ4iS
�3�A2��|���~o�,���h����q~���vC:e0q�ٚ3�n{�`�[ƫ����w?�K��5���(oav���*dGy���L>��C�	�@�J2�c��ٶ���vDcl�E�kU�Zǂ.��#]H/�`+���n_�xe��yL���}7�gI��2=�-�zs�2�0������PW�N�K|U���[c40	�[ �Oz��_��_�z���x��I�ݍ_��_����&OK��;�<18�6̀��,�Pb�H%&��h��u�k�_�C�b��5h���bJW��6��?I?�N�	DӒ/����g�Њ*^¬ˏK�$���⡑:�7��M�o���я~4�x���G���;���7�1�A�J� h��fIe����\���F8g.+mY1�a�ӷ���1c$i�ܭs��\�+Ks�nn�7���}��n 4^�t@Q�i�e���j��ѩ����:���J�sM/�~|�70��oL<�{p�ʝu�±'r>}͞�����4��n#�d<	�knP8�ǵH	"���0AzT��DK"!V6��䷗�ߜ�`�e�d�l����ĉ���s^@^����Z�0��m�,U�@�:k�:�a�ں�Z�i�Ɏ犋MNH0!-���e�<(NI@$d�-q���b�]}��Z@������E�;L��i�Į�d_�;>ޏP&�c�}Y��^?�+���ݍ�<��;>���k�f<�s���ҡ��ڸ�v�,�{�����s��o{;��ַ�}2ξ����Kc��D�����>�3��`֓�_ƹt�L2׆(��t��V����H��پ�L<}�k����y�Q����R'�A��	�S~��>>!D��W��j��Zy��L�'�UY���������(jhw��8�h*
���~���o���o��o���8�4�!<��y�w�;O\/�S���ҷ�	n&��Cbko,�B�'�>�j�ki�Uz��l��g�z��8���{5�w�wV�Qʖɝ3h�бX*g� "�l��o�G�v�ö$�G�k���_��/��Ob��ַ����?�����GI�ɞ�Z����{*p)���[�U�M9f�K���=�Dc�Sv|�8#F��
m�a~�LS�]��sXV�G��E�����Ѭ��~����?��l�i�}���ZTE4Xkq3�C�۲�d�\�~{e����f��2	R�[�
�<v�R&��\�m,K�5�dǗ�k��C��c�h��ID����{ϊ�S6K��[�>���kOy�`�nt�p?Y���l0> iJc�IƬ��`	�o��9�7C�Q��)o���������ˣ�8�t��g���y w���Z�J8?7�=x�4���4���-�$+�0B:�%�V�3��	[E��1ʶ�{��(u�~)N/$�1��~�YU����D*��=����3�����<���������'�gCY�3VB�蝻=��w��k~���������=�Z����hgB�Qj2�5����y�柟 �S��P�@�1���l�Ȱ2���UV�@�4Yp��<*�:�$����eL�KG�C��s�<D��a��$
HϹ�C��0Hc%#PI-�vsV�+Մ:+�S7j�5�nG�]o~���G���A^�����y��G�b�5>��W���z׿�?�*7��X[O	����ث��6I��� �Tg#�F��M�4����ڒl9��s�y 	��@�0�q@�t�\Hȟ�����h�X:;�a�j�:��J�{K,5+s�(2��?�F�޹��[ݷ��o|�y��^�;���>����F���c�ϥ:7�pQ��_r�X	����#ZN�b��{M���v�JP1��5x62B^Hw�q$�8,-��Bܺ�}�W��]�?�����3� r4��"U@UD�t���F�#�Tey�{�W�a��ʾT&f�!ո�q�C�nP��kd�F�-,���8� �ZÚu#0��H�Lf)?#$a�mp�\�}\���е�U1U��ˍ ʨz�9g=�q`J:�aI�J{P��;M�\��:�,��-�خ:��qMq��&FzWO��72Ok�ލZ���p��5���%2
�ඨ��p2��y��@�a(ID���@Z����N'd5I��n�a3߳���3lp=��8�Z���QF�����x��<�!	��?�����o�OB�1]̸j�;k��ڸ����8�݌��������g'p!Η���V�~~QA,`w�!�$���$I��N&���ľ�tC�:���a���A�����"	;b-Ii�ta�z/��s�n���i���n�8~@F���"Kשּׂӎ�c�ˮ8�g�®(�w�%�d��$�O���<���������͋���y�}�Ї��| ���c�čO�!���&=g{l&K�l�����%��Ժ��|B�If6��@4~M�H��`e����YXz�D�n9����
�:e�QD���ؙ�dr�_rYO� �I$H�*4
���!��_|_�u_�K��+�>�W�}/oy�[�����~:�%{�5~����"ܚ
��)��JM'Ʊn|ȪI���T���R�18ac���z� ,�I�r<ь��f�)������Z[�u�> ������k`�>~�H �T�zy1�{Xօ��,m�u���R1�º˲���$�2ML;����B�w\�R�t���8޳���8l�co��n	�'10ɨ_А�	�(�ѵ�}��<m����<a��Yfa�2����̴bq��q���3Fe�%���+V|��9Q��-�L�+Y�����V���h��)�f>�� �pT��?c��t��|lns%읕q�@d�s&.qP�Ľ+u�7�UBN<����y<��H�{zQ�����x�8��3��ٍ��m���a�s��G��������9�B��Wf�^�'֕�k{Z���Χ������V��Ĺ�0���ÅL�����U Q��<h�$�Zd�0P#�\t����fb%9ԪG���X����i�񜜡Qr`�Y�il�m��U�� ��%�V�9{�d�թK�G���>������I̛P�2�d�t]B�>��(w>�����{x�� &<��aB�|[y�w:a�%c�z̴�r=KnBKeL�fHd����x���|ڶqz�̻㹐�U���"ӄ���DB�>�S�c���M�/��#x_�L[k��Qwf��t��򘱊�|�׿�����i��K��$7����G��YW���%��rQ�r*\΅�T�K�|K�1 �[���c��    IDAT�`���m��5ɏ�^�(�B#,��pU�d����)�d~����,��u[��Z�Wf8y�?c�?<x`��(Z�HJ��vS�ν�|�#w�ݥ��崋~�En%ig�8z����ΧnOh�����|9��q�-�{�:p���ñ���^�Nk�#Ept�z�${uhskj޻ky���9�Q�G���V���O=��{���m�C�j[5MZҎ���)�vo��/a;�����l�3��k��Aj�q����{�,d��ɉfr�����l���b���63�S6Æ>��I�iY}�b��ĉD2,?�{@����[K�A0}#(N��VEJEkc2�j�Hߘ� _��/����Yz�#�ӂV��Ǟ����������y��k��q����~���x*/w����{�w�.��{�KK@��voҁ4��H�T���� ��_c���N�K|�F��� r�A��wg��"!7T��M�g?*I������OU��#�7nA����Z��T����t�L���σk3���{Kc�k��u���mkĸߓ���P{�cF}vbRg�ʮ�D��P��#CπJ�Sa~:��5�14+�b���<�10����C�&�����M8�Q�^�Z�P����x��O�X��)���`�|�<<���-uC[[OwJ�]�$��1��H�k���ty���g�`���P���Υ8�^^P���D�w�PH��i3rzk��:�>b3��Fg7ERB(U³�X���%�Ί�{����ҚO#9#�^{�ޭ~0���?p <�`�U�T��)n&�0�J��+벆a�"9@F&J� K�R��G�SO�b��핇�<��f��WL�����#�8�ZY[@3���"�X�c���6A�2M��&#������pˋ�ی�	Vkqhe�td��gd��i<�}R���� �N~�1!ѳ���̠�ɒw��4�g�����+Au�_n�l������G/l#����ob�ֵ�����7.�vG�ǿ�s�6r�<��(y"�Ȁ�A���I��� ���5�8�G�G���i�*1NY��15n�.=�NI�n�����ް����r"M=՗��Ko~3?�?�Aт�g-5IR�=�{�MR���
��R��H4��YşU�&��5�_�X*9�v|W�5�ʟD���Ǳ�i���B�X#a�����5H�2ҽH�V[@�q�z_R)���|�
8�d;$���S�K�����V���U����CҩO|�I��ى�W�:;�J����@��v���vS�9���/+���a���WV�_`'Μ��j���̭\�� ��*Jq�V�8R����V��E�(R�#1��آ�8�����%��k�Q���Y��m��#�sL��)&�-�Xk�P~�C���ָ�-nj�f����]�)���DZ�^!UC1]՛�O�c��c�&bз$ ���t	�X�"����o7֥і�^��a�e���}H�����}� l5 �����Zj��"�q����:�\�f.(\�e��(j���C�"������Ղ���Q��&�>6s���f.w�|�O�>p}��[�EX�{���&���YM'�yhW��W�J3Lof��Nx��"4m�>i�������S��穇���
�5y�h�|���}J��<����ӣ�#���GO{ZCJ{�Ӄ��	�g�������ɟ-a�x[�N�2*�%T9�:����U,����36���o@�}'�p�Kr )h�@gJL��+ �|�?����O�+F���\e����~7���W��<�wn���,95�H�y{�FLeT�m�)��m=YH!����HٶgF�k�Oz��Ĉ�
$X�D`5Ku��z*b8w<�r��m��HN,�ߝPx\ͷ`$�}-��E�w�H�j��$b�hH!\I![�h��f,�Yz�n �VU�X�\�L3����)��8K��=?Gs��D��@/7<�)�����)�\�5OS�@�f��	s��yb���%p	΍+�7�̣7��r���ရ���+�Z��JI�u<��N��c�<�X{=b�[C�c$?u��nf��^��C��P����'8�+1l�}���䕒(j1SE"l��hā�Q�L�,f&eCpJާ���<y��d��!�ts77?���W����g�~�єVUѾ.�#{��<rk�N�z�).i�=���A�I�NS`�;��Y�j+�����A�ƣ��<��M���4���ǯ(�1��~�X��r��+c���Q��N��ib�E/%z�\���?fl����W��P��'�UY�|��h	g璍{곟�r��%����4�Y�W�YR�V0BxVo#�҆4߷lO-�@�[Z�B�ɨײ��(eF?��β�E�#��E�� �?��b��[[�O��AF:� 	��o�w�� ?i٤��{� �uJ��ns4Ir��6 H?��D`��kv��'��������|ꓟ�۾�[��w��U�%��Cȫ�h��	�_/�5�$��q���5tΖ�L��޷&7�?Z�o$Y'�"��@���s��`�r�DlK 4��r�<�-I��'��"X��l�hj�9mS�B7Vϡ4�P������N�S�Ũ�xJ%'�5s���ь��m��@ 'v�A��#�K0=����h�E[`��6������mvQ�J�ϙ�;Ly�UÑS��fL�^�\B
�-�كD�>҅b��6R�*�*�L�e�洣���s��A;�t��,Ql�=�8'�T�y��Qz��vj�r&G_c�]���n�r�V��}-T�u���%ۨ��d���C5G�k��;�-�a��)d�(�\z��G�0[hÜl�H�Pn�H����3�����όp�RТ"e�UvfR�=:����{�cy|��0��b�AT+���H��o)�{	� �\�Y���8W�s��<��z֣�x��>g���.Oܹ���H��^X�ww�p�Ҏ��Z�5"�\${"����Z'�/�2�$=i@A����Wa�k->�R�2i�����"23�A��q(�d%�F�T�������f�|�Sៈ��#�$���Q]�l!��O@H7�=z' Gģ_^K�R^ו��m���X:H�'�[Og|�cJ�(�<fs�˴E�h��{�
�����EK�/�~����F{A�$�"q?'Q�&�L;v
��C9`/��/�W>����A���|�_�k|�����ǹ�s�m�;)��U�:.�c��?���-Ƽ��n����E�['Q�xy������L�h$)�	��ڣ�0	)ϱ�)M|%�~	�eb0ZB6���7Qw�����])q��Fo+=�)ɲ�O��ӞR�t�y��cm�ڊ�v��pl+�VeY{x�2I̐�%�Z�of�ף?l���
#ȭ|@z۳��h]-�M@T�Y*3#Q�ae�R��`�Z�9�@������$OU�4
 ۪qAJ���^�����9�iK��dIՍ��q����'��;�lj	%&���Ή������7K�f.4��[��z;�F�s�r*���\!�K���s	�II"�h#%�WDᡉ����67�k����$�]c������ �%"�"�s)rs��f�G/'~��r�ܹ�|�?��|0qȈ
]
��h�#.�2s��1����w9޾��O���+��0>��ȳ/y䑛�{��8��	��҂<�C���¤�~���A�T�ա��E�T��8���s8X{���K)N��$�H5�[?��!NT���Y4�N{��3L��V�g��l������������K��` k�&aٛ/��S�P�k-`˰��U�c)�猪_����?ďY�u�o)��'H !t�d-7|T�ѫd���sn}~�ў��4�#���Q��0#t)줱Wa)��蔞%���/��Ň>��6S�>�����|�w��zō�70¹�1l'�e9b8�oK�xt�Tr��)�����(��9��bbc}GI�4�Q�"g�l�e3�1<&����T�o-��$ڒ=�PیV�jx�+�b�x:V�Q��"̹?�eO��<C)��ή�~W��*^��+!E���D'�V�n\��%{�%�e���Rd�QZ��N2ZT���*�'Lͩ%���v�eo��S��U�8lܜ�w�f4u�FZ2��S�P�V:�~�g�s<׏����1�ڕ��urK 9�l[��l�)�F�ī�X[����ܛ#nL6tp�
Sv�k_�I���0b�a�!a�I�tO?�(��9)2�}��U
��?���I�e1�*T)Ԝ�!����6��&lSdO��H>=xF^�D��.��w�<����xέ�=��C��Þ����s��]�{��S�E�eb1��Rd��=s�P��E麣��>�;��&�У\\����a��+֯�%�]^�G����T��'	�C�}��`�
]�Sa�����̲9,G�e�D���`�Y�HZ��N=DՄ5G �M�2Ђ�L�Tg3��X��Z��f>�TK�p��a]����:��lx���/�\�w��Ĭ�<+���M{��wP|�!)9ʝ3xQ\�^:�,���v�����=m��֢�+!3	�8�,|���8�������Nj�&aN�}�8����ϯ|�I� ���{��n���������O�����0^�-��z,b/k�&�[-�>��I>GE:$a��g3��#u��GO��
�b\�>�q�ӄƃWӺ%s�P�V4Tz�h�=�r�|� Z"�kE���`T�X���s����O�b��*��1$��8\U�=Z�e�f��<O;�~��p�x��xL�2�U�pD���d�7�t?К��>?I�M�9�^�Y�g���%�*�D��α��$�CU�9�j�����ԙk�!��h@�k&!a��h�S�{�H�u+8<��C٢�D�d�>W����D)�S�1YL��Dt��sߜD���zE��S���ř�`k�1Ṟf�"��1�EF�ț��JƏYjH���J�J-D�-J��ꁊu�L�N�3w��׃N ~חs���<�чy�w���8Ux�ٷx��ħ���[X�D<�Ț�׭��Ѓ�vA]��^(\�H����;�ֵsuo���w1Y�_LL�n�~W�q�p���N_�1kԢL�2M®Z�&��:aت���OEb���"7wt�h���u�Εs��+���X�U�e���v��Ge�[�6� ��8'�"�����hAR2����`s�[���^�,q���pM����;6�5>��~���3ߐ�̺�esJ&r3����d�<��1�9>Cq,<z�*u��"�5t��-%m���d%��(e�'������ �M�RBR(�}� ����y�������y���m&3������W���x��1�qa�[޹�a�R�ALY���ߊ�CMG��1���2܂U~��t03O��Q>�g�f(�9*N�O���+��51�؝u��X�����{Q����rc7q1Uj�U�B�c�I�BC4�X.1��JaJ�OU�R���$���6�R�?�$��d^�0y8��TVZ�_�[�@,U�EJ����e?zS�t��Yˊv���|�h@Z���6�g��u�x5��%�1���p4���T����͂qkVRc�R�'��Ӭ�TB	�q�8�%$L�ں"�2�)���5(��ErD"�>}�y�p�R��f�۔4[﬉R�Z����G��D��7r*d��\�!L��ٖ	����V,I}UclY�ǿ�x��ੈ��(���?��3�z&Z �_�&��M<��Mn�;�����t�y䱛<r�&�v{�u�q}��r��q���e7�]����=�pSa���:3M5ܭ�)�q5�s��x�ޫ\^6��Kv�GVbq�ޝ{t[QkL� B�֍%gɋ(�i[$�{�e-�Z��Ĵ��Se��`�����)��½{��{���#�xA;]�!3�y,��SGep2q��Y�UZ��c�%��E�g�/IV�j$mmq���_S:9#P�A<����� ��ת��RrD�1H�Cd����������2���!�ŃD�S�.�È~]�(#a����CH$�1 �Z��!�!
�R��jT���W��E��Ͻ�/��/��o?���F����m��{��7��7Ԍ�;n���Ȏ�XI�u-�f����X3ꃄ�0� ��=�@���=�`ᔄ%YO��#��1ÑF� ũ5�V��ۍ�V�ua]�O!8�T���\@s �,�%#��Rˎ�ݞ��4�m���?��g�m��Z��SK�K�P[ci�һ���1=�����ւ�R��*�d��:}1�ccI���c��V��e�+�:EE1��x����Y�$#��I�u����^��W�C�fJ8(j��(뚅L������X�|�wKh��������k"� h���yb��MI�J� 4۟��|���0z���xY�Hz� ����s�K�J��~�!s��KrZD#���=����?L$ލ$��T+Vj�U�WI�q���;���!��+{������=���h*�g�6�27�eY
�=縬��+yd�C�<�Y�����qY�?��eג%�[f������Vխ��M�A�L�=m�D�3�	��H }E��֐�� 
hH�5D�,�U��y{G����<v^����EU>��;v���z^�nWEm����b���:��lk��C���"�Ƿ���=���U6���no�XֆǇ�놟���|>}|��v�KĊ*~t�=�	Z$IUț�,l}@��<7�)�R�-<l���?���c��ˆo������m@QP��Ў��T8k�~o�"\k�Sw��3r0�~
S���"?6
􈳞�g����1�pȄ�szW��R���)sAN���^�= \9'���$�����q��yzҶ�&��	t�ct��v(
nG��`��<�y6@�aA*�����v�cP<X�v��Ø�Pt��#� �#�?����������g�?�����>S�|~��������������/��̧(�w��w
|@��@�Ï|l
��jPP�{1����lĔ���g��)B� �)������J�Պ�R;�r�P�b��"���Z�X�ʆa���x�������?߇mö�(�B} �����5��9���E+�"�=�r9���kkx=v콣�H����]�*��lA��X��X���~�1���F8n��!�M0uEE	'�8�&8����C��+���dΧ�x��,��8m�\JĦpI��!I)�`1��q"�/X�r���j�/�i`g
��8���;`����	�r�tј����"{s��+��pU�D�Lg`Z�aD;�<��D6�K�����@�̃�="cR�Ӟ��\�s�4J�'�}�O1ڇ�vi��4���=���:��~��������  <���z���t�z��傸9�[��r�˧+~��?��;|�p�����WGـ��W<\�u���j]�tY��P���˶�����w������	!�������������kYpyX��_ �x���>�;:j��P�����	fL�"�d>�:"�����1�
�ۊw���w���;��?~����'�>ӝP��{t�f��j�A6�(aCE��;�U��ny�ΰʹ�f��x�?8;�3� l&|F��"�iy�����UNe=�N��;���a B����������Mn�4Hf.$��Z��7�+�?���V��=*�I�Vj ·S����x�	�+� ���R��l4�(�����?�[�����ſ����������?�S|��W�\.?�'��w���_����w����+����9��?͎N�����_fC`�3{I؞v>D�s���GuG)�|H�t��I��l �B�i���x»+\[[�
-v��T���C���a,�����.x\��������a���v�İ��,(���z���L��h�j��0��GG���l�1�{�pr��jt,�K`�
�-��&u�Io�P׳-)� �mC1í5�#����@Q ,�`Y*���h>pk��HN��9�> B彪�}�vf�s
��NufͧY�    IDAT�D�S(j>'cE���Y�4Y2�Tߏ	C``$<+P�M:�ᣥ����L-��E#���i:@��"Aj�$��y�M
�(C���} ��
5C?�u�2-�) �ف1Fg`���c�suSKȟ��#ѳ܎z�q
c��-���!ƭ?N�럸����ϋ�l Z?��|\���j^��4 ��^qݯx���6��t@������6�m�7��m+���:�c�`ؖ���`[9q,���F�<l8jL��W\�7����,Xꂇwl)��ח7x48�T�-|�c���nQ�%�#dY;�F(�z�];�X���_|���x��#��o�����&K����z�C�7W!���@�A's��̜lVp�܀�����b����T�*u��]�j����0�$D�6�,6fK�'�MA�>�!�G����A��3 d6.T=�g�;m
b0곡S��ɡ�kj-͍y��
m�#(� H�����C�Q�@
1�2r��0��e �r���_��������]2�����ɗ_���?~��� ̡$� YX�������_F��8��M���^g�8���Pxϕ�� UE-��9�L��{
���vI�qR6��73fo�+����Y9r�6��������<.ﷅ���ϖ�R�V�[���3�}G5F�^L�LY7�76<��TR���TI���S^��ʌ�B� ���(V��E��ag�=�&\��>l(뚨V�(T���G��`Q#��CU<=l(�r�8F��h�-70�>��;�ϙuYPj���[G�B�3'� "7�E3���#�ݹ j ��f�Y�>(��2�R�c�Fj�6 p��K&/���D ��ZF�k�z�&0�DW�IP�f�D�<3"Y�wQ��H����P�akR\Ѽ������љ��E��"m�LlGc|52Usd��R 	4�s0���'�~,
�˨������>�e]-9�۾���[o������3�	�Z���Pm�R
�uAo��L$!��&1�E�3�w%\���RZ���ҁ�9T�Â����Vo������ԥ� \9�T[3��p�)��(^i#0n��pk�_��K|��K����������/�a-`��a�<*��;�.H۷^R��V|�����v��(����>�Y����?![����1��D=�J�?H�N�Kf��L�����D��e �}q����o �S@���bd����Tn#n ��}Z�ƄH����(�Z`c�6���\xW��au`��EUU{P�y���@�ݟ�����o���o�D�資�h���H�� m��.��T��B���p���3�|B�����e`�Օ<�#C��Sh�M�s̝��Z�TB�b��Ǿ���E�_U���mò�X���jA-���u��ܺV\�`��  �˂��J��h��� ����e�XKeXL��)��r�bM�R�J�V��UL`��}d�¬�l����9��`�e۰-��,�۲ �����f�,�	���A���ϭi���f<w�T��2�q܎�����T�˩	R5.�J��@@\!E`	����#��L��X��8|�'��jl��=�>�3Sϑ��8o~SpG�w�����{�&�$�9�$���]-��UTe3FG/�a����N��IGiԑ�"���j�����gQzrƗ#뀆�>����ALET������~�� 4 �m�_�n�v��V����N���KE�����W�̀_���54��ȍ��`T����L��XU�<��Q�	-XV������S��@;�wH(֭b]+�m���p{�q\�v@԰�96�C���f���H�Re�I�;v�=_qmZ�!�|��	���_�vm��xy>2��Bc�k"�D5o�\�q��t�P�})�o��+�ɭ�Rp��ҵ�}�w���P1�_����2��0ĩ�d�b��{6��� 9�,f��\Bt�0�H���DdRw��P�8RO!�ژ1��p·:�����\�t�;<K�f�`X�ҦǪ�����5#���������o���g�1����Rb��xR�/�Q&�a2�����Q�d.8���T�3TF@+h�H�S��y�"�0���g�_�ۺ�L�[ǱST7���[R�W�σ��r��py`# �N�_�D�p�N*�5���6��(�z�Z���#���S1�9��U	5kH5�?��3�J�S0 �g���h��^l���{@��&�#��|�ؖSE����ݙo������'+�[	f�D~����p�MQ][�C�'r��a@
�$0�c#�q@�l6~�,)� *�N�A�@��h�ɉNa�D!���?*������|-A:��C�S��G"s���I��>����v��k)���X8�������am2�y�VL�c����%���P��f\���-���@ ee����y6�����j ��`�����z{~��O�,�^V��
]*��Ű<��^���W���?��	���b@���ݏ��h0@-w7�bx�;PK������0	N�jh�����w��R
�&��h�~t`�e��`�)��u����A���.=���G�7�}��������!�����^���Cś�1��p+&�+����9�N��xZ���ydB��@�Tc��FA���ABr��f�'7��!�Ĝ�i����Y@F �,�٭�_?;�ȉL���d32 �@sb�ǽ�����z2��� �␜HN���Mq��$�o��j3��;�34 ��t`Ձ�)��a8����|�x:;���~��C)xZ+�Y�&e2���;p��Q��)^?C�71�#6U*@Q���
�pq?�xV`s�� ��LU`��u[Q�
�8n�+��0i��ҏ�D�j-��D�Z��7�NB����vہl[�pN~\�=p���h��e��$�(q9���^4���R ��G	!����lx������	a��o�l�B}4j�*��|T�W>t��)SN�N�l6�>ذB�Q�#�o�炛�B���(��BD����@����(P����#,�U"�A�b�����!3<��C�)����?B��^0c�GdN��+�T�N��:��~R�#�.�n��Gl�����!�A@si�t1�i����}xٯ��7�.vXy%r9w8�N�rR�.���L�f�uq|��GG~������~�������v;�R����ľ#�����&xg�XE��g|������G�� �Y��p���U��:E"�5�U�������ڥTxa�����sG�i������"���� ��I4�X'睶�蜌ka^4�73�=��7���W?w�����/�e5����[|���J>đOƜ�l�8������>�_�:�#�7��A�r$ �uɜ�4���D��a��\4:�4M~��3�#��	�)��ڂi�I5~%�ǂ��e�c�F���T�B	�'>pN��
�����=j�s���|�I?$��OՓl��E.�uKR�Q�԰*ED�ᨽ����V"�_)`$]��4v�w\$�T��ѩ�t�3aa(i�L�S#M�g��������l��2�3����q��-"`U���uC�b���ێ�튞�ߔ�¥�zg��Z��UKRI�Q�QjE�
�����~�T���g� c��vE]v<<<`Y*�T�1����y:tʶd �2�_%'�̂O"��3^UPd3!��V�g�/|=�ȑa[K��N��ܦ%�����ۼ�8�䳳$��&Ӫf�'8<�7n�$5a���4�`]H��@����'���L��0)$|6�8�X��D��=�1<)5a�!�.N�Gm���������É�y��� F_�#px�8���֙�[4�%?gwt�P8.jX��vC�l]�c��}@�G#�g���)�g�(��6BPd�{���UPZ��qd}�|���������͉ ��x���������T�ޫ���wx���[�(��e���>}�
;���o�+'�e�x|�`-V�,hUq���w�H�c4�����H���۶Bh���+
]h�ݎ�
j�Q���|��u��W�>_����'����|ǝ�h�o�T�͚E���aǧO� ,𳟾�?��_�����G�|�1:P� ^�4a1U�R�	�?�7O�r�O��8�7�D��{�W��?��� H
�b£����eGr����Ą��y�8�m���`�X6=��F箁�L~�0�$m �0��	���oy@ү���6�r���S; �\5��$2�l����R���q�����ಫ�����w `t�Ч�T�E�L��ܔ������U�W���1<'z�,��NǸ8�L���iH�r#]>�D��R��������8��]�v�b��aZv:+L4mx�%S���̊�ǁ}t��Q�E�|�MPjj��fX!*ӛ�������)�#�ؖ��YQ�\v�8#��22�����|�}4��{�mr���@A��f"�(��l ,](#��E�7G�z��0.��Rū]`���Ztgr����]@�q�Vhe0��y!b���l,���k f��@�@���+8�ĸ�U��GN�2'�y��x$�(2�	ܗM�l�&)��~ԡdb��66���2鸀љ4��{�L"�B�T�-+��ұ����9���(1�E��������#���F.�� .��w�+���F�Y?�_��`6����\�߽���^�ކ����i -��*��b,�B��ѹ�z\8����a�T,���@��Q��㠧�
��%��(�`kŒK�D���f�ۀ ��*���Ǿa[)@��z������>o���7D���s(;m�h������_�=֭�����������튾_!��Z�"��ȵ� �d�&�7>o��#5�#�mQ#s�c��Ϧ�Y,R( D?�b�����_�C�'͗���vґ�'�������ra���^p/~F#�zp���������Ś4�жG�;�y�iw��u�� ��jz�f����l"��$I'ѿP�� �b��n�k���jA>9U�@��Vp�[5T(5B�v"��b�)">���s�&�N3��6,����N4K�p�m�e-X�V�Gk��nh���ZyN�Hb���;�q��q�[�� ��/��J��Z��6��@`aX��ʣ�5��pR���p�-���<�+���H
j����!7��IC�����<�9E
�%�ﬞbJeBWN��N���a��2[Q������{��3 �����:�8�|uYa^p�ƭ�Q�v���F ta`0aԲ�ُ C�x�����<����+Mk8��lR����`���½��ɐ�<��ҍ�3�"��8��<���18 )�.s����PR��ޙ��(ew�3F�(Q�2%j���<[Q��}�x���M��*�}'NX�D  �]���������K��.koo?�s|�	������8B����0����V*��ֱ���"yC唦T���('�-�X􂢂�~ ��P`�����K]�������\`uA��hx{]q�^�cPf*�$�t���m��+�[�7_?C����'���_��n���c�E.�{��$mKH�����уGE�agFtxLX]�����*p:����Ӯ�i���xLZ=0��"g�bX����V�a�g#2���m�����p�q����m���
���#�?��P2��i	$���ۑ�.I*��qυ;9]w�3��2���� �RC��:߹q�k/*(�|_Ӌ�{:-��.�.�?�a� �M����ߏ�{X&� �DA�N����T.�Z+D���;����C�/L�=����x��),t" SL`�Mф�U�ŲxS��6��:�e�����MJ�
I�B�|mD��9��l�W N�|8��aK��ٲ$�URXi�k;�I��Jx�kʗ秒�"�f
�
�JtҦЍk��ו(Ej )���������BPB1�c�#�+�K���rU��붑��{�y���h�n"�yZ�O����4�����L3�h����ƷB#]U`�5��q�/#�t�.��%UN7)�DÜBN�2,ǲ`��F�^DO�wVke��'���I,pwo��z�/��k�Ɔ{�A̯���������z���O��urA�eQ\��k]pY+���软*��0{�Q�-3��a��$�5c$cL/����@��yZ��
���jPS��L,�,��CŚ�5F�-[#��*P��7�<?�����e{@-����=Sn�
��>{������~���P�����W�,V�̐E��:#��	`���\$N([f)�l���1��v�<��Oj&�Q-�3��Oϭʂe��8F*t��i� 7�mۆu[a� ���b�o8�#U���N۶Ღ�L�~\_�����`do��J����x6.�WH(8�We"�����BN�2�r��u���C��A��a�ɱ�b��-��C$�݁�}�]d.�b���D;�T�㴃NuDe����)��6��UR����~Ld(�r�Z&X��콣���#��� �ሑ�� s���S{ϥ<��̉3�T	�K�<D�Կ�+�,<uR`VaŸ03�9Y&�Ⴚ0�>28kf%���8�*'���X
e���|��Y�E�iS	 =i%+�Dl���������o�c�eT=)2�l6����29ZC;P�z?GL�"iƕ�22�8��R���0`t�N*�.���v�{@H�#@f�<[`�8���H$&0c)4d �ؼ
x�ɤ,�!�\W|v�|6�9i�J�)�S$Pe&&���CP`��b�t�h�5����h��t���h��#(����#~��������
�p@�_?�� ��|}�~����}�:U�rـw�@�,��6w~+K5����h xc�6p�=:[Qea�����zBu�}�IVEO˚.��wF�j=o}o��®�Ls[ a,�ʢ�2<�V�Ͱ/{��(��j�њ��/�=b��_�E���w_3�hȀc���ŧ(�q��˒�e�_=�:S!���_����qށ��`z*k�0洄����WnE5���:S�a]*uf�]�r�׆����=I8Z�G�/uY�.5������
�����L����c�	���P̰T�C]��}0��*!����X��Ar���(aX,i �̕�P"��a��x^墌z-F5=��s�s'C`���&�ik;S��J���3PN�sܜ�Lȩ��VC5��Nc���T��..RC�"�)�8���,s�/�&q_=i����^8�����x f��宊y�<���-[,��h�����P��QM�D�G�v��>F��
�ʔ�$�i;����j+b��# ��Ɗb����O_����D�:J����iM-���Z���tJ��˽s}�h�B���K��Ts3�i��)����>$`��t~�{ �\�a�f��	�s���^�	��m��vgS�`�S�0���U՚p���,�*���׶SR[]�"��X���N�[+ ����0�?�)�l4"#�����dN��2��q��q|�c|�8 �&�G)����0�7uR ���������w�������˲.pi@�q��GŲ0r1�&R8c��kZ��o�i����lb�ƌ3ܣe��I,�1�hN8�-�mv��`�@&���qr�b)6+���)B��T�'��ˢ�,��n��@��VWD8��:.e���_��{A� �_�h���P.��(x�Ã�IH�)V#Oc���(	�z2����JQ,)�"��B^���i��Th+PsM�B�m-l�B͆hB�Gb�a_/Xt;rg$h��q�1�    IDATD����|��,(�+�󴛹轣K>2�9�1aWfETS�a������(6!jP�+
��])�X�h`NS�@� ��:�IN�K6(ɓB�HN~�3lf:�k d� �����>~�L�F~��TE>�|:�a�'�*\�Z
�b9����A��>�ug����\J�g�5�ÜkW�¯l@��G�����rp��+���L��!�͆K������D� ����tQ�z�\i�T�0I�%�+ ��v�a&�.�zr��\�=����%���Hs><ĩ[���> >7q/I t��b�d�!��smm��Ic����˂�����������;P��L��O��枍�q�;v*�-P7
:���E���Y��I�{:�*�L���8/�!F�K�"��w�����}<G�"��ml ���m0!�Rl�1���Z
�.�����+n�A�@�\J^K�����$��E2-Ñ�3���c?nǷ��[ �Y?��` ��� ��o�?��_����7���W_,���!
X	��(���� ��p6��J;[��3y��wt� �G���Pf�hW���q�6��6z�c!���g7:z����@�5!��)���i�����ZW���|0k�H@��v8:Z'楿�� P�x|x�/�jx~~��;j�XCa��V��h}���fd� < ΜQ�1�A���fZ7��$h9�N�a�b��,b�m��u��.XZ�j��5��6:0:$3�K5h5&�M'GN�j�gT�C=�i����LpG��q�v8ZKX�ne[L���9����g��S��ͅl��e�3�W�4�q×0�qOL���������V��Kj���>2Ϸ��`���J�Jk����iW��Ù�����B'9f����.�A��*�D�`�$��eQ�=��\8���������J�q��K��P��}rWQ��M�;U�Gg��H�]1Π�����,'4�g�	�2�h>@B��%Y1=EhG�;�U:3wq�V��Ɨ���0�atpHA�̱7�i�S%,�<ۨ��D��>�- �,L���� *����R��m�
�[&�.�BK9yt��9\^(N�Z�)�A+��H9���;�0��&H�H���H
\= ���t% 8��0P��X֍�
��PqlŠK�jE�kQ�.X���Rя7Ϛ�	g��E��ęG'�a$��1%��>b��~;��Z��z8�?(
 �!��N���Oo�������������/����e٬w,J��~K�u��T1U��[kJQ�p; PE�@o��4��"����ptrO��v uqh)��T�U� zg���M'ȉ��(w�j 6�bP!� ������
͠�utP�~m^n�T�b(��&�����ŇK�fXıF !L�L���VY�qr��M�L6������'��St'乩Ө(���K�D�N�>�����G?�钇����������4�k���?+ N��	��Z��*�RL1��Zn�h,[q���F<N �~��'>�Yx��,Z�,�<�{�b9�u$���,A� z��� x��_5 x��ӟn�����x�	���lf�V3lk���,��������Dc(�����E&��@��`3���TM8�� Y�Y\�wf4��NNW
W��10�szD�f�5��	4����4�*yp�1�fN�.3�89����*��^�{��I�P{�kf)Ձ}�ȃe�����
��t�' �*X���c�)�xg�Zg�LW�K-�C��*X֊�xb�vb^��k���I}|�Y�ϪG�$��gp�	��."待�.��N4G5�U��琂�Ɔ������?�I�o���Ik]֊u]Hk�G��,k�x8%U����܆sqR>�D4-ňŞ�@���I��轍v�o�����g=��N�h��q��!�V@ /���o���?��o�h��W���lQ`:���n�>'g�m�  ���b)�@�W�v
���c��xc8К`t#?��7��R��h��uI�����]���y��c!��ފV��
Ek@�������DpD�9 Q أ��{0,���j���p�	V��$ǘ<oP?K&�M���1�����Zd�0�lRO������U\.�t�>���%��=�m����|�P�g��)<+h
�\?\��3�X)�K�T�J]olJ��щ����~0K !'o�C0�!���]����[jN�<��4�9�����w84�}�(� �:�q-����ݎA[%�!�O`BTE��.�N#���1�\|c�
u2=��o
��Z����a���jU��ІCK�'�逸���9�1��� /�۽q����g��,Ë�� U�.d�(
>�6ŋ����)�%�!@N����n��*��9���ra�/+i�P�I����;������eajI��Ex��1���'�M�$rA�$f�x`��R�\�ė��\qH�6" e �K��b������@s�*�%E�f
�
��[í5��6?[Z�(\�I�3_�# J�`��4�2B����G��)�@�lT���g�;:�X"b�/Hګ������[���pA1C?v�\��.�jnǁc�t\�VW�m�ǁ��7sjr*�^j">�M�8���6�۾���۾�-����X �����o��������o��?$��-��O�f���.�H#-`y 
u"�@_
���4t���b��v �uLG��6��r?ϖT���e�S�����QY�":���HJG�b+��B +��8���Z���rY���CqР@hZn �!�j�|�@�;j)hr`4�$KB���	�VV
T�R�cL0@�~M^>r
M�:����lq�vòV,�S"��m��������ܹ�'��	PiH�ǔW)��Z" ����7��{�yQ�0X��"�R�,�T}��hfh�q*�#���,��q6s���_�ȼs#O��&X��`��]����Ra�ltG�@YT+���a��`@���R��Բa)�y�n͸��Rd��%+�)y�(kŗO�xx����z��Y�}0l&�;Fg�5×�P2u H��ʆY���-u N��nw�O����M/� DUҞE9�h�~�
_�Xp����.�'@�x��\ݫ�(V)t��,г9�)d��`���&��h�@?�\@����E�q����v4��U,���(N/����.Т���1P��.l֙@�!���X3hwG�0�6Mn��4�y�s�e~C0D��`�pi�����j+p �k�l2�ֿ{�B�)�
D= ��U�	p�����wD@LLj5)f�����b�EL.�����6H��aӂ��0�-�:2<n��������c(ޤ���E885>���O�Hauq��o/�o��v�+w�-�O�S ?:��8 p����9_~����K%V7;ڟ�/��e)*����2`�	d���Vrȝkv��XA����J��Aew�CDP*#I=��~^�8�,#�7��C
aGQA1pͰ�VÔ+��$=쁌�Oڋ�#�Nz�
	:/��D�,Q�,AJA7\�/ql��
|�o����������8:��s�lpz]̰�����o�ץ����� �w�>�Â0/�R*ʲB4��+w��g0(�*ta�{xz��""н��Z���������i';������>~���X�V��(+��0K�n�&����h�p����15���tN��ywB*ww�P���N�X'9[*�m�e)X��&���y�h8���' �BM��(���7�`�|�<���m]P���"y���� ��]��oy�逥V<����p���8n|M}�[�E7=۬�2��H!iL6]&�3���cOM�=�N�
-��$��0^��(H�% ��ѽ��;Z,�bٖ(���j��C��pt+����=&��� "bqG{f-=�{���EE����W~!�\̱�) ���]N��|��Q���,�o������"z6>*K���~��%"�hym= #���Ά=�á�Q������o�on��kcx�Ȋ�a���1r�bM1Z1HQ3U���{�2p��1�
��5�[K����-�i[�u)�Z��hՋ��U�V�V�RLj ���;��N����ظk�s���j-X:��1lɐAs�VC2z������>���ͧO�������	� q�8�?X
`�w��a�`���bޏ��e������O~�t��j5-��pf1��W�rǎ�;�2�gY�Z�����D�I�a�Q0ZG�Qx5Z 1 e��P�fH!Ilɀ�(�Iz��i`v��:��'�5-O�a�0��Ca= u�Z�(��2�Vlfx��=��#y\�;��׷׷�8�v��:ڍ��\�QK��J�R�+JI;˪��3�(�o�z��T��hI�@?��}�R�iK�˂�5-=%��&��i�@�Vw'��T G»BA���h)��L�E����
���@1�7O�5��t���L^�#�A��T�G�q��,>@&�M(J��ւ�w���/x�Tf��%.���c�*]���'���0�.Xt��a[lKŲ.X�
Ak��μQ`]�������j���h1܎��[ǵ)��l@f#V�VA�K��n�sr�\0#��r��U���{1�����W>W;șǠ�N$]9*pH\{x��	��1l�[�\rD��������{�G�ΰ�c�h=���87]"5�� @DBUCT�T��"�e�ǥ�ǥ�K�勵��6կj���Q�˓��+nG#���@�vf(\Z$j8W�"p8 �@���Z
@ʀj!�/�Ѓ���$)B+���ڏx�[������z��1���B��}�߾\���[��h��>\�c�c�>���1p^!L-��&���Ѻ���"�D����Q�l���RL/k)��m�����Ӳm����Z>,Z~�`�ݪ���'-��hאc�FÈ �(!"��.R�~�]��t8{�V^�`�"�@��\�-]E������|���w�o�ݧO�����t�� ��?������c! �ŀ7p(V ���w߿쯷���~������_�~�����]�eU/�+&��P-��E����ܸ$C5�jPb�w�4B,F |��1<TD���'OX��"­]���EQ6[Be��E�T����wh�< T�7G��T���<28ȡ��НKJ
P�`�
F!�A��R
�k��2y��aCy��^
����vu�^;n���gqLѢ0c]�4>Rlb`Z�z�#��7v��ՒB��o�La/�%0uE����7�-�u����Ld�0E��ƻw�&�XD:��[uB�v������e�����,�1cз�.�u � %�)�ϴ,� ���ۙ^s����p��L���\j����7<=�x\�z=��p�+V�>��;'R`��#B�U��ֲr� f��֒aG��0�#��`Yk-�*�&�E�E�z��׷��뎷���p;��B��Nm��.�V6t���+��Z .��U	�[��WЮ����h@�1�{��ۈ�z��v�vx�!:B�;t�ǭ�vk��1Fs�G����/唦��>�w�����lG�~6'}1�(ι �*&�Ŭl˲��l���V�틭�?ݴ�d[��a�eY�G��8$(Rd��C��j&e�b�R�AU�j�� ��3D%Ll�$1���@�i�Bb�_{_�$��\��#@f���f��CGc�����mפ��I&j�MN_u����F�Ȫ�,�l������� ~=�KV����ݡt"e�vr��������C��(h�]�D��;ܵi�O]��ҥ������2iQ��X�]چ�m�^5��� YD��|0�cE<-��?��	�7��V�ʯ�P�O�j}^���6竰>k��lU��#�����D�V v����$�%R%"&Q�b�~}�TQz��j�P�R���.��s�{�����7w��z�;��_ �������ϊ��0�2��� ^�q���w���������^\T������f�\}����d�6��5M`��b������H�X�r����,���J��h�EJ)ZDl> �{��6bf�!Q�s�F���Z1mV�W+��sx�
a�6��	SS��r�A1FĶ +!w�-z40��s-H"`�p�G���DR߃�>���M�ph�߷(�šd�7F֊e�A�b�,`o�*"|�RL�ܺ/,�"#&���pm0[t�� O5 �zkU��!�d%"1��<e#�9k�S��b���I�d�`c
��j�
+C��I�u���1��#���b�<gQ�=�)��@�D�E`�?%Ki�Ȝv4�stm��!��`��u�[V*xIB�
ro�D�b�H�6Y���a$��&���Ȗݨ|��j��~���Ja�A�$���=���A�l��1lSlS��k�b��n}m���Z��k�����v_� },��?e%��������޽_��E5�")��"����j�$$QE�b�ۘ�uJ��ڛ6n�1��K�e��(ڬ�b�.J�)�\�deQ�J��������Z�"r,
�#Ϗ_' ��m788���M��CS�}��ʇ���Hq"zG�Y�48f{��<�0���zn�����hUk����J_���@�r�"�=!7�#��H���v�g�>�}�K�DE�PTb���I�P���؇T�Gf����nǟ1v �{<���">�; �g�=s]y����	�YU�i�o*�ฮW�j�!����T7>Ե�u���9�� �9�,JT���)g��5�J)R��͠�N���}���n����}s��;��0VL�������	�Sc|�~� �� 8��U�����lS������z�fӄ��B�_罒:%i!*Q)mcI�6�}L)��Sb6jrVQQϬL����@JF�f���]��"�ǩ��f��M�V�'���t�zvR��U�7�?_7��
.8r^�9"�;���`wӡ�Gp1�/�����({p���zd=�m�
�&bm}bƥ6Vo��!#w�	�%���d���Ws+�b|+s)��7}����T%c;�^ޗ��,�9#� 8X� Fp��k�9w .h�C]�1�a�U��m9_�� %¡����
� �^�����
�hc��Y���n��Z4T�����}��3�A��X�Üy��Ce��"ڏ�5�?gA���kq��5��p_�v&��=�}N�o?3C\�f��d]���ޗ-B��@�.��%a�E���iAM��&;l]�@��ۅm8�~�b�k�EA�}/�������v�r��h�Bԓ'�Jì��5p��J֢�����UM�� ���9�Rb�"��hk�S'ȝJ���~�~_�ݾK�m���9mw15Մ����e�k=�0��9���k����� �ZM9�����J޸���r���y���է.*kŤ�O����4����&�G
K�a�Њ�-�(�%�*�N5v9wY�e�!-�F+O�t_�=��!c6�6=��f��9�PR��/�����̕g���*�&P�k��ƻ&8�抙+��Y�pj"��*��,%��I��E�����߾��_��n`�w������ �/R�~� ��	���K�`������
@�PW̫��u ����ș���.Q ��.iLYr�9�M�N������o?�Q3#�_��:[W�����lSm�6���ysru�>�<Y��O����:<;[U'���M#���T�E��+:%��6`�aCm|�J����{!c`��Q������1P��#Pm�*r��K��%�l~B��5���%��GؙQ$Y{�֡��9(Fڶ-�R�}�����Σ��@Vރ�;�s�V���Q�aB���͹)B�a8NO�2�^�#`Er��0B�p���ý>JA�V鰖�"F*M9���O�ԍ����d�  IDATbg�'T��KO�4�^FB����ǐF/C�؟U����-3�k�RW)J��_� r�`�����d�`��2e9r?��������E��A���m#?�@�����v�S���$Q�k�T�Y�E!IU)�����\v]Lm*��t �B��mԮM��$U�IJ�9w�h�t�h�Oe��|�'k��L��8��30���k�c����ty .�8�!�=6h|d�;������Ө{Xyt;���;�PM�����}��c2�H�&��{<v
���c�E\����7xf�1 �`'�0p�5�d�""Y>���~�F뀏���~v������{pcϬ����W�5xsÁ��g�O�aM�t��� �kOS��b��߬j�9�ún��I�lN7�������g���y8���ח'T_6��X���
��XP:�;$�� G���M�+\�pu��53�ĈŢ����n'�AA�	(��մ�ڗ(	J[PR�	u@! ����v�,���J%��A���������έ-RB ԍ����?���)�y?���+f��M2����"Qb&B)F�Sa9�����:ke��X�X�c�=���ڡ���B��>�_+��d�%%T�j��zf�=�q��PD�#�4[���N�<"��M�!Nl�H�H�7��u 6���q(0�*���f�msN��NAG����m�Ȓ���� �Ҵv�H?H#C��c8���zH9���~�],q�J��}L�M�D)�+%p!�0;�dPI%�T4u9�CʱM�;��ƒZ(E@"rɔ�J�Y�@r�t�(��aE��`ͥ���Ou�^/Ɔ�M�4�����?{�ǌ���c��9g`n���CA�sN�2}�Gl��ٚ��xM�ʿ��|��5޷��d����p8g��?S�� ��:6����02��`�+�8�3�h�����u��6��,��d	 � U��ж�~����Y7���9~�\|��z�ť�|�|}�����o�Κ�Κ欩�f�|s��t�$��~nAAq�#Զ�� ��jxOfx$�$4ۚ�2bg�{�z�=38���j��-xK}���d7��厝��CA!�K��>�
T��.�;%H������Hi�H���(
-YP�*L
���!��u� ��u�*� ������b��|R!!�RT})�!�)�o�1l��c��$A��M��
����u	��:������e��E\��%HY!�7��J�\`ja��h�bF�m�B���(�JDR��b���[�+�W� ̣FB���������02(1���D*R�Rr,��ڔo�]z�ﺷ�C�~﮻��w��D�)Iז�&�SI�$�K�&z+Z��XzY����cC=gp���u��e������0���cF}��Ͻ6��1��c��R�s��c��c{��n�}�\p6�_s�����{�٘ifp��Ǉ��9���/�  �����K�I�ͬ9�l���	z����	6��	����r��ml�m\}����W������y}�����7�/�������g�|�Y=?o�˓����{v�*���ڈ��~(�����Y����h���Py0r.�>B
��3&�"� ����-%O�}�Zu&�X}��Ⴕ�"�(�La�H�f�XۈrK~����6�ݦ���Kۘs%��Y Q�2�b���Nd��9G.0;瘫���LdⰞ�+ϼ	ޭ*���;bRa�J�c�<����f�R�%)5�G��L��E֊��PV�`�@A�� ���o	�CD���ʦ �bF�ƃ%�[���Z ���q�R�E�y����>Z'��f2�	"P�Ya5������S���V3��Xz�����TT���K.�1�׻��a۶�wm���ݽݵ7��t}���o���-�MYZ ]6�>%�M3q��)��1���Ϙ���۟�y5}�#���������*	L��C���>�ҏ}���Ԍ����t���`�s���c�9'�S����D	`S#������;���c��_q�k���,#��xy��|���������g'Ͽ���ꛗg'�������M�⼪�-�t�	6���#��~�^��,v-f� �(e��q �Q���%�` �(%�>�@%K�[�� "�ʣ�����ء�ޑ�x*{�r��m��>���^]��o�ڛ�����w1�D��J�^�A�z;l<3���9R��yv�9�3�hh�DaS�z]���\מ+Ϩ���
ެj���ԝ��w�}@t�ڹ�ӕ?;�]]yn*O��2I��r����{(� �Is�8쭕ϱG]7 Y~(� �����Y���O)k/,�*f��ޡ�|��l-){b�S���LZ�Ȗ솲��!J�\����9�ݷ��������>ݾ;���1]����m��wm��5�q:s��<fL�0��{�9E���<��?�h��8vݘ�>������O��{nn�ʒs�~qC6±��>?��9�`�H���t���c��Of�>`��>M}󈧘������N=�q�hL:X�G 'M�/^\�<��o._���˗����ꟾ>�|�Y��Z��f�\�������j?G�Tè��U�>�� U�E��ؙ�`J}{S?A/۠�A_0�$��4 #�љ��B�@�w	�O7�������~���/�]������������y�dHOY���J�o����o��q�W�@M��E�k֫zuZ�M`]ʪ��zv�
W'MX5�7��U�i���^9>�Լ�k�#e�S!GD��5����E�z�a{;H'�z�ro���x��G�)�_s  �M���*g�������S�Tkb(C2�d�J)�.��CJo�1���қm<�w����.�}s׽����2�*������c��c�|�p�]0����=����x(z�ޟ�w�=sx����S�k0���8��������C5w.~r��): s8v��c�)7~Ϋ��9V����G�򗗧�ϯN^|������|�O��8������/�͉��c�C?c� ����n�cc��� ��8�; 9	���gK�S��>"�q� ��� ���ު΀��Wh)��M����������?��~�ov~�=�p{�މ|�}=�jc�*~|��y�ӽ;eS&p` x�u�	�5�6�X�b����v'��+G\�a�]�vTm�s���O7�?_7�tx]{>�٭*G�#fRbxR�LT9O�b���P&��b���6� ��z�	���ح0MHh�qF2�K
�łC��ͥt���]��_���v�vׇ���绷����m��u鶔tצr�m�m�J`�c,{���p,��|����s�1�:f��=�o}}�{ۯ�OqԦ�[f�����8 �*J+MI%��8+��k����6�����9���^���_]����W�_?߬_^`u��a��I.��?�Lǲ�|��}�zõ�@�v}Q J��b2~ ���+�2�ڏ�4f���M��ك� b쳖ww]������������p��?������l�t�����x���s�x�#0�	�+��eg�rM�@Sy�!Fc.\U�M`�TLMphjǫu����.T�U޹P���\9�U�ܪ��BLL��;��s+��*�[;��T;���+g�F�H9I��k���0��Ĥ�m��Cy�K���}z�m�]�n�y{{�7�w��w�ts}H77�xss����1�����9����X����0s���,X�W`q ~zL��+ul����#p଩��/�N_���g��������j���/���UsRQ�"�%���J��Ύ�Il�z���t)�~Z���%�d�T�J���h �T�ҘT���������׻�yu�����ǫ����6r�� �?��3��h�)�i��w��;=�9��l6���1UJ��'W9&o��s���jB���c���*v~��ꤩ��
��ʑ;���W���4nU���b��m[�%KV��H��^�Y�9ˮ�|�/���ݫ������f��6��]L�1�^D���8L}���S�O-�-F}��O��ǜ����ǎ��X�Ci`p��zy��7_�|��������󯟝l.j�/j���ց����`Ï����QTT��ɵIV���� wҩ���uIb.�KEbɥ+E��D��s՗�m�~���������~�n_��;|�������2�O����t�JcF�c�!�	��=��e��w=x�!���r`&�ġ�TW�׵s����7��U��M}y�T�&p)wm�ݴm<Ĕr)��~�-9x�"$R���ݧ�޴���!nwm��"C�e�ʟ3�Ӛ��џ��2�,�ı8 ?/朁!U=�G.~����?~u��/.ο�ZUW_^4/�Cu�Pu���=q!@�Z�Eń�Tb�"���&�6j{Heߥ��R�Ľ�))RV�2�E�����ͫ����n�7"�2�����)�1�o���T�){;��c��cB!�-?�o�z�+E�˔����V�9k�
��R�����v%�9O�9V�X g�O���t������z`1����8 ��uL[	����fuu�Z_��X=�겾�����Z՞��R�$��]��&M�h*"9%)YQ��ii��I�%�Sܶ��w�;�ҥ�]!M*HE�HB�vy���������o���1&����U��1a�i)a�=��1gb���y�ܱ����1!���������,X�+�� |�vLI�CF`5Z'����fSU���닫uu~��7U@)8t1o��]'�M%�"9�C�G�CDL�d��B?���M�̹�tb�8��%�ɱ����O�Ǻ�e����1'l5~����S��4��1����/X����ia�8�k	�F�k�\]37�� IQ�$�,�y�ԩ�F���F����/m��c��Z�c���1������~Sa�;vs�z1�,����bJw��c]�
�ӆϘ�?%�<Uh�s
�E����L#O!"N_�[a.k0�C�����-�� �z�ɂ~,���c��t�tJ�tH�Sñ��C���b��̱��S�0s�����������/X�`����4�|�e>&��15�s���qD�l14c�w7W� ��G?Ų�,x����SR����))���y����k,X��W���u�X��!<d�z��,�;�� �}��l��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`��,X�`���U��2�����    IEND�B`�