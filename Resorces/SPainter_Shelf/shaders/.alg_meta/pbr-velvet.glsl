        r e s o u r c e _ v e r s i o n       /a3a3958f547502508607c2ab661171e8b58d2ff9.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
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
 # l i n e   3   6 
 # l i n e   4   6 
 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r l e v e l _ t e x ; 
 
 / / - - - - - - - - E X T E R N A L   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - / / 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   " f i b e r s " ,   " l a b e l " :   " F i b e r s   T e x t u r e " ,   " u s a g e " :   " t e x t u r e "   } 
 u n i f o r m   s a m p l e r 2 D   f i b e r _ t e x ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   5 0 . 0 ,   " l a b e l " :   " F i b e r   S c a l e " ,   " m i n " :   1 . 0 ,   " m a x " :   1 0 0 . 0   } 
 u n i f o r m   f l o a t   f i b e r _ s c a l e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   0 . 5 ,   " l a b e l " :   " S h e e n " ,   " m i n " :   0 . 0 ,   " m a x " :   2 . 0   } 
 u n i f o r m   f l o a t   s h e e n ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   " s h e e n _ n o i s e " ,   " l a b e l " :   " S h e e n   V a r i a t i o n " ,   " u s a g e " :   " t e x t u r e "   } 
 u n i f o r m   s a m p l e r 2 D   s h e e n _ n o i s e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   3 . 0 ,   " l a b e l " :   " V a r i a t i o n   S c a l e " ,   " m i n " :   1 . 0 ,   " m a x " :   1 0 . 0   } 
 u n i f o r m   f l o a t   s h e e n _ n o i s e _ s c a l e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   8 . 0 ,   " l a b e l " :   " E d g i n e s s " ,   " m i n " :   1 . 0 ,   " m a x " :   1 6 . 0   } 
 u n i f o r m   f l o a t   e d g i n e s s ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   0 . 7 5 ,   " l a b e l " :   " F a b r i c   T i n t " ,   " m i n " :   0 . 0 ,   " m a x " :   1 . 0   } 
 u n i f o r m   f l o a t   t i n t _ a m o u n t ; 
 
 
 / /   S H A D E R 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
     f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   s p e c u l a r L e v e l   =   g e t S p e c u l a r L e v e l ( s p e c u l a r l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   d i f f C o l o r   =   g e n e r a t e D i f f u s e C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( s p e c u l a r L e v e l ,   b a s e C o l o r ,   m e t a l l i c ) ; 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
     f l o a t   s p e c O c c l u s i o n   =   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( o c c l u s i o n ,   m e t a l l i c ,   r o u g h n e s s ) ; 
 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
     / /   M a t e r i a l 
     v e c 3   d i f f u s e   =   o c c l u s i o n   *   p b r C o m p u t e D i f f u s e ( v e c t o r s . n o r m a l ,   d i f f C o l o r ) ; 
     v e c 3   s p e c u l a r   =   s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s ) ; 
 
     / /   V e l v e t   r e f l e c t i o n ,   s i m p l y   s u m m e d   o v e r   p r e v i o u s   c o m p u t a t i o n 
     f l o a t   c o s i n e   =   c l a m p ( d o t ( n o r m a l i z e ( v e c t o r s . n o r m a l ) ,   n o r m a l i z e ( v e c t o r s . e y e ) ) ,   0 . 0 ,   1 . 0 ) ; 
     f l o a t   s i n e   =   s q r t ( 1 . 0   -   c o s i n e   *   c o s i n e ) ; 
     f l o a t   r a n d   =   t e x t u r e ( f i b e r _ t e x ,   i n p u t s . t e x _ c o o r d   *   f i b e r _ s c a l e ) . r ; 
     f l o a t   n o i s e   =   t e x t u r e ( s h e e n _ n o i s e ,   i n p u t s . t e x _ c o o r d   *   s h e e n _ n o i s e _ s c a l e ) . r ; 
     f l o a t   i n t e n s i t y   =   r a n d   *   ( s h e e n   *   n o i s e   +   0 . 0 0 2 )   *   p o w ( s i n e ,   e d g i n e s s ) ; 
     v e c 3   t i n t   =   m i x ( v e c 3 ( 1 . 0 ) ,   d i f f C o l o r ,   t i n t _ a m o u n t ) ; 
     d i f f u s e   + =   i n t e n s i t y   *   m i x ( o c c l u s i o n ,   1 . 0 ,   1 . 0   /   e d g i n e s s )   *   e n v I r r a d i a n c e ( v e c t o r s . n o r m a l )   *   t i n t ; 
 
     d i f f u s e S h a d i n g O u t p u t ( d i f f u s e ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( s p e c u l a r ) ; 
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
   IHDR         �x��   	pHYs  %  %IR$�    IDATx��i�e�u&��=�s�j�b��$�"E���eJ�$˲l�C�c{l;1���?F�5�n�M'��H0���h$n���;6�Ҷ�e˖[�%��(��z��{��{��Xk�s��I�Ȫ�o����{�Z��ַ�������������������������������������������������������������������������������������������������������������������~ _W�c=�ˆ������/�% 7^1��oģhhhhhhh��a;��C=����� 444444ܸ   ��󟁖 444444�H�c�'f���@K nD̃��߷�������������hhhhhh�Y��������/��oZ������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p�% 7!Z������p"|�@CC�W��������
_n ��������n_����q��j�[���w�&�㓃��%�c������J};��c�w��c�n�n�v��1�2� S2P�s����zZ����MEK �>8�j�^0������c���?��_k0�/w�_7����q�=�Mhhh��% _lW�� >�~��㾾�l��k��+~���Rf_��[۾䗹�T�}�cjhh�:�% _=�ד�^���a��q�9���p���	�W�G�g 	��_�g���e�������7����댖 44�2���W��/����kܺ���1�ϓ��~>���ג l����}M?w�ܝ�<�̧qm�?.�����2l}�KƵ��˱ۢĆ��׀� 44��U���ߏ���A��\��vb����������t*3 0pN �������̥>=G��#@0@�@��p���c�Z��b� <��3	�xieoA{ĵ��0�lf���<a�N$�K
ZB���������ys���`o��{?�,��jױ����v�.0s ss(@x��w_���}⎫W���
�F8���������0�� ��Q�:�~gD�� %��� D��8�7��y�sD��w�~b��>v "5�Hp��������i�\F)	�����<:GË�_���1���o�%�K
��	��+W�����7
�V�!o4��ho;��+��*�y`�@�ܺ, ,/]8w����I�b�)���}w�r��>���Ɣ�DH�!.�%#+�<B�A�#�p)�G��\�8��iDA������� G�.��w�KB���%�(%���^�.�"x� �&\2���s�Dr_�G�~�[�����?���ţ�apn���|�ӥ�# ���qI��)���탯KB����q&z�[?��O~A�� �% 7�G�σ�v��]�σ�}�^�_����������O�\�����[Ν>�Ja	�9���`�և�y�� F�	���H��� �]�;����p�p��(�I�Y
[G��\F!H%\��FO*�'%�0�;�-�� x'�\@��9��QX�R�\x��	��~�_��sC������o�3B� K��|��Ɂ1s-��4!h�@��:h-����ֿ^���+���{�{�`��˟�[�rjo'�x�M�w��PrƐ
��2��!J�C�J:DJk��CPy�˯WW�0g�~�90�� �,4�sܙQ�4��9�9{�؃ M:F��%A �,���f�#�� 1@�(E�*(��ȁS�$! �;Y�o�r�Y"IB�p���\�/�'N�����V��s V`^�(�O��vR�uO���%7�p#�h�m%���㥽��T�z��s��;��R��O~�����S��K�4��
�d80�I���-�}İ:@N\� �y�_��`�Y�h�B���\N#J�@�� �-�}@W !.Pr�$\oO�����@�$B*zI|� �Q�pNz85^j���S��Ñ$.DmJ� ���K��s�>x��r1t Gȅ�bX<S����W��^y�7������/��>�^��z�ۣ�Ǣ%�s�@�M������U���������w}���u1,y���~��{�4����s ��-��5�0|�%����3(xpJ��~w�K����-�BD�	��y\I�'���y�8�qS�������� ���&��Y+z���(��j��d�0�Խ���9!e� �'�&)L�����ܗ� r��z����ň������K#\>�w��b�����m�����_��'>��W�O�m�`���!ѕ+W"p-K���:@K nxl����������w���'r'~��?�#vp�x�S!� ��(A-,�yD�%b��4���|��c/�y.H�Jڀ|@�8�5��2����Y�����I�?�$4���J�)�p���\���<\�)ƒp@.�p�Qx}P�T�\T(��B'��Ge8�#r�� ��1D��$&�h��xD8���dL1�>t(�jb�� r���\��:�����G���s��_�+�=�E":*�\�KK�Z�^�)؞8Hx�Cac�h	@�����)�m*~9��߁��'N�_,�w._�p��?��ݫ͆.^�����0l�@�k5k�<n�Tu��.t��JN(i���TB�G�6�_J��@Uz  �~�E�O�4�p.�^<A��Y�� �ݧ;�sA.� �7�� ,�1��q� q��~*5@;/�U�m�,�w.t�� g,����ڱ �&�B�U��<�@�!����M)�P����?�����g�������~)��"�D`[h8��/e���qv��EK��h	@��yſ�ڟW��A~^�/1���8q�ֻn���rߝ����{9? ��$q�K����F��>��\����'����Ұ��*� � 3Ұ�@n�tA�`7(i@�#,� 8�n!�Kz�Z�}EX���K�a\���4x�!.v��6G�˘![\S�?	�/IM�B*$'�U&�2�d�U��	��d�K^8��1�l���:I ��-:t�=��%�]��_�a� .�ap}����.~��~����g�[.��ӟ}���>��S  �� �̿��磉s��Z"��zGK n�M�oU��>�wo�k~~��G�q��b����������U�H� �����N���9/�5g���ہ``�{ �qs�4�j%�\��\�0e��<|X ���� %�T�C�v@���� W��̪-��ݑ��,���%�^�5�1+p�󠔿l5"'I��J�Ǎo��X��V�C����!�z 5 �p� o�m��\�WѤ��I�ǍB׃��Q��@f,�E���}|�����~uw�ğ?������ ����ruv9Ĥ/����E�U%�`����m��z����r�.���{����yϣ�Ϝ�6�w�v�'N�����D��p΀�� /f;e\#i�j]�x�{�wb��적�Y�disTG�D5��ԭ��%p�����ߑǓ�4�)O��%#����'A ��q��3� ��D�Op(�%Q("�s>BL�	��?��8��pI�@�\u>F �ֱ@"W	h+ � 3�0��$A����|	?����-��<c��/A ���qb ��l@�2"�H�(�.`�X"Ĉ�H���׃���}⯿�˿�ۿ�:����0�X2`��\C�-|U��h��% oXl��碾��o�����S;;�[/�?{�g���D�yQ 8�s�n9m����e�H%:a��b����B'cmJ\F�"b�.Y�j� HO\���'
x�IF�| B�c`���U>��}��q	���V�8� =�4�P���GU��·��b�.#6��(� ��Di�`�c���X���l���)�� M(X�1@!��4A�I%D@L�Y_ee6�X�N�9���E�Ё|������9�s-p:Y� F�嵔I�5B���Rq1D�����<����������O?� ��$�Ac�]���"�W59 �遆�;Z������ss���X�U���r��w����N��x�-o:u���w� &休�6�q��2_j�c�Q��]�T/������)����Aጴ>Bᬂ9��/eDڬ�\��V���P�Ƶo(Uό��G��nz��ڥ�Aڬ�Ǖ�z�ةP���L�r�!t���1���P�~�x�B���m�ӄ�EO0;[HU�'o�Q�fPQ} A)|��A5�;it�0Q�1>J��@��0n�y�9:�U(�����AZ(�^8���GNk�O.`0b\���=|���?��j�ĩ�����- ���/�����/����x�2+\;R�m44F���� 4�!p��?W�oN�[����[/���{?p��7�sy�l�bL���^J)�V�.D8߫�Nij5NjhC$��#{F�sN�srP�#ǽ�9a���qs �V������R��C�1�WU ���҅�;wB���-�!F��OF�a�quPń�܇H��<Je���U�4���}x�Y9�`��"_^��=g�Fp��ǀ�:��c�x�ヶ�h�QA`��A�)|'"Kfm�du!d�"���ء�a��N!�1��,��`�X|E��w���_����G��;���[����q-+`�Kl��z��6B���FK ^�0�����\�g��*�� ΄.�>u�Ο����vj�C�RB�	�P��)ޣd���Ѝx\�(�c��o�B=RU�Di8¸9�O����w^��D0�f���!uɕQp��@���{�#l���E�W>t��p�K��6z�Ag�}u�c.� (���6i@�d<��<n0��Ev�����=� 0�(I���q�	� � ���+��ȼ�h�#i[j�E��7F�ж�	1sGT���3�$ "~�TF�Ҋ ���%�ځ�A�HB�]@�qy]������?y�/=��ի�Ŕ�^�Z��y"`��+&-	h��% �[l�<^�oj���4���-�=��=������G��I���]7�T=���5�:FJ�:OO������T��'��{e��
�.�7@ho��l7 'Y�#u��~	G�n Ҹ�BR���b̌��p�9䒬�!6t^X���P����} :r�t�F�����d�@ͅ�xΥR�� ���u�AZ�<m@�%��J�����(�)TD�E�&g�q���RD��	��f���؉��(�	�b��됆#L1�H�!��8�<���/m~�_�ǧ~���җ��D��m�`K�h	@������v���&����������>t祷?xש�z�aaF6%�
ꚧ�4��w��q5�u��Y�I*��RW��9�"��[��QA�	%%� @�'�l���$յ������\� �?"��SW�"�:��0+�
��Ra$ �b��w�%����1bȒ @z��s��X�X5F�I�����z��:Xw���އm"T�ʮ�@�#�h�p��`K���$�aG��IL�5or��H�&�"0��ʘ|���4��V������������������ݏ;�gK)�B��$������Z����Ͽ���sa�i ��sg����ޟ����#�H!z�0&Xð�'r�ޛ������4��,����;ׇH�Ұi�@��>D9S��zA��Z�;��YaT��u$�(.x��)I����ɤ@) �M�x�gؚ]���͌�6zLE/���y�q�22Ƨ.{�Ea|;��#���yX�y���5�~ϲ�5����яs�aI��`1���E�|2�B�%��9�T�`6��M	PP/IH����JI`5�3c�G �E��4�H��W&�7�X� #kp���w��3ϥ�����O�+Ͽ��z����
����4����\�́m�>�?W�p�y �
�6 ������~�[��w�#�<��]���9�r��< p�a)�t X�K��Ku��G��/�ԢV���C���c?H`�@@+^	�4�l�J/�`0�+	��.|��#��GW��@�w*�_J��l��,ĸ��d{����-�{uà��s���JDuz\���8j�܇Nt i�� 9�k�rT�ޫ0R�r �(	��N��G�FT��u�d \��MMhL���U�a-U�١-QjT�!���X��/"튠��EY�Q��dd��
`Y�4�4���Q��{;KW����w]���}w����_|�+#�5��>��S���cJ��i��^���z� �����c�.�?���W��bC��
�����)�w1��g�r��[o������=�y������M}#��eOU�>�`X��*��<"D��S @��M�r\�7�!̫?�y8���W4b�+�BII���@��!����ҧg�
�B�Z��ڷv>J��|����A�H�pދ��y��}>�[�Ch��ϚD���$�,��E[�G8\X�wr;"$�%��z��K��W� ���<�]q����U�X�]��-]�d�@�&F��a�����&x�ak8pe�
At��:�Ip25��B��R�� 	}�..�u�#� z �����|�ُ���������<a��j��66��U�� ��x��o��<��s��bq����9�t������ ik�y��{�q<��5�������G�<B�#�$�q�v�*Z�AY�Qt	R B��:�Q�J	vd���yй�({���"AZ5�Tu��T�E��R��"!��������O�z��Ǉ^��h��I[މ۠Q��V��5�0��@x�
���c���&��/%[�jwl�T�jo�YM���E������w�='�蘡=nW��\�u� �*c!�C�"�9x/:�|p�*��Y2BUG�����$N?�N�U���#��.CFa�现�������?���i���kI�F�ᵢ% �0������kf��'���Ïۻ���XH��y\!��_�Ǎ*�-�J�h�>� @�G�U����[ʺ޴A��Ei�U�R� �x�l�["�$Nv����w�� ������z�����z[2s�*<�s�! � H�>gh�B�����M�@�����)q)LKQJ־w�BH	�^u�x}�T�P��*�'�`X$� (���L�$�*����:�(��H+�(Y�j��<�G���2h-�)���P��ĨFC�� ?�o�A>Lmu4��6����$ڒ"5.b�_f)�����b��~���?���ͧ��ܗ�ӘG���&�h������z�&쳀o��3 �� �H��v �y˽O��ч�|��Ϯ7�����p�׮��B7[�c+cIW�B��a�T���3g�����|�T�:�%���y��P5y���넪��� @ެj���&�n�^+QI(򸖑7u��n�R���K�I���w��緍|�E(X���T(Nx"rL:�P�q�	h ��EY��n�y|�T�6ǯ�>�$Iv8���N3�>�[C�#H��?d�C�~������~5�I�&B���N78�����Cޢ��ɂ�N�@Ջ{dN��x�@������,��0��ЃBĘ�S'��O�[.���ܺ�ݿ�3O>��dj�Z4�S`xꩧJ�4���    IDAT�h��᫡�M�g�|���/�v�?�mo��[N�{�^���#����E�R�v4��ݺ��K����YuQ�'8�����<N=[rQ*oG*�K�2��=X��f���.�qVWe�/���\�H|質�eP����.N�r�Tp�Bm	�C_�#�H��c/wI�8�ۘǀV�.2�軥,ə� X���l~߄{��k�aUx]}/}x��C��봁Q��@.��,�pھ��8�M��fS�_� �X�&������v5�a���x����EҚ�v�,:2�I�h��J�@��Do��A��a�{�b�{�v�G��O_�����̧��>�s��0�h1�pӣ� �昿�^M��ǖO��S'O\����w�.Ct����4�`�ku�<	Uo�vx9Q紮w5�qEw�~W���V�����J����؉xO�l�w�¸>���,4P1|�@�K��#�k��A�l�@.ȣ,��
ѪS�" ��}�ۑ޳���ޖ,˄tΝQ��vju,��)+�C�#��t-��p�8�9'���F��jke�E���3A�T�0
N=�u�E�J���=A �6��X��
!Ǻ>^�/�����Mc���� �v�
<e��r& �`��~�U��	-#LtH�	�����Z-�b�b�nZ��
!�e�x��j����/��W����0�ǫK�7�D����Z _3��o3��Q�׌�=��7?�oy���}�7���\���Ȭ���-����v��l�`+wE�=5.Y�MU�K���7֭vE�qșJ< v�<>�2?��ߢ�� $����ԫ�?��ŁP��r�A�����'�1�.��p�W3�̬ko%(��#_, �n
Qo��\![6(I4fl�֪ީ�W�E��T0@���F���{aJ���6�7��3V[�z%z�b_����Q�*�ɋG3|��Ӈ�&1�d�&	5a`�	��I�x�w<P��� �dѕ��z\쥭d�R�q(����Q�9:���	���r���'o�o}�/o���ܙmv+�^	��������y,��G��U���$�?���������O����N/�Bj�����I &r:�&#u�v�^z�Ρ$�!wp��P�}��9O���k��6��XR"+ �0FE�c ��ծWEc>�@��i��9����Q�>幅��s��kR�A�X�z�� 9���G��nY7��؋�=���rM8ȑ�����Ë�a��)�R>�Q�������]��e��ZE�j�Tv�v�ڗ'���$�s1*^F �%y m��
5��N���5�)���,�*��9��� �C�� �G�<
�~�25`B���pjud&y�>`X��h����->��}g����7��򹧾<��D����k�ל�Q�-h�c�ꏘ�z���� &>� A�����={��C�>��w?��ŋg����
�A��=�{��ڸC�ˠ���t|Lt\��󑓞�#/> ҫ'8/�Xײ�Pz7�B]�����'-g���b�{rF�'�qPӘRW�Z�+t�T�����h"���X�jt8	��ۅW�:�L���5H	*�K������W~W����y���և�e�*6�`� 騢*�uf���K�0��m��=b\^#^�dE���? �Ob9�D�6M`�)&������\J�4�z�A��	��Y��rM��� ����vX�Ǒ�c�_���.ٮ+	���E_⻅,���J����J!f�K�R�V��=w�������{��>��O�aH��s�KK�'w{��&�i���׌���6��E}�1Q�� �� n������{��ݏ~���s�w�s�X���Ez��� ��)��>ƍ����|k�߇��8�D[B��@�w= ��uDpqrA���9�n�n�$|� ��m�#��/�'�ɶ�q}P����ն��
5X�za1����'}�;��B<���>�i�>F��{��Kk Dx�b-���r��;n�4��o=jR�C�h��k�L�V�j 6���-{֏F)rl
DL�}��v�K�$%ֲ��:	��MX)I��S+B�$oY��0�A��}}�%d�&VJ?��i4��9I��P��NL���|	�["d�x�����8�VK7�}�-�%���;;��,�O����|��w~����/=�9��h���EK ^�������B�߂���o{��'�x�;���~���>tG��p>"��.��nq�rO��a#U�ͺs9U���
ļR�J-�X+aS�P��s=�9oj�#�i�Jb����Q�5ё�n`\`����O��F3˺a������I��*�"��>t��o�T�w�QD��E�w@!����j�k��r�U�EZr_6�烴B�uR��%��Q�-bDd�}�����x,��c�x�F��dW�">�������� =�{}��� 
��X��+sz�n����m)�eS���E ̘�"L�%����n���C��b�1b1�1CKF� �z�ő�6�n7�5�6�	@�+���/�Xm6����ݏ�;/��߽݇�ֿ���38�	���Y��hx�	@�4��w�(�f�s
�o����/�;{�}��z��b�-�X ٔ�|�H�r���b�W}��y��C�X� �m�E�`|��Vx��wK5�M��I���1��5�J7 	A��N�`��m)�C���zx��C�^��
5/��V%�	]��	�be��7K�(��%e���;�C7ج��i���A�90xr ��E3!�tAF�� \��Ap-�9��p0S=7wȃ�	��/�%�*ҴqA6ʾ���MY r}�䈼�0�FG$
�$9���,�	�Z(�m����=B�c.��2� 4i� V�d%IP��%�I[�����6t#"��:���H��H[*����>��P��A��n�؋�sN�ᔑ��	<�������x���������O|�sO��8�� ��L<�i��
Ӵ���P�ͅ6�𪱭��o�~������[/������{}ӝ;}��;�"�as$j�a���e�-�R�ds�l�3sQ�;pI��tB�h�U���ӭ�!�.����%Nf̡pR���0�9	�e6�n��V�i
7m$a �²���%g�q��Vy�ʿfL�g������y!�$z�a��hB�� �K����^�HW;5�a�ܞM�ۈ����*���R{�`k� 3�6�(k�M���J��bV�AV�����BV1���b/f£��a$�g� ���٤�7#h��U�^y�z'�[Lk O��/j�@h�A��W0%>�p��W���YTh��#.��^�"u��*AΣ�9���)��^|Z�7 r�$CgO�������������8����m ��77Z��U�����ô�g��7���s���}�O��wݗ����]���RZcX]ևR�{�d�=�ȣ\�,t9"
@Uܵ��d�((��ʪ�&��hB�^`A��ɭ�R�j5q٤ZϺ�F��9��� N0���|��� F�����mِ�
ş�ZEj^G FM���O�F���
�D_��N$�%rf��\��A��V���]=��:^h{��ݗ�^7:�/Ir�b��lb[�g6��>�����mJ�j8����%�kX������N�{mK�T� �������o��kUQ��ac�БE�`Щ��DE�U�iΆΙq����y��0lE@��:���b�'bԜ6�5��w�[�z��_���H�00�ml'<��sKn���1��;�,1��g0��np����~�#|��y��A."�A{�	��>�(��/�-O �䴒�N�qs��g���i�BXj�''{�����9Y���	��Ob-������M�Np1�؝ߜF��5ћ�^���V�Ʌܪ��}������|�,q�� M:6��q�ǣ�TAF�B�k�?n�������㜇�2H:���4�/=p����P*i�t{��>����I;(�T� �E-�}z�����^�91����>a���z|e�!TW@B}��̍\�D|����ߴv�l�Q�0�SU,I�[J�Gbؤ�?iR@y ��)��E�����@>`��Y�~9��60:�D�
�����AN	����g0���'b|�����K�������̼-
<�>���CK ^&��?3��S��`&�������3?��m/���a���qX`�q#�PQ�p)X>N�n�[h�Xz�y\!m����w����1��� @��*b�8C��n��VG��Ux��VC��+�Y��lQ����V����Z��<	ĶW|�A����P�����]/�ߡNd�L��U���9Ѝ���-�	Ϊ|����nѳ�K�#��
	��h�&���O[� �R��MV��`G��\��N���n*�R��TH��B8��!豝����P�s�`�*�|hb-@@������:�N7�����t���c,����$�������-`��R��%�$�ApN ��eJC���"n��Clև ��"�\
yc����o۹x������Op)��O����6�ps�% �b^�[忀������ p�c�x�����＋]��ыb1K^���l�t�}0�W���%υ�O�i�޿P�R}�2(U��-�d+A>I�P����(H�^ ض�i�M�����y�\@�C5k�]F�D�֣*�	 �X��:�n��B�W��3P�N��Db�[$�x��	�P�ޫI&�>n�x ��`X�1��
YrD��9I�ԟ@�]�L��و�.`�]��7b�5lb�7ن@=6D�%��|h� Z%ὺ��X0�L� Db-��&}jE7�ч<o"����"I�D��i\k�.�C�`ڸ�l3��ޫ����.tU�)������׳���:k��$0 tK��}a������%�'{xM6JNQ�[)�rr6k��$�}wy����ѝ��9��� C�<h	@�Kp\�߼���E(�ϝ�������+�]
;g�|@ڬ��W�x[�z	�C��d�'�<T��،p�l�6�)-N��q�)��	}��V��
�&�LtDl��� �B�W��k�����p�n7�?���m�+�,h�IzB�EE%�S���D^_ q��]&R�����p. DI0h&~Q�$C9�q��ɩ�"�� ��{��R(c2�A�K��׆U�&�@��냴G�u�eC֣�9P�U��t�Y�-	T����T�B�;8�2֤A�w��6<0	i	�}�}4`;=�2�j�6C��˴�H�������4�]���x���@JR$v�V�r�M�"�LàΙ	�_"��{o]��G����><���|�*�$���iZ2pc�% �`��*�]H�o��% �\��������;�~녓;�߇s��iX#�MU�2�$��T�9��Y�|�#BJk��V����%8��e	�PO�Q?C�[���N�S�T�<[,ìTt�ڬ�l��׾8��?P�ߜ	��ۅ,%� :Q�Z�ڊ\�����?FA��t�O�͋3Cu��W2�p$mGp���#��^�U�3_��g	�̀#kd�m�^ݎNX���� WS!c8l����-��dor�3���3����ݱ���� ���,5�U��,	"T�I*j4���3����%�K���!N�U Yj� @m%\�\��)����97J6��Mv$�)tK,wN��i����OV�6��	4�L���1�C����N}�K�����㘀����� �R�����������ɓo{��w��g~�CoV��j3�z���گHg�C��J��q�<�`�:Re}v��`��$���Z�J��&�E@T��9vb���5��Z݅N��jq���U��Nب\��rt�[��ء�w�"8m�C��t�T9���Fp븚s��Bֱ�IĖ����S�h���|He],�t��(\{�ۤة����j��	�9�����g�N	�䜨�~�X����fe �{ A�k�)���n
�Є��pǌsJ�dƼ�%n�
����{���X�n�,0q%9��� v��Md�����$�q�~�"�V�A���&�D��.���ʼ,���:Z)��ǈ�ڦ�c�rB�|XֱД32<��ޓ���-o����O?���724��EK ���m��(��Q�'����w��=�Ļ���g>���!�VW�A����Qh~�w����G�V�����5r��N4�[�X���o��
Π��u.q��ب����z�b�+	��Ue�N�u�>�%Єn	"��y��lb���1����3��5��2��M���q5�pe^^�.��5��q�R�%�bW�\��%�)���&E�j`�b��Q��#��>����O��O�O��;u"@G u�A^1��ے#��^��� $��b���$�뤅mJ���,�Geu,y�4��`	f�
�v@��{�=��^,��i��Ii�˖P�G�I�7�,����!��.���f�$N=,=�,�e�H�/N�{�>��B&���H^+�B�<&|׻�>���g��j5��EB�h����� ��8��7��	L�>��*������˟������\����\��z�ٜ�*>��:ᕩ����	~^����@��Z��)�̎n ���{���22V�I�`{ T��5ȕq�˫1���x�u���Ms�dU���˱���z�)Р7�H�!\����Q*� ��;�n!�3�qq���F��X�1�l}����Uil����li�Aΰ�x�[��צ��p�%BfӬS�Z�
?�&�qQ�@�I"�z��I�D:�4�A*l�\ u�$�i� �50�en$� �Q�3&�c��V[o����� i�d�W6��G�v�yΖ]���d��
�<�焍�B6S��(��b�$B�1lV�{� ��(���o���=p�_�Χ�z��8�	�^2���GK nR��
��[\����=�_�܏_�[vqu�B��և�V�4�@�2vF���9��,���\P�V�y��Q� U�϶.wZ�j+bm��|�E4�U��W���B\i �~յ�YּC��D.���e��dK8ȩ��i$�x���5y\T)�t�v�wm�rJ�����IP�x�W��aV�j�+2g?U�T-@J�KE�д�����3�	�B�0�Ե�׉
��&1�D��y���Y(�;�e��4	*,��2���� ɘӱ��U��E�ݮ�;R�L}y�Q$�T���6*��F�>Y�=�j�T�Ay��>_y۪/M9�$�2u�����psT1 �6���/v�5��8Z�l�����|rF\�b�eG�;�����O���!��0%�~-�������ߌ}�~�!b�� \!���}�w��}�] ���sY�;��VRIB�S+��k��4��D��I+/q��%y��Z+3��������:�z帚����R�E��T�E�hUO$�8y�h�\*���fm���g���Бb�kt#l}�=�4�u�k��H2������n���缾�.�qu�-�c�:���|��22FN��I�z9H���
#��#��%a��4K:��6�7���\m#0�� t;�=I��Qƍ�i߽p���DQ���oaL3F�V�md�]��Q�9J/��lQ$M^�P�ȩ��aǭ�w�;j�U���ɩ;�
 �3@�U�'�Ji�8�7����m���2J
:z	�"A����Um���cs��i�����{ץ�.�����R
��-���8h	�M�y�S������{Ϗ~���C��8Z�8|ዺN�Է�Q�kp�l�sB�`b+�ŗJ+t=����s��h�Z���� 9�:P��a�:v��VU�./i�'Gh�v�*�¥�`հ��;�ָ. j�c:�� .D����F��q�A���t�=�a�y�ʳ��a����t�_�3$89�j�m{B��Q�F����jj#.O=yS�k/ɍ2Ϊ~"7�    IDAT��7K�H��_c{�ؗת�i�݁�;��0��e!��K�����SmCQ�D^3�[��Q4��I��=1H�>�|�FCڢ!�A�|�G���������j�T���Y�Sm�x!�:��C��U*��T��!���q2M¦�pS��jO �a��و��ϩ��.V���o?�?t�����ӣ"�Av��v$;*Ӌ��o@��&�e��-�1c������?~�~�{�ŋ���*�a�'��s�f_*�cֵZ�Q� J����>�y�`�\��9 m�������W�� �Z[*8o�o��N޶�n��F�Cƽd��f��zc�}�^����k	e�'�<��ݞ�̄1&�T��������0C�����N	�a }m�-�u;�q)nqA��dl2�4C���竉P���z0��ٹ����-�rX��I�����t���59t.�]��e1,ڬ�Ǖ�.�+�΅k�d�cP�@s��ʥ��Z�����		��Z]��x��W rI���l���3^�(
�>7sL�A�h�cI��	0'CG �;��N`�TF�tB��}:ᾋ�*5�Ü6����N`ܬ��23��.v���{wn��O���xyπ�i�}���AK n�)�y����6�|����w~�w���[),�as���=�N��I�u!����@�a��.i��Ή*�+%#v�ҋW`���5S�t���e��D�;r��g+A;�Ȑ��TѮ>�ƚ�p�`������'�4)�*E�џ��j߹pA�� ���U��vM�����%ױĜ��I���`N+T��a�P���m�R�'�y�D�VݫOM�-�2�ҥua��Y����>E5��ʸ��ME�>D!�u�Ә	�{�$�Oi	����{�����U�6���<�Y��ʇj|�"+s����Z?5`۴	Az ڲ@f(�_~EIG>�V�̒�z��bpںaR�)L�Y���-�{�<�>����d��]�e[d�C���ȣh]B�#k�С�������}o�g?��?������	0�[��AK n̃�������T����{�y������;��5���(i]����U�b��븾�l@ yW{���A\� �¸9��w\�h0�hM��&�*���ʝR	قL'�l���h+g���/��z%_�I����1�4����x$(��v��n�S���:�wU.����q�D$0S��M0W,�`��&ȥN0H�YMu�ӯgl�u�n�����RD}�\B�zg]<Tl<1�AS{<�2ж�%hv,�[��X&<2\�ՆW�jq+�hj@�r�b>�8�!�TO�������2F�f�kg!�떐�3�����4�X��ZNҢ��<u},��ac��8�*�oBJmO��*���C�E;!���Ptj�Z%��w�Ş��V�> c}��<r6�`0���<��+���;�n�t������z��� 4&���� ��x��o��[�U����?��|���Q�|��M{�냙���v��t)��G��6H��4�I7,��df��hb#�ұ=��PjeR�K�]��f�Sk���D�L�7��V^�,ǒ�:�m�˵t�먚��V�;�K�����AS%	.U� ����\�'0�^���c�ת��9璔%$�J2�h�arRi�'m��t�j��i �U/P'�k)� 7�earX��g��^c��H%I&�:B�,�I`Ԫ��N�A ���$;�17��P�T�A� T��P�B#(������$@�"�{J]�1�_D����$X2a��yL{(�ic��:(� �4�{Z�C!�`f�2�彞�5�~�_���g�$C\���p$�rZ�s|D����6��sq��w�}���ʉg�_!�T�'xM�/��1����EK n`l�mo�|�ԩ+��u�m?����?���/��5��U����K�Jf�ud��,��A����
sQ���k�U9�ȉϫ8	 ���Ԫǂ�q��%U�����.��~��%��B�}Y���\t�KSu����`�ǒVqV��J��ƺ:?/��<��jFϪ�M�����*(�\�r��5��$��l;�BW�N[��oEWg�����	"�c��ߙ��hr�����J]�⬋�l�b)c���"�lb��
���7r�t:���o�	���,x��4���aU�CFs`�ڦ��cr�d��j�mzB-��3Ȍ�P�y��#��%;ӗC��{�~6{hyz�E�cl�Y����dua4V©����ҸA�jdH��w�i�[�:;L�$�qQ?_���L�03��	ջD�<{���Y��O���O|�����l88\��F����$-x��% 7(^)�WK��gμ�g��O�����Tde*�qs�n�d�bKNB���ƶ�u�}�A�ŝ�'$G�����k��jQs8�"ŐF�_��~���1yNi��R+VV���Zu��ju�c�v�*�m�i���̈��~�ן�ذ�\�����0T�{T��}��� �s�SeoU9��`���FHG�ؘmh��i���(J�m���b��9o�ZZ;���}A�e��Q�p�)����Xg��qѨ�,clD�L�&?�ԡQY�qP6c��/�V��Z�=�wp��0��@ɐ��S���!9^6V�T�� ����gƞ��!օ@�|��eU�3µeRYU��#I��Q�E�C3���(��(����Hb��~���(d1�g��ʔM��\�\Fy���
�咾���rǿ��_�Ճ�C}{Y��'�4������'!b�[�*�3gN_����ǻ@!��|쐆#,�Ϣ����z��+gQ����{+:CotfNR��m/���L]t��������Xl�
l�x�:��������ǐ������`Kk�pSwzc(��[��F.޶
�[+IT���nK� �u��A��*D��
�U�.�@H&�����[�����#�2���4�^gȡɖ*��0D������͖eW�ؘk��Ϲ�ff=��$�[��J�^<�*���4/!����8pDG��aG8��	�	������bwД�i� *УT��{�9{ﵖ?�1��7%�@%HwC*��=��\s�1��Յ��@��|ͨ�|T�^\q���ȮOi���a�������"�ѽ"R�%���Q�ݚW�iv��ϓh�#,���a��v��N&A��sd�]��.!Y'X������,�B�A�F\*ʨ�S[ jE���e��nH&�j�RB�p����?cv��Q�R�z� ����0�,nݼ�~��<����L�|c"p����u��l�V=�m����~��7��3/�9�B���V�	��]̗o���K��l;T�R��a���C�vX�9�)e�&�����G�@7�a�A�zF�xΜ���T2+`��q/�n+��>-�A=�����l�����  �4B���57��`HH���8�H�?�D�*�n<: �f�	��V���@�!���^Ѯp��:�9��V �}~��8���F��`�ïS�8<�ZAY�0 �еx>'7���k����E2�� ���/%Zh������-��+�S1����	�|2�3�a�t�D�l�$n�V������(��1P��J [/~YVȡ0| ��7I&�����R��`Ơ�kS�y��F�AmN>%"���Giu9��Z G��� �!%O�a����,�J��r@wX�K��gn-<1��y�~?���'?�Կ���o�{qy���
�T����:�g����o}����۷o�_��O��~�O�Jm�8̈́��k�/�D�N�Z�K�R��p'�H��
9�m�L,]ޕ|�ruw��R�Ԁo��à�	(#�WМ�7�|)����jmh !���F�Ĭ4�*�O8L[��gF�d����� cF�U KѹG����M���K\H	q��F6]�gW�C����ߊ'-��o �0I��]�,��c��v-���Wo�����K	�����
� Z��QHק7x?;&���b��΄�
�ݺ�S��!y�7�������1�Ak��%�ԡv)텞C+h�[C���~���������%G�7V%�oq�<	��P'��/��1޳�_%���R�/H��9!0��	���t�r��rD�D������p8�J��rĴ;�2_`���P�c���9�g_|�����_�w��I�6�F���:�g���m���������7>�⏜���T��,!R3�/�᛾�Q3=�3h9�}ܝ�,a=ޅ��4x�H��|IժR�i�����_�ثt�܉�Bk,�y�����ɭ�:��4��1Z'�w}X����mȼ���"�b���D�E~����xB��e��U��Ş$�I�m��|�85�/"��m��D ��%�|�Q��8�y" �E��|�lp~O@��G��0yڒ��H�T%��k����y^ '2Vi�7�د�� "��ۦE�s�� �V1�[Q˄���m�n����$���B�Pi�����&c�s��ɓG�@�DB��"" &1�������8'o�; �ryL>AP=�5�,+����q��*��M�5����2_�а.3�e-�y�f��>����;r<�����S��W�z��������w���v�/`���?�iH�6`��I��pY.}�+e��3�4��9��%�";�Nna=^p��Po�(��o*����G@����ʹ�¤`p�Ys�wY��ʹF2�7&�~Vu���r�Oca
��Tp7i���2�QOܗk�2���ɫSVVh�q�s�:8�y[�1��~B
h��=�S��+�ɇ
��~4�^�%hB%x́t [�ҵ�l�2���C�!��ӎ��xJf=9 Q��!p4�w�l1���#�=!,��Ā�Ie��Zj$�%hP����9Q��#G��5E�<G���&T�S�	���$�8H���X͉�È�6��A	tJ���oDx�߈�"�k���'�s\g#�Tض�VAr�NK��H0�p�\�J>���b$P��u� �ѹ(��Xk�#�L�����x��wp���" �I���]' ��.Z�Uy_��h���~�#��o~�9�ܐP�K��z΃�C��1�ǻ��<���|���������	5��Z(�S�ܴdPB�u�7�wd��[-Θ�n�
�N�k����|��<0��mp��P�`�,r�#���l���ʘUU��D�s�}N�E4�&OC���d�mD�c�����A]�-& �[��d��D*��%s�ah�㗬��V�ޏO�Y�#��)l��C��*H~ܝ!�S /��M2
�� �� 聞�������� �,����q�kR���8EfLB *�1M��&<y�h�D��Z �0���%v%-l>
�D��_7�j��u����=f�#����zo;�p��[B],����Hck�S�0�.3���Z�H8�r@���Yh�=��)�a�/qq~��������_ٿ��W����m"�����?�v� |o�*�߂��y��?�o~�>q�ƍ�py�.$Q�`�/PW�7'��{��#+Մ�x��
RJHy�qw�e>�h�S�W���Qo>�]8 *`�竊ҫ��[�JU���|k$����6�m��Y�݌���XX��]� �����aj�L�% �)3ao]~Ov�V�6�`'E����#r�%��pM����\QK�w������OW��JEE2��?')|�1��s³�g�w�)���I��|=�:G���4�)t��9�BK	r��*t�ٴ@{��/��q=3��-�DI���ST�L�T��Ȩ�(����Ѐp�c�&�"�<?6�<����$
	��E��T����mP���x����F¤��U�C�*�ʔ��O�#r�Ė@k�E�,a�N"I��7P���m�K�V3���_��o��^;{�+���^����:	�����{t�7�O��%���n�{��_��O>��#���7|�6�0�`�t#@}l������X�#j9�6��̝ŜY�}����L��u/n�ӭj��g�J~�BXb�dA˕�����슄p�f�KHAJ�h��UQU�e�ȦG�v�� ���9IfAT��
ɏUm��^7�L&�ҧĀW�!a��F�p�y$ (J
�q4�Z$<ӀP�7�!�����+�BX�%�:�)�13�`Tk�\~�{�L�
K@O��vNmmY���$<��B7�8�ng�F��\f�Y[A|4��{��"F��/����
�%Ĥk�449"e�Kb��ц�S�M���Ħ��&R&6�����_��&RԚ�D���-�I3kz%ykI���4Ҁaw� ��-�>�g��kǻo��3r�|��%VJů|�~鋯����|�|�i��$��ڮ�����tW�G���}�3O�����.�B�u���`>�	K��t7k0c�7`q��rÃ���TUu3�:ӟUZ�[��L��)���@^�����	��`c}��R_=!���fw��`ӈGρ�ݧ����8�3��ÿ���E��ju��n̓��iɃ!�X���.cM$.����[m�VB ��&�OA���dW�o-���LN�K�vPB�I���w�Y�N�C����U��(!M�#&����
 ̐ �Ë#G`ҕ����Q��r,�H�`z,�Ւ�DI@��4- ����}�5r|R輛5�P�	xD�Y�G[BDβx����D�b��K�G��l���d���o���c"��F=*f�91$���Ј��Ov2��Ҁ��Pk�|����+�"�>�VZ���i�/��n���|��/����:	�_���{l����cp��S �~ϻ�����ܧ�;/N�)���Y�X��+UGΣ������7���� ����l��Ԧ�c�+G�i���Y�F�g��u�`�<�Pb쉁L�/ǽ6[�.D 6Ue
R ����b^Z�#�<m���Xpa.�$B����a �@�]i�0�X�v6�Z b�n�� 8xCH��7�>?��&D�Zo�ں�a9a�o�s�1K^���[��x���R���[�$�o4�c�L
���'+(bԢʟ�EϤ-уi�m�A� ��{��Ye�K�@���A)�X���u�d���e>��+qlČ��pO� ϱt��"5"�3� }�*"g�k����܃/Q����oKɏ�r���G���I�O8�nd~M���٥�]�y+�r�J�)>)0L8��>��s�_�v�upo�	������qO��ܻ��Ŀ���[�Eq=����aº1L'�p�.�r�-��$�#�='5i�;��ˊZgV�ZU�wW�`QÃ?���)A߽���-��(�6pf ۆ��l���[ɒ�E�.g��蕅�e����w:,�j)%�$�
>�w���*|���7U�%�?G���s�	���e��*�_�]�_�l+r��V	1�O[�� �Es�� ���/��RG4I$S?@D���z�5pi�VW^ӜF��`���B�B�Ц��7m��HI�����3�Wb�܃b���P�˨�K�Q'A�)����Ł�G��(b~^.��|H�m�??<�����|�T�9��w��@����B�'	n��E�k ��2�����j��َ0��R뢛��)R�X���&,�e>��k0��%�݉���K��3�/y\�����c��~鋯_'��v� |�l��?�	�2���]ϼ�k?���M�>��e�D�+�g�x�z��³b9��*j��_3�z���<��\.Ѯ���H��E͊��:�Ե�4���[��E���J_�ߓ~��x�u�}ܩ��m�Y-{�ރ��E�2"N�P��ӝ��P���f�.Õ���M>\ ͅ[,�9��}�J���m�<�!�W���'r�Tf$2b¸��jIpH۫j�Sx[�?!8;��j��N+]���� b#��Z<��yBs�r�`[�G��1�mA�_YQ�9[_�u�@�T��뀽zO8��.!Y�m�BAɒ8"]�R�S����*�D3<<�	�)��+T�M�    IDATG�4����Dq��"A�C (�sD�Cw$�"1)"`i���,=���������uu��4����r�v'X���q���_��ס�x<��_x�����7�^��ׯ���s�N �G6�_�{���s�z����?�>���r���b�ΰ/�:4��(.�������&D*����V�a=M��Za����%�7Jf�}���-����O�s� �[ȞO��+j0�ZEN�ӞX�T�޿fo<���c����/�2�Q_� �f� ��!e�\�0��Ǳ�S�?���RwKɑ�&i`��H�]T��Z�H��@R4�Ub�/9q1{� �{�
T�ץ����X�,�<�0�M����p�BՈ��5��H�hw�����PVB��W��N)3�:�.GZs�0����B�Ħ�Nz{F��)u��*B'S�Qp �X��J����AדOd�<���6�U��A����s�̓�m-���\�ʬ�]�:�lps�R �&O�����U�ؖ#%;�&8N��(eE�|r��xy�IO�Z1��N���_|�}�_��k�I���]' ����7s�S����}��/���>��:�H��E<а�����c{�,X�;�5'W���ಫ��Y�"ew�[狨X�Cn���9C�+c�b�+Ol+4+�~��%�/U��y�*��8ls�j�Nx�B��Xa�����|B�����j]F�C�� +`�5f��(�Wk��P��lx�W��C��ǝ�"ҍ�=��xݯ�a]���`3���)�����
P�%ɫ=~I�p�}j��f2�����n$a�������9�;��PW��}�R�~@�?����?@'Pn
p�Ī���W��'A��@X
u�@���?t����������؀�|����k�Jۧ	�:4�����<Q�Q*�|6(.��ĵ�֛�0���>%�lk�,FU�qe�n�{G�)�e'�Cz�i������CD�&|���o�џ�r���$�~ۮ��|���#�����3�}�3?������Å/`�Yҥ.he���� \�sZ�N�=j-X���=C-���� �Ң�ƫG�e��vT���R���U�>ka�Xp!I�=�7P7�d��HV[��'��zӲ������}�aC��W�X�4�q�
 BK)z�n@#���U=�Kh�H#X��H�̜X(��RV��į]c��2Y�3�NW��s�V��q��;2��5#� �
XY5l� ��П�h�\*"c���5�횲:<_�H(t�_I,�T矫V��tƤ'G ��t����.H��,n�wO�4�nέz��vc/�`<� �s�P	YY�����7p{����,Q�����D}"qI�@j��@Ԓ�$a�DE���\�a�G�����6��`�pr�6Z[1�'؟�Bm�n4�<��{��K_|��K����v� �Ǜ.��f�Þ��/��Ͻ��yq��$q-%Ʊ�aܣ,G�制��Y�.��ypW�Յ]�L:�V@-��;�(�����*��
(����ۅJ�K�/�F���F]-ϵٻڝ��'7��&9PO�������ؖ�J�-1��>�{D
����Ԭ.�ŪZ�������!��U~����m� �}?�����~�{�{�b�B�>t�N-4,����D�ed��04g�'V��;��I����t�"��G��\9҃���{;�8A�q0��c�Xa�;�ؼ��"��#.!��0\+��g�H��6$��׷�����Z�_��mso���렷mZ�xdw��V��)O�.��3��M����^��ض0�ZL��:���[�ɯ�G�Z�=,1$���&���0���H)a�v؝=������Q����F��+������g_=��������^A%��{�}����>�t1��������������?��J�~��J�ø�:_ .����	�p�b��,ȣ��,��6���.ހe7ti�e��c��e7�o�R�|���=g���J�5�X��2���μ��E���K����,�.-�Nth�58U��X�u�`Ř'���q��7I�v5C��@U?[�x���V-d��k�# ���߻�5:����m%>C� z���HB��Q�p��%�;���LB�nݔ����o��9�|p��z��8ɰiU�9�p"�习� qW��G�"򵭶ml�*Rq^���Vղ�"���-����F������k���t�W:��(l�T)d�?�"��"���5��1��4&T-ǳ 4�2�l�0A�d������x��ߺ����-��%���.�����\�?��b�A ����{����+g/��+��}�$�ʙ�����:��{��^�߂��x"���{�����~��߿P����>4`9�����㻕ðG��W�c,�)%�a����$h�:Q��X�h���9�h$5�`��cD�,ޚ <p���U��:��`��Xf�d�0{�$���g}C�Su�@Àx��}񜃞y�����0�?-�����٪��D��#�:uf��M�)�\��ᶰf�뀩�'҅�P��[�����ʙ�'#G%=)���%{V�9r&kT��i |���G�IG��ԯ��C?��v$
��S)S����C ٳ';1�	@�ut��" ^I�x?�ˣ?O���gn[B�����'(&���?K�6iC螔"c�+���	��j��� �?N�wg����4�7%��'���Zu�*��yiȡ��+jC�~·�8\��#�M�V��|_��ś �|�/���G�������W��k!��s�}����>�t�.}�'w����ÿ��O,�!��^),(�e]IB#q̚/
X����)�Y<�1����b\�3��T���Z��+f�{uɛ`��h�;LW*8�g�x 8FX7*g��H��
cZ�����x�k�x��-�^:�������&�D�b�dc�P��k�t�iݳ��4�.�)3��#{�Od l� �*8�޶Ѿ��;��{��bS�PP��9ꑬE�'��2��g���ls�I���Y���g �grP�i|O�
�5�2��|�7lP��#{_>���SUv��(�&���/�O�V��+����$�F�Z�h��u�=��2����q�����7@T��9#���ԟa�)My�to#Xr%Q����������r��w�Z�j�XK����>�����_��k譀��n��l�	�}���׬���T��������o�us9^D J��9M�eqx���v7  uq��d	y���$��t�}!��pc�t��Hzd�CPp���e�<佺- Iȣ�yE�B����I� �ZI��F=�*��k�ly  �!*ɤ�;>�L�r@�h3�xX��)���'�HB��Q3 NU5�ȂW�9�� ߑ4���zA�$�a��F�Cb�]ֹD2H�2�Q���U�ʎ�GF
��д��<	Ԭ��#*�I�Z�*��||���t-X����.�k��!�_��/�'��{�<��B���UP��9n{��i-���7c�מ�T	')��#��
S��)���ᦽ��O<�΋i��w���s��j��J�G��a��Zp�p��<�bڟE2��aܝ�y�(#��Q����)pZ�[F����pXJ���0���2##��/ހ��RP�R�_��>���哗������@��0�u��ٮ��hS�w��^}�g>��~��?���wb�z���i��\��:$������2j[���A�3��t��{����F��싵<�+�3��3R�0dT�3���8�1 ���b1�;	�����\�"�,.��"<e��EU���D��Z�w��9�ݼ�p>���_�ԥ� 4�ի�W���rYFJ���o�[A�/�c||��[�Knf����@�
)H����gIi��C�Ȩg�i�+�����j~�N��hK5" )�]k|g����!���ޮٶ&�.�Ɏ��Ac����ƶ͕oBOC`�VѤ�@hR���ۖB�H@�����D�i�%��/|�&�.П/�?���5�k���j�:_b�/h��ú���;�\B<r	�b�]�k�D	sE�u���0N�^+����؝��`Y�t�''�\������{�Ͽv��_{���`�up����up�l:���p��ߏ�#���'>����oa(QT'�;��;$����0�}\/�>8�zep����Zi�7ӈ�!�teV�'�)�h� o���U�/�� �+�Q��B��g�5��K���-�&�Ub)@��|6^:�=t�;����O~�<Z7n�����hD={]L�b�*��6�f#Z�Za�}��H�
�)S}N�J�}n�H���H��Zk���RbU/���22�M��l�%�t��3Bskl7��a�OI�Ј��m�c��{����`���nhP��yH~����m�3ш=�!�:���6����͓�����h�3z���U�b�,>F�X��t�~2&���/z�5�>waypY^����_��v�ݾ��V����6'��Az[����"B򿎨��`[/H��o����&Ԃaڡ�3��	v�7Q����O}���߽t~~qy� l� �����~�N 8h��o����3��_�ԋ~���@����e9"�z���kq��e��*e�]� �}����1��NL�˛�n �9h-z�j �4'tiP����o'z0��-��'	��[,���}�M����p�я�_�Z�V-�I�6G�HPK
��!����9y ,Ä$%�	 �Vf1��e�}*f2��� �8U^�*0���.-���8��e]��5N
(@�����i �	-��:�� ^�>�X'Q��eu�70��n��,2"��>�c �l?ySq��ݕ �ր�?��x�/���s�]~�qZ���A�9ِ{N��+$~��Xb��N��r{g�R2���s�g��.o�f��t��@��p��	�i .e9��L���̖��M2l2�:�3r�0�N��9���k������$2�2���	���L��wg��gX�㸇�`9^��7.O^����`��m"p/)�:xk���>�T�o��7���x��?�?��������(ٽ��:��kX�s�rU��'�#/�e��-�*�P�Uc-�PʑF6$�����?���:�xP+�� y
"r���`뉃W��Nx��l�����"���-==�QrPlU�������ER����w_���!�~kE3#q����Հ�xc"�>��ȉ9�_�}�&LV�.�ܹ ��
����@�8��֜�ri�Ff�i��3Gq����_a�Ҥ��ğ<�u��7��v�	��,}}G[ ��qA�"��A�V[�׾����lG�l��g�ԾEJ"y5?�i��x�馽ᇫ	�/�j��w�ք�Î`�ߚ�ɬ����ֵ߳|�S��́.���!��ǀa�ɓ������Eyr��u��1OM!�2cڝ���mo���qw�����e�:_b����=rs��c��O��7�$@���p� ���u�O����㪵�; <��>�ӟ��s�\
8ۛ����y�|�۲��|"I�,�|ٗ���:�)�8��=�k���f}��g�]��?|�gO`i�mz���DlY����I���Ȓ��Y���o����z ��y�թ�ە~zu$=�>�ݥm ����:9�ե�t����o���|�	ĒWo5F�6H��5���	���;�����"GS��l��P�j,Hwb�)q0�
��@�DSD�*xW����wM%�"d6l����1oȕj9��xFZ�\���[���9�)��F<bID��'�C�;�x@�9:J�ۨ��}d��HG:x��c�0��E���	��}t�J};�҅�9�?���E%4��2(�e�0$��;����;�Z��ܹ��Oy�r�á����'�	�CY�a���!OB&�ˌe��{�,j �6<��~���Ο�Zk=�# �v�2����ٮ��M��^��G���S�0=�#?���?xc�O�	Rp��
R��uڠ�����u��3�[YBHD�D&�i�d��^�P��s5NF���E��,�R��1smz��4
�qϗר<�`�۴��Gk;b�^����g���z��Ij��� ���1��_]�����w:>�D�6+6S tgC��&2�@�%�׵U'd6%��5�Ʊ�֨��$B��Ko��	��1����kF�-�@��\�	)�9�����{�z]�����y�{��p���v�z2��ˊ_��|�?P2j�\�\]�"5z�HbbS����� W����lo4��,򃾤�U��+9���_�h���wA-O�#9R�N� �27� B̲��|<5c�D�<����vB����d�Օ"�6|�����G�7R���3��rpq�UG%Z�8�\�ECô;s[�Z��<�Ѝ���o?�����R.�(���lu�g�z��m�	�?�f�:���} >��6 O�����~�c��]�8{����_�_��V|<h>��P�ͅ�?��D�m������g�kY`����5���z�a]yN�#��F!�k`��zޏ� Ms۾ШW)�W'C,����w�J�m*�.
���A#|��=�:C=�c��5�`�W�>�]�5�񰊎��|T.�N��yhA��1;;[S�Tn��ըc#ґ��ʦ
�~Æ|�%�5اX��Q��2í�qD���:��l���``���BRc��:��m�~m��䒍㨨�iޤk�Q���*?oS`UP�����H����O%*�`MI6A��$�k�������=0�!�$���t#�x��u�L�ȣ���t�Q.0a���\⻆Ӣ?��[<�u]�H����t.��#����,^�Pp��ôð�c9��̭�ъ+���{��;�|������R�%z��XP�����m' 	��[�m�	�����# �vvr���qk)���7~o���r|3����G�+	<�	�w���It�U��%����3{��9t9�,=����',m+��ɢz
��^Y?���F����Y�W-���{6ȴF����� �cV����5�����5��܂-҄���w2�!��1�v�W�k�q���*X��X�۶���<�#D��*�|�#Bn����X��֪��jQ=bY�J��G��@Z����J�/v���IZ'����=�2��)�]�-�Ț�	�$!q�Fr"�#RB��Rk����G��6��7�M仍>�����������x��؟ȧ����e�̓�"4	�'���g_	q����.�8ϱ/1���7
C�6&�J�uEm�|�Z��*�𧩟it�u]��	e]��3j���F.��l�����H)᳇�,a=^����|��7�y�.8�QxQ� |���S����]oo�v� �����~��������ُ�0���l���ւ�\���lx�{��A���0J]C�O���Ľ����I.ؐ�Z�(���{,�⡤���)1�U��`��aYp�|"��kFas5�w䒚�h��D���i�&,���Y{��dD�����Z�ǐi�W�Ƴ��)�OH�Nfs���hj@�ĭ���Q���|r4J��Udw��<f�}Z�6
�om�f>�̜	gKG$L��ߧ��Tl^I��KZG��{v�ɞ�2�u�c��� їh3`�����o'e�uD���à&AJ/�����6�����	�� �6���jk�]�����q�����Ε)L�2�ۺI�] �m�/�w$������n��ؑ yܻ�Pk~)�BY��ɷ�+ ��돫}��i�XaA-%x���)g�Q�A����u9`wz�G�S6�y�~���������pqqy��� ����V�w�}��u��m��Dg���O���}��g��Q*��Bc7N�Y��+l�u�:'鵀�}1�Xq�Q ��B��DR����4�ͅ�Ï<wE=n�Äa�X��p"rVG�	�.���G��DY[��������e��    IDAT���b�1`v�-�WU��J7��>"z`�^CT<�����5!:�%�\���Jr�9��$����n|.���`l� �Z��2�Cr�f��
g5�l���'������$
����PF{��BB (]���0�3(YյB�3��Zˣm�Q�H�B���>H�`"�����s���6�[S�8�8Ց�)��� _��qԱ�0%�X|�(������ɋ@�	�x/䉟YB�Y���x-q_&���a��j�0� � ]����8r����'+	�~n��)�������5N��P�h�i�0�o8�U��2S)ph�>�j�H�>t�NO���?����S�\�ޚ��N ����)����>�������]O�\k�r���P`�}�
��DC�^�hd��@����ς֖�����>��g�J�?���zbo����A�����	��ʂ�8�@Q$ FdAZ���WX�<���17j�Lmɢ�V��2��X��^�̸A�}L����1�̭�Rc�i
ĉ���P
��F�ŀRT�x�yD�����j�A��_�@֬��@g�[H�2vG���W�FH�/6NJX�Z���m c;!�ZE҄�M�J� z!���O��*l���p�D�SJԍ��8�� X�GG,���&�����9���+A�_�֘0�W��R�[�(��[sM	<9�]5 ��5�r厐@�N`+E~��+Y��U�4�k�ƕ刊���x�;�1h���c% �6%�:�m8ߠ�9Ov{_O�k; �b]W�r����+�7�\�����eu��<�4`�/�۝�r���K|�����=�����_� �� [^�6	����wa�� �5�6�k�O����g�x��7o��˻_�Z���V��\<��5U>r�#A͙���p���g�U��@b!�����I���@=L���a-�NB��,�-���3��EBZ$�OUe�$*�Rf\��6�!�`Y���~7���
F���P3� ���� :� �PI�_�� �ud\WVm;䁶��G���ʔX��F*9�jqR>T�m�¸?rA�.o鸕(��������ඩ�=�$��6?4��@�d֓lczD�9���P�XP���.z�����t\���Ʉ�	�=l�n�������"��+]��6�ŝ��g�Kd�Ńy��És."�Yɇ!���(u��}Yx*0MgN��Ԝh��aG�&Ժ����:c9�3	�i��2ۃ$��а��JE],�s�i�#�o���.i]ku�y;q]1��@�(eE�ki8�0�/��O��'E?/�n�	^�^s���u�;����?U�o�xJ��~�O��ǟ�������Vf�r��X�L���rT'2��HCr���U=B��Q��"*\K��mu9����
�
�����/�. Ӣ�xr�� ��nȣ��� y`��"@G���/�X������A�Cc%�łz[ .�iHL~O*jm����pkY7�?G�@�T'MvB%�=s�^)��jX�M�ע,L) �k��y�#��'z`{A�<F����W�����5�&� i6P2)>���?L �H%�YT��'���*���u� oQ1i��	~�rU`>'��3�o)	m�τ�'��!%A��k��`~�]'/�V)��D L`e&����2eO@�%@f\e1�&ݒP�3p����Y��`�sl�[~���J�7����\Uj d��Y�K7˃_�֓Z�q�5����������Vo��;�k�wgS�?��h�_r����g?�C��9ON���R��+	�2�IRV�r�K�j!�C6=��By��}�cn\�	�f9���Qk�8�m�L�D�o ��x� q�!�R��dH#�|��q?���Z��T4���ڞiAAoeq�+��J�t���@ ʆ+�!�΁h5̂������s+��AFd.�ڇP���{�Z"!h
�D~d����绕����Uj�Pb��dZ�(G��P^�����^����s�B���yG��uN�]�QT�i�ć@��O %н 1T���{��?�OR(Q�2>[-P����JǩD��^BD�0�=�	`���{0E.� �@���?O���*k�������:C��� �*���9@�+z������}�`����D���_�e)���"�Z����-��`�qѴ�����Ҁ���3�r�<����FO��K�޾���N �[ �٦��^��ᒿ������}�_Ds��w^o��B��m��*��x �V'�{5��A�^����"�2��� ������^}���$��*�)Mpy,�ɮ(�>G��>F�Yd"!�>av�� ��`�Q�$ظ��bJ�yc  �(��M'6�a_���6/�kQ��W&,�����$�D@s�?`�Z�)���bD����)RU���u*��
��d�GB�G��q�$�u��kʿ���Le�{�6��[$@��(9���|���q��zP�^��筿EZj�kO����&B����z��B3%��(������2�g������sƷ��¤�ZH��c��DR`h>�W��|�j�g�6'��X����9���(���@Ǿ0C)�UYJ����ZVw=��9�>җ㵞�ٰCv��	��[v��L@\�l9\�b؝���3��M�'H��3�c9�'ᭀ��歀ͅ�������o
�[�_����Z�O}�����O~�w8��Ax�d5�*�0b�����0�|)3�d��r�/�y3���� y�!�QJ�J X�6Ń�T�|�)��8�E^��Y"��0OF�C_�S��b�TB�dD����>!���'�B]���Y��mZlٻ6U�5�'v��p��7��VK�~���۷d��n9!#��-�\�u�fۏO��� [�|4B�J��w\��}6$0l4��3�����f]�8dtt��_��ѯ� z_��
�5# �s�>�u�����Q�N���4�?djt����Jd�j(�g�{&�P�_�����U���=����HeۢO1��I����7��Ӭ���s-g�qw�������bQB�Z�F�o�S"_ ��F`�k�� ��DA��.��7pr�a��KWjT��K>8��0��������d<��[�C7���ޟ��z)�׭��b�F ��{�% ������w߳�<z���^l]�\C�!�#�^l a3p�|�]�zʹÏ-_��ܭ0d����D\P� d$�1\)+��"h�`e�R7�����D�D!�t�ڔTla#S�md�Y�I��*ak�J���_�ލL�^�7U�D+<�Ԙ
��+E�P=����
�{&��m�9��,$f��:Rk�=Y7{Q���[���c���r|�$����c�Rm��R'nZ-��)@yp��8L�j�3�HP��P�9(�,�f�H���n�X6��W�f�to��)�f��G�g�f��7z�j"����}��Q?�$qn���وF->��P�`���ը�8����	�[[�3~H��W�j �g��Y�@�膆dDy���*��u��ׂu9xB�gs=��G�����oJH�Z+����"�g27
S%?�1�GL��>���Z�,�F�߄;�3_�e�x��~�'?��;y��p�ԣp������5��W��$�s��"���o����c�Nj�L���=Й?�)�,j�'�ɧ�4좗ff�ꖶ���`Ʌ�idn������$Z���r��7֭ZH�%��x	[;�^����W�%��&�i��7|܍�(E�J�]_��_M=Du F����E�`���̮*>4	�0���!D�Nh!�c���	�[3��)a��D^9Ǡ��%â�9��ڨ��7p0�H�	
Gu�����������1��v}�y���IU5��AA[.s��g�~.cN��Y�:�~�H�����^^�p��}��Io�����7=�`IO)�rP㋢��4��E��{�**��i}�%�{������W��g"�'X2���]B�\L|pB��D��K.��9��]��)�h�	�f@]�Xף3�Ӏay��R֠�8D@������0a�&�Y�
��ğ�uŴ?��daT\^\���������tg^�;�F.��@��o�����￩��f�����ϣ������'K��)��/��,�^5�x@J1�C��{����E nf^�k�m�!V.*��R���w,sM�:�qpq�H�}�x�H(p�E@E�Ϋ8�ن�*���J�8e.~�Ĝȥש:N� ��*��0��ޑ��!��[�S����\7]cS)�}���L�\���ː�<I�`��1?`G^b�^ɣ�1Q��pB�r�$�~&���k2�	����#&!
�ɐ��'b����@@��z~��}Ɗ5̞BKB��+4!���(�6�qo��1�~��zIk-*gM4l.ވڭ~�E0U���QȕOz0��c@N	�<)ň&�{i@L�슀>��5�8�z�h�yKI�B'��'���y=�8'��@H$�6�1���C���$8N{�ְ.�h���89�*8�� �kd�RJuT�yY�H��P������{����_�K\O|��u�]ܾ�_��� �|�����3������P���Ie?�Z�񝔷�;-H���HK]i�;��Q<[	�x��FG��!	���MO���"�c�M����ֵ�� ��X4y,a/�701Qu��.>�
�0P"�Q ��ETLHR�Se�\-z��MX7pK��;%����j8"�4*Ⱦ����D�q� G_U��=���;�L���^�1��{U���d��.�$��v�!+mO�\�@�,;�P1l�����U�A�"!+V�A����q��)��vr�1aL	�%�d�v�bi�`jd����-��A�C
��~CG�Z�=iƉ��z$[�(��Ѿ]U)lqmz��si݉O�C��&_@�O2��z��&���g�����Ӊ3���5)�	` �u�)��(O����̎2fj�kZ��'OB*��,�eO��l8g��B�e�1�j��'_���G\O�C��໴�v��q O���w>��e��j�B�E��H3�R�4��d�9+� ����X,s��������
+;KX^ �1@�:������ꃎaf��=@y��Ok��9��'Ox����`.������*K7�i�xMb�R�f����������	x�0���ͥT��H�Օ�6�6�h��PV��jۙz���=kJ�bȜ��E��!��[��kp��QS�7�.D-�;�50G�T�G���I���w]8���Sz��@j)ө��	fh��}ۈGUY*V���_�d]�֬_��P��A��"���HW��~���}tuj �M�K�OG������K�����>���#�FK���PM$V�)��\�j��h@�N
�4`ڟ��.�V�:s"œ
�&h��A���O�S��~)azu=b���>̪j��v'��gn��?�/|�S��~���=���௖;w/^�7& �$���۷� \K���0��� ��<�Rz���y�G�C�{d>^@�a��|���ZL9#�\�n`0ge�F����@-��<�ܬ��z����n�[ò���3Ҹ#�@ÐV:�
ڧJ�o�x���V��
�`;�[��\m#x7�ٳJ	��x��3U1�Ԇ����OVLf	-l�^��19U��,��s!�_��
Cp����_��v��ѓ���h��K����2Pe�ʜ����mEfV��'>uu�^(�d��k'�&�NN��0�6�Yh7�����*j��y2+݆H +�d��|���W �]'(:L��ʯem]��ߧd����X*�2�p�ay�F�V�}���UD7�C�g����qsæ$�$<��b*��$����Aʍ���1�ZVX�x}�	�V���'�z	qS����ʞ��h����.�$����Zd�h}�Nΰ.�.�^4��e�e9�0�;7[�4a:���;�aG�No�x~�|@�.<�ϰ�+��I�|8w�b��!'�y�4�=O<���� ��e��d`+��:�����߶	����G�3�O�?�#ﹼ��Mᗔљ�	9���[��=�%��zDv\�"�Y'�����0z0�N���R8X��W�#E#�@��\�h��G��}bV��lj (�۰�3G�;d���&��A��(�"�ͅOTe��j�S($*q�(�I�E�Z��� 59�h_T+R�:���#��`� ��pI�����`M"9ʊ����9����&X��`����R"�I6�E�U�r��ZY��`�,c��9�'�����V;�{�J��G��%����g��6D�t�#%i�D¯0��\JO�L_��S��)#��ѢM_^���X���g�u�-~�[T���,o�/[HUH�w�b��%�Ɖ���8'�}��M�Y���"Rj�}JiK���U��4*�{��՟�uŚ�n�Ψ�'�rP�:�
��R
�Z����)�����}lX��R l,�uA�Ĥ�`O1�#���8�?����̲�~�߿t�9���k�u��m��{���]ւu9��*,�^e[�Y�Q�d��FoA�NQ�4
�Η��u�kh�E�qf�D���% �V\���*w'�u��i����P[�`��HD��������J����bH��5VT|T�5hM3 h.^0&Ժ�΁��@ģP�h�z�*D z�P�?����VD�K(�0����E�@2�x���5y��7o}���t�~8�6��6p>��*�>9���$���*��	��v��1�j�Y���pģO7����mr�@���|+@��L������!���4g/$��ܭyV��oP�Ҿ)�7 �Ɇ��F����̘Q3�9��/�)f]������7L� i�\�j�D���~g�Ga�>6@�"G��<f��r���n�
���hx�Yц����8�ū�<�@QY`fH����׋�������)�:���k0T����7������{�����z)�X��'���_���~�߿�v8
pO �Xѓ�+�����ۮ9 ���/��!t���_�����}���{Z��[�6z`4C,�@2�}|-��3���m:kAw��^�8�ș*{��p��8����tK��3��`�H��G�����q��=ES�­W����o��Of����HT��Q/��-*? Ua]���f9@ew�j0\���o���V�yS�S�U���&����ؖW>�����Y5FK��0h����bD��5j�^���5b4sr�f͜S`4
+[�2�^D��;���ۍ�IjJ$���$H�*KC�J���UΠ7"	:�NZ�{��5��!]���d��s'ydHU�(�җ�0xΓ`|��� "q�y�jV�6C�ů��[�&M�'l2���)�����|4�ų����h�;
�����M� #����u� �"�5'D��9�8!�1�ĔS��i��?9G��]S��U�k(�w�/"b0���0KX���P�/�b��V��F���>����K��Z�տ�멀o���o���6�7V���}�n�{�]O��e]���G����N)s���%d�7���K�2�Ny��wX�0�r,H�����t;�0;�c������a�Z��=y�;��0�QX$K��g
Ri��z0�V������8jۘ���m�9�
�B��n�k���	-F��3��Lm��Z�=�C�1�=���x�D�ŮIC���������|��lB/[:���8�B��d�{����1�SW����V�&��[��B��wb"�)���9n:\!
"3J�<���4*�sġ�ǃ�z��SO:\JzBNc\��g�����Շf�;�Cq��M�،��}t��LV���m�����<H$���n�e0����!����4O�(�]���ɭ����qv��=t&��\H)���7���81��q/7 �xr��Z)���S�Y+�%����B�>    IDAT��0{,ǻX� ��@x�����q������_W��[hH8�a��^磋o��8���������at��ᜫ\;�%�5�o���^�߆�V=qrr��_�����;�|��|��Ttt#) �}`fܐ҄f�f�+d54����y����0��x(5N�t��C:�$?�Ұ�����W!l�E�K���I�P֣C�y�c�@���42XI�?7��|�8%*���Cצ
:��D
�͓*Uƶ}�CP�W��5�yi��_��3��ܻ�u�9��m �
����_��0!D/yXI&3�0����񱪷^��</k�/W���MDE˶�=ږt���[��)`��x<'U��h�q2��im�v IW?��'I�E6��$#��C���8��	Dðm�(�#`��&=aW�ְ��=�kn�LLa�﷦�[�.�LI(''#&�r%�Yi����5�g"w'	��0aML�� �Y�d�q:ô;C)T���put�>��!�u�'������r�b�Pw�;9��'�(0��0�;=,���0�RN��pM�u��5`^�8�O����_��v��{� "^� }�F �����6f?7o�=�ܳo�1�l��b�L�;����L�4V�>���P	�z�y��r���Lw�R�]`��EeU>>��@F- =۽BUE�c�Z-��
(�0l�c���+h6* �Kj�z���8�ZX9��*�{����XT���+[)�-��a���`�
l:6^ O�؆� �C�Z`�/����n�&ї/�p��/.�Z�{�_��U����>���lC��5�� �
@�j�u�`r�!]�g���URUW+�#���x�J�y"�G$� ��Xbm͟����{p�
�-������i�lˮ��Zk�}ι7?^���~*Uɪ�%�$Y��e�ʶ쐭�6���ѤE7�A� �Ђ  �D � [��^����Z��c�}�=}�{�<��˛��s���k�9�c��ϔ����7��)O�$�L%��ƶ����������lYR�F	����i�uw�~�>eY�`�3��}�Ǿ]Q���F�	��D\�D�����ھ��+�~c�� /ݗ��p�`Zΐꢛ+<��s�˝�O�g���#�5\�����^|�I�4�Y����ί~����ÿ�/�����(����=	�O~%8B"�_�?����ѫW��O������ʐ�����.gz{��ʱ�����q����g:���l�Lb��a�Nh�ћ�׮�M ]w& �Mv�0�X��x����t�ˣ�BIѫ���͞=ml*x�_g��"Xu�l�wz�����c�+�6�rhAD��y�D�{l�άf��B!)A���Y�8���������0�P�iJd�7�8x��d���G���Ġ���
y2ɤ���֠�3JXr����=ON�ɔ%�OSр���na<a\�<T ���:�����Pnd�1䅟��.t6���,��+e���{u���u� ��-�3�Aϩ��f�I��? I\��� �I�{�9�Q )c8^����/@K`k�#�/�8<��\��P!�V��/e��w�_ yac�qG���L�0~�<A
�¶o�u��=�\
�}pkX���)>)��ٜ8���%�u}D6'oΧgX~�i9a�X7���y,P&G7s�f�ۯ.�|�����G?��� ^ÕG4�=����}�O~���?��	���{��w?~y>5�����\fw����"��B��N���Ꮿ&e:�3��l�3�s��s��b yZ<H$�u��5M� �hlh����yɬF�x�����ֺ|�U�����A�ҳ�[�o��NV�O���o�
��Βq	%�xV��$3�(�c|����N�w�OA��y�RT%�i���������/���P��Z Ca�D�����V�{�g՘*܀��(S&9�����%I�)�
3c�P��1)�=���>�ŀZno^3!]����D8=�.Aj��k��������#L��%��D!��&�D�N���	J�(���)�]�7�)�C��0�Rz�[�M�=�5&^��j�1%&9��>K�Rf)ZU p���7��wJp�\��oVr�S�i�Th#n�L�(���x�Lȥ`�O Z�DR�h��FT W�C�j�܈Ŝ�c������o������~��Ϳ���0,��' O_�[ �����	�N�S���w���_����o+Zu���RfJ�T!&X��`��m>WU����޼��eZ��5���"�Ŕ=��e�1(e�i`e������#�{�	"E4�F]&����S�L8�7n a+,k�����D����on!p-|SU?��
;��sd��⽘u@H��^5&١���0�Q@��9���p�P�ƸN��Ǩ�e߫{bf�A�d��^8�~m�UcB�{s��8�� �bg� �\%c~�q����XG���� ��,��A��-�q�F�d\�.��-����'5�^��u齹�ɢ�V���7����W�)f�H���ol��X����b�W��H��Wm���	Ə�?�7���{�5�:si�<=1���0���dM�����LO���G&�^��ŏ� u��Ս�`�AV��G&��W��]�C<�=������o����V9
8'w<��h�z8]��p{�������v���������2�"�˄�	�~�+凿����ɀ�i�g����F�{��s��' _�R���c���e���_�����OSm;�5�r��So�m'd�_�Ƃr���o���yř�o	Bj^��?Jɞ?̍��N�c����L@7��u���K�n1�;}�gW�"8'�I���Z#R����+^�2'������D֨�?��K�����)�}�`"�!Ё���������2��)��.���CTE�$#�$�$ǸX����Cy�뛛�[S�[�7mm� ��d͋�:~���ÁLG������=��D��a5QI�u-���Q��臊��_G'ċ�%B 4�bj�t����<�*r�s�ga�D�6QJ�g| N�g�P�=I�F ��#z�G�{(�hJ3bF��!Y���1��VO�4����72��F[��{��c<�JT��N.�ߠɛ� �3���,��y'G N��'��e�+�������m+������Ԍ���}{�Qٰ]���MD��?��+~��#����_���|�܇_���_�^�9 _|)�|[��L >|�����/}��u��U�j�f��l���ccd%U��P���K�C_kH1Pëj����3z]t /�oĺO�p���Ne�S�+`����m��lmG�W��a��$�D,}�˳RL���f���r���\��6�o��q)z�Mm���j=��b��gUM�`� �6�"Vb"��*W��@|��A����"@��@�-�7g9�A�BO���Sl�>��D�(3���paT%���OG��R$���T#��|�$g�kV�#.>/A����m�WΥ��q]$o4γ��E8��,C�@:6^��\�2[)��(}��M.�yF�	��8��X4���`yK~rv�bk	���	�9G�jgb!%%��(���e�w݁��"Z��2�!$������t}���}@�<9B���u*��a��':�;Mv[x	�'����MϡL�F�}\��H��jL>�0&���� ߿8�|��|�������-��VwXo�/ϰ�����V o��3���oo`�#?�	����)�{}�}�G >�S> �0޻�y_�9 _|���a���f)�;��~��?���Y�|C�Z�?V���-���rv2 �~����Lغ��S�]
�0o�NZ�2�gM��I�4����2��ť8m'��{���3�?��vu���p�y��fHECD�h�s5��H�<��0*Np�<�ب��1p�����g��rU%��x��?��p@
��i� 0 Q�c��h1����1{��$z�����?���2��y�̯����&���T�CT2�d�Ҫ���է=|>@+h]�� �-��9�~��!�ѓ�4�|�]O�KG��0�lUY�(���Gxo��?���5>3��*�(֖��A�TR���Ǥ�Hn��=�s#� �!e��Y2�~���Z�B'�q��k�ׁ�s�|�2`>ݹ��Oqr��h;��*��3A��zZ.�H�O�8]�o7�6��Өk����|�.�;�?��J��y>Ž�9�0����>����=���o����_����s�O�W:�7����?��gU�����������}�%@Ez��d���}���n�oe:����� �!e�y_0��̞�~<��牠�`���܅��`�i:Ԛ�e9=ò\` �v�~}�,���(��*XG�|3˔*��ۓ+�4�S���)
��Y(Y���`���=���?�$C�(!������У���/S �[s�,0�z&As8uOXIyl�>����0�A�!㚊��N��;�&�V`Hd§hy� �]�����z�r.%^��%��4��Q���N�11S��׿G/�+a�Yp ���s1�G啮��+��ّ��v��ő7�'Id�#��M��o�cL��Zv:����߰5��ΩkʤZ?�y4
�����;R%�#����Zs־>���џZW>�~����f������%O���pbd�D3���>�2ϘNwnW�J�q�<�|��^7��{Uo	���WL�{���Dk�}z�r�G����G gL����;Zoh�c�v��W������7�������J������	�ӗz�3�����/_���?y~�|�Ɏ���B;�� wRMw_���K�@�X�-9~%�:�Pzk�g�P��M�_��lue����c�����\�Th�Vl���noЪ+J��W�j:�����&�7�^�(脛S�j���w�SV���f�܀���Bf�V�^�ҕQ}t�_���}POS;:�Ɂ�<��yPg[����� �TQ5t�*�HX�D�﮵n;��.Rx�<;s���E���q^9A6Ȫu� 47�VA�^�4�dmh/<����wx�<G�K~_æu��	%��L+c�Cv��LZ�Y ��u�&���L;�ǳno	��7��xD�8��Q-#����)Ln��ư�#钉�lp�����jO0��㩔H�\~���Z{R�wMm����D��F���[$�Zt�uߦ��g����xP{���~�ܨ�5�Lft�5a>�L'Z����1
��tA���1�t�����BO�N�g����ހ�0-w8�=G����ⶭ�����*F���:r��?��=`�����������Տ_=���Z[��?y:��^c:ݡmW>��7�y�+�U��7��'���/(�}��,7���w�&���i�a���f�3 ws��\�KyBah�̴���T28�ܲ4Q��q�G�Q��{�>uNS����q�#��X��/Ȁ�v{���'i�K���)[�N�j|Ʊ���R�>��{9�W��'ǚ(E��jՓ`T{z��dz��<�W�A;�*P�V����矒����\�B1��t��y�k��R�
!Zg�I��b�u���0����L?��͟�z�{ǾvzT�.md�OB�#^7��vZC>j՘a�ӹ��M��P$�k!P2�e�s��	���ԉZH�J�^�HH�2br�ɣ�y��_��}��!%Ga��m|�����o����r'�����	)�Yr��N���h$/Oe��#8�7O*��9;g��n2V�������t
2r�6�G�O��QǞH<~�c���{�|�z{���0��=~�2�p:�9g�	qk�4�k�O���>�����?�%���� '|Q������' ����8��ï�_�ſ��W����7�*�4�72a���	H�9��,h��5��ܠ�tr�����M�L�e��?	Tl��׻L���X�s��7���`�)�y�r(�/M��h3����D2 �1�L02�p$~��V�o����7"����q����b�8����t���WdPt<���Ɣ���Hq�k��1$�_�*)a�D��ALd����g�{rB�ZM�-t��g1�t)��Rq�go|+]�4Y
��!����6дvd)ϔ����u/�@�ǰ��b�<x`�~�!���=�B�6�� �ɍ�H��t��'q\����p�ܐ:FcR��D�	�`�P�!<,�0l��_w�Ș��rHڄ8ť������%��Sv�otX+#�'Z��Ńe�]n؛�P����1���R��e��������>~�ZW�\��d�Sv3�%d�}E�ēXo���	�ه����R�
Z۰^;z��=�!W��z>����ާ��?���{�G>�O�?�{��?��}�_^������*���O���O����%-A��x_�-Ky�˥����[��n�^}��+�V�P?0����oΓy�/�����}�z���;�2cY� ��V�p��`��s��,��evb�4P�od݃��<i0�AS�\��Y|�Ya{���s�t�߽�L�X��@�ū���㿃�u��H'�{���ߗ���j�(�8U��IH�D�'NRX��;C��T^�6���G"�8?V�n���jǤ)i��nHRa/�ph����D��ZK��ޒr"��O{�[�.���0�!>/Vͪ�A=%�Ł���j�K�����zo8�0����5��uӃW���@���^�}�cנ,�MzwN'�'?�l�6E<[��e$�E���&�4�t?V�,���ڎ�����n���WBkT��	yZ �4a>ߡL4gyB��vŶ^ �rF)�mE�]p�;��z���{��Sq�q�{����h�b9ߣ׊}}�z{@�nHy�r�)��n�7�����o���YI���x�߿�����_J �����K ��y����W>]wyxe�s�����5V���Xo.�sK� ���>��,��ʸ:��2qZځ�T�X_�� þ>���S��ѝ��nk�e��M���9r0{b��ȥ���:~@�GͫGߘ�x�AՋ.��ݫj�kΟg����pL�Mճ'�M6Җ ���O�����rd0PY=ߐa��0v8���H$'��8�C�9,c#�8$���d{�x�<0�5!��%{�'AU,8��Y�������{�02ݹ��-1��F<$���sU�#��!XvZW���0#��2c^�Q�;���9���Ƨ��{����OُwFlP9��G7w��Yt���#,����[m�H��;MR�à��#�L5���v��'4��Xo>��ЦrUk�uh�e8dv.���ٓ�nt��W���/��Rfw����zE*K������� �����է�n������7�y�uc�|��+�vӓ�(E��#jݹYd��=�*$luO������y9���sx�v�' �g�9^����@�����������vŲ��ӳ��]���"%1z����\�U{q{G��x����+�r�WL���n��{��}n|�뷺a߮X��P�s��!�5>ܣ��#� �ݬ99�	�Ѵ$f�1�եH����JwS���bOo�LTcQ�c��D��B��6_U�H�.G��� }�43�eb&<����M���J2f�l7l|�#3���`?�����/��G�g|6�'��*�=��Fec<8"�dZ�����d����9,��c��A"��8�x�2i~�L%�)��۠��<_0�����`�-?�g$��=���Z�DLl��{�Kx���G9b`a�,�+ y�����!B���}��H��I��@�qװ.�6�74��F���W8�9�	�t�D�mz|(O)K���Z����SԺc:�qy�
'C�y�z{�����ʹu���S�r��W_ž>�zs�T��o7���Z+���&:�rFJ�~C���3n+������|8�%qy� �)��	��T���w>������̫�v�E��ȅ�r�J�	?uF��h�c��}�.�XE�f,�%M���V������Q�    IDAT��܌�B�]e}�XCdd���?�ڟVV^�%V�C�̬04x�S�HN��i{ۯ� ��Oe�����O퓯������� �	����)�%��Rpq�>�ji��!KJ7`�<M��|PB�2t��·�����i OA&Q�'��E��]�=�*T���`|IPyN�v��>�OY*^���.w�yV�5*`��GI �J@������;���x��k��Ϙ�S$���X)���5y`��Z$���C�9���|��պ͐	�'c��4�,��C�)���l�c��jH�.�hRU�0ʓ�	9TȞ�HJS,5Up��ʌ�����H��h����y=l�#N��{��ȳ���_�m}ľoH9��ǟ���?F��� $�]���	S��tR���
���1/�����1�$�h�>	�S^�z �������%�W��o��oMX��	�q����ao0��i:���׏Y���+X�`��6�>��i����k�xb߿nW8��VA*>e�	��l�4Y�Er�ī�F�x�>�j�V�(�'2�*nvY����Y�����U>����o�JB��#�[��o'G4 >�#X��!ik{&#^!"��P�x�c�d@f�F}c\Ɉ[��D儔�}����(���_'�"��R�(U���<��
�#2�s�~r�(ō��r�� %"U�~}�zrj!3+�G$�K�+�r����,gDoQE"V4A>���Ս����)������ +��ʐ�0ֹE嘼Jo����<�B�`k+�Aɡ����Eb�� İ"�DC ���������B>pς�V�P�+�,�s�|�ZwuA��\�C��u��������W��}�z}���RJh����q��#�����/���3�ְ��a>�a���k@�g��\����t�ɰ����Cn�#���WH�s������\�u��-	|� �	�w�	P	��M��:�o}�[_��W^,����\�*�]ۮ�9�����og�mE��Ф3$YN�`𑿽���z@�P�gS	���k�W����-p�p2�<;Tw����
���]I x ��g�v�@��?x��u�o��!��@
r"4��)0z�xrO �������b3�_d������E�����K�����W �4�G��W�=*S!Ne�����OZe�9�}G�XȪ.G�hb�<9%����8d]�t�{���=�l��{�����$�#��(��qo;�4���A�M�������p�\�4�ŵ�G�{�ce�9�O於Ɉw�A�T���U�'�!r�!;��'�!g��(���DƖ����$�o�T�iR�Ӹ޴f���4#���by� �5eP	K9��J)p�ĩwL�ȕ�˴ĄH�Ӵ T��R����}�b9�c9�97`s[��|>�~{���G(���s��*���W�`9�'�~�9?ߜѶ+�|r�	�e�?���\����G�O�+\�9��H��;~���h�+���w��3�����˽V�ԙ,�Ǽ����~�W���LeF2`�. �0'�|>�Gc�r�����L���ި�{�w�xLn�K��h�K�����zt$��[F5�[��{��N�mR!����)^0�16Z Q��iض_Ǫ�����A��#�������O���c1>W��p 5~A�Fw=lO= HU���:Z���	x��!�}�q�!u#�!6���9��v?��v#-�\o�7��pZ0�w"	�����G�nb�T$�Ӻ鄧��V`Y<��ZW�ۊ��Z:���,Pk��D�Ь��D�a�!�w�V$���2�,4O���i&��kOT�I��#�Y����D�ĔMxRF���R0��9���Hkh�V+I���P) �(�o:�K������Ts�i����b���W��b_o>�!g���9/>0�	��f������a/,o���и�n��9z�q}�cL���������������6��n��7?rAkHy�z}��:gܝN���_�j)�+�r.��!A��]�0
Ǒ�wpM��y^���O?�d�(�:��-&�!q P�l�zuo��z���ȓg�e�}�ilF��T9�����5���w`����'��vU������ɫQ��tHt��y6aa�iX���	,��ZlP0�����ê8`iik�jn��J�X����>��c�G�p��_�����٣,��5��`Z�!+;��L�z��Ȓ�	�\�A��x���P���L���r�8����������х�2��:�f�患���6��''{e�]�5BR�j��+Q��)L�t�)y�l�Uk�x��������L�z����È�Z�g
�i��Xu'h0��E|�%K�d���!I4 �&~�P��8��c8u*Ց��!q����[}�<øG 9GZ�){;'MTP �	'BvX���u��MG���xܧ��6QZܘ��Z���rž;��s������	�7�c_WL����2����
��n��H��ض+�|F��R%	o�7��?�ֳ���_���x����׻�8��4��# _�͗/����w��_��iz�ޭpz�Ð��'4��S*�`����_�o�xe�av&�Կ���� R	�W�Qh9Y��Ck�ϝ8=�L�2-�=�0�@��<f���vRvb�4�q��B���F���1�DO�^(��|��S��O�\ �|��~�����0�J7� ���:�-�O�K���X7��,�?C�1�نN�f>���j]��D�b�Ռ�H$�Q;W�u��
@U{;Í	'6��y�d�+g�~ex0Y�-�;�g������k�]��X8Ý~���j�-��9�"��$�� ��|Z�J�#��ҰIm}vP&HF\_k��hH�����@V���-��t�p�JRF��A\u	���]���c�LGƓ�T���RC���z>AV�0��М��=������f&���zK+��e��J���h]Df�b�����p�}i.g�.����2����B�)Z����r�{�v�|�x�eZЭ�� ��e*�����O�m�	�p��Hr�w�u�h�������w���? ��?�[���붓���㉝��<*7�"a^��s=�ձHcu��*�����p.�ȗ���S�7��%1L	erC�F��4���k���>!x�����cy����|��\P�3���^1ԝ�;��U���8�(T������w$�)�G=ܬcE� ����bx�߸�:�p��l�O�Ԥ�o���v�_l���yH$��#z������ߝ��Ʒ��Lp�O�!\�
��NA4�@��0ZAC�S0��_	��_��S\���/ǆ���^��hII	�-��}e0�Kl-1��]��x]�H����E�_�F�Y32�.7��!r2Hnͅ�3����X�@B�T���> ���Mv�-��׮+��"4%2�`��B�)�ĝ �C�	�҆�6�}ӊf��	���:õ�U���
��eŶfo�����'��m�b^.X��i�uZ�X�ϐ���'$��#] ݖx>�a���r�u�q}�S�?G*�������������tA��m�������a�n��?��W/��/�eT�E{���]O ��?����W������̭_i�Sf��g��rv�].KH����25�����i^�7�q� ���]���&��깶52o���,������I�4�_F�@2��W�����>Z�7j��(�0'�J�6�'��eP@���&�J����C�/�_?�d+�i|��d|/�6��.�9<�g���*�'�^W$��i�^(�������7I4U1NQ�w�����2��~Đ�@d�dU���C	�14:�5V�J&�^!f
^{$&�#��A��(��@a"�{��&��j}��7`�A��:�{���?��"xn� ��Fp��Ϣd�I(���+�w	#��p�1L���8xBEU���'��k'e��%��8��#�#y%o#Qy��:�(��Ֆ��{ �����:#�qY�nh��V�>���k%?`���Ϗs�|��r����G�N��DuQ,a[��}�v{���?���3��}�a]������C��2x>�)c߮�>|�u}�Y�r~����~�����_�����@C�d�^�%�wq��տZ ��_�����gt�(�6Bi���$�iL'��	3�]m��*	����vL��^k�Pۆ" 7�T*FNa�!R`�X��w�hv�C�����|��c"�+ P�R�iK�1��s��,a�>*�L	������ ��(X��U)��R��(��ɍ$/�"G�ox��З ���p8�Z@�Ir$����5����q��̜QЭ{-�!&�=�PNruǾ��7o������r�K17¯�[1s��:�èj��ћ���sJ�|���["P��m1�Ճ�X���>��ߍ��a�'ܥ�aS�LybP�)	��֘��J��-����%O6u��$�	1���������MeB`cm�}_ �Q��g�k�Z����������,$�o�LW>sYl>��N�M���Sp|z�q�,��A礖��`Z\��{u��4��`k�n��o��;����5`"�:��3��d���q� ���5yE;����7�#�(��mT"������i^|8Q���������ww�ﻔ\?�	���RHI�_�2p4���G> �ẮMN�ֽ����6�sMom@=>�<򴸾y:c�|��WN�3��g��b '��|�Z�A�/�w�<�t~���KL�Ks� �>�	�m�h;���q:�R�����L�b�d1%�:�� ��>7�`��Z�R��37bݘ���w��U��@���"`j=  ��Ij�|���v��"Hs�{_�mZ��{��	�����!�>B��j]�{� ��%P�!����	%�tF�0��jE�Ae`�@��
C�}��q�����_}�!I�@�N�=�嬉^�=>HiB�W���Z�Ў$��eϓ	Y��l���g�5&'\8n_ш���v&�����~���S� �O�S�>�H�?i�T��'�pӊ���P��i����{��x��Q��r�0IO[�P�S��Σ4(��;P*c�2��pg��!�	���N߅���}����ۃ${����6x�n8?{���,�~j�л��r��3n��1�.�(�2_�KAa�5�EL��u��t��n��������km � �6�{��z�����/������?�ջg���������Nr2U�	�ۣ��i���������q;��g ���C6-g��ڊ��������s�X�\^|����	�����Sv9N
�5[u�<-� ��`���m�v}s�xX=%"	d_��
�
�QI���
�8TGH�@�	(0�p �����~��x��� |��?��gA"DƇ�̉?��2B5�z��y21~�pNDf*�ɄHk��'%�O��Pe*!������F�,ip�H	<����e�Cɵy0��b��w-���o.��Ч�z��i"���1�_�LH��	�ӛK{��pG�F��k���@�xFtBٕ2���Ti�a/��q}x�G�aD�����_)�Ü{�Ŀ��;������W���I���,� )�(�$2�u8�I$�����f�L�;���d�:M����}��P�����u�q�<C��vEm;�rƴܡ����;u����?�ry���у��>'���2Ϙ�ϐgGs��?��_�hY��Ë9% �%���]������ ��r�|�{?��W�rNu_��E����ANƾ>���=8����@�(�&��)08��3�b��G��
�a�Tb��6=�{�
�r��]q{�c�+��þVD4�h�Y�4�0/̧�p,t����`��x�X�3�UP���2MeB�K�t�*���^��}��"9P?�$qH����O�~�Y��D_��,�_�[�$�\Y%�@0��~<����?�G{w(M���D*g9����N�=�
�\?���t@�εd2�.�$E�u�A��AAju9�u�	2�!�&J�:�5������H����|k��63�;����Z���$h�ŕ`b/�DW��
yF�����H ѫ����x�L���u&�G?��'}|&g�m�,K��}P�Z�â���6Ժr������Z�"<��(�3"H �/��J�4�0��`ʭҼmY����3���7?Ao.}^���놜���iY�]�����9n�������Ow����CX�J-��0=�>��Bh�������7_n�)��b���׻�0aT�2���W�̯��W^�yx ���9{/�A`�S ���N��zC&�_:�0��ⲩN_��'3 s#P%���9�������:	��ы<V��?�g"��%�+z]�H�3X��|6A�G)$�R��É@V�{�[a��)�5H��}T᪬uנ����y�qXUm��,X�P����c���a�����@oc��H�~��/-j�RQ� �h' ���X����H����{��%I������y��y��g\ډL�[XF�� O��g{F�\���F�>e��oD`�"t:VJ����$��� �}��Sa>��w�-K�3O���m��t�٪��s ��ͭ312c�;l}5=O��Rd�D'�<X�P2緑�z���d���ZMO��#�)���Љȃ;4�CKš�\2�J@r��2�\kL��7�nH�Gb�>t��b��]�(l��}�yACT��7L<�7��)%̔$j�ӄd@�u��m7<��ط궢Gz���#�y�r��'Y0���㉷�#���|����������?�����_��x�!�;����;�z� �/7�)�W�����_�m�|F�oa��:�rN@�רL}�3��}�o���D�MpG��I�l����:����9���'uC�;���̓�ܲxO��5�3�r�
�+�tr� :uն1����F��x��+��.�F���,�4>8M���Fmg?v�qB�Ï�Wt�V�VG@�K_����]���>�7u,���4�M�]�o8B�_���'�Ë5h�>;%gv���� �0wB
�z��j�����(Cb��7���#���1��/�����w�ܢj�����C���X����A�����pz%,!I�(m�&�C��"0os��qP�P���k�b��I�
)�gV�����L7?����3V;��_�H�Rzy��jQ�>�,cv�)0%A
�L<� �s�C�B$��ԑ�Ρ�0T�SW�f/	,{���'�i��z��U��FN��tAk�ܷ��J���VE�t:�|��~��z�a�>�H��п�@O��b}��/>�~{�}��;!�K�9Vw�2����ȥ`�g�Ա�+l��֎_�����O>��O?�_���p�5�*x�����%(��c0��S�^}�k����Ɍ$�\�}���d �^�!�g�m���r�L�@����ۥ��P�	��b��i^(���,�{�N��@7��7޿O	��YoOZ5���S�S$���r ��{G��(�z��"���4P�Lny,��2�ȾUr��6t�z�^��CJ�38��Gd^��|U���k�"?�yp#����_��
���Eկ�jq\�s|���'��*'4A�I�ET%���Qa�� ��c@��_�BTI�愯�����4�)�D���w<v�4�7�B��[�wv���>&�DM�G�#e2�{@̈���0���WJ>K��\���(�T��Ϧ��ї����kx�!��>[4O�eK�~c����2
�r�.�W�J�����!�����+�K�	��u r�8�eHL�����Ln�S�%X�nD�0s��}���7r)�ߠwW��n�ꗘ��V����2/���l���P�@��+���#���rAk�w����z{�^ھc>�c�/hۊ&߁�Q�z�8߿B�V�͑������?�����߂s�cpf��w���_�� |�o����K��sX*��趯�ӌ��(ӌi�`_���$B    IDATH�u&Dl�e:{U�o��WO$�P�+7�;D��H������K�z}��=�n+4 ���MϋZn��9��m�#�`n�7�ά���*��Oա�sx�#>{"`�{��Uo]����?'�s���*J6&$"�{��BwU��T��Ɇ}<LdZ�J��`�����Ã���2T�)��������~gs��0A�I��	M�LD@,�[0�1��5C�*khM���@)��x�i��f9n$��Z�C�B%"��)�e��hyu����+j�/_C&�Jb"ʖB�9\7�];�Q
-J)L�R)H4T2�iF1��y�l@�HDU����H��!@l�����{�)+��2�e_,��  ���5�4�I��	�صJ�#x��*���c�P��	C�FpI2\�FL'����q�H	]@�|/��	�R���4�~���@�ϙ�Wͻ(ӂ�Br�o@[Q���sZ��q0L��O����ڎ��p��Л#��O6<���q߰��V�pW��\�u�ﹿ���>��K�;����/ �L)}x�ޚ�1o���@o���}@΁9,��4�`�xo���N�f{^�xw���}����Q-GSB����	9Ϩm�v}D]�1����=��>Ѓ�n}�QE�TwX۝(�߼7U'�y娈�v�(R�^U���>�}k�j�T��׽�=��Ӏln^L�F�On��	O��V!94��{�y)�{RһC�Nx�c0� �nÎ8� �e�8`�"��O9\%G�?���jI� ��AmZ\E�9��:H��)�Fd!,Fs��VW�}L~��2!��t�<_(�Zx���G�$3�D	ɉe���$���2�1R(B"%8�@�D�)�H��k��8�+y5[���b0�p��^In��9!5��9x��t��HZ��G�k\�$���٩�bBª>Ǣ%�@���O��H�y�����UӪ�����>�i$����mt�s�g�!�4��B��{�g�ם��H�F!d�:=���D$�c9��Q��������U��ô����Op:?�c�p�a�>�R´�a�ۊ�v�M�>�{�����_��
>� �w!8V�G�I�>��_�����3��X]��/��^W�˝W���U�r�b�A�ݲ X?�9�Bio}���Du���u
ʼ8�X7t�Ҍ���	�K�~�*,;��X�>���E�W�+�޷C0�SI���b"QIXI?}om���ࣟ��(�;�^�R���������I�_0�G�� ���Oq�5�ت=�`�񉬦�D3H���\S�K����RǻJϯ���8W �{��ӌ�� ��L�(\�uu&Ȳ��ٱ�j��3�=���	yZ��=_P��4��'Ϙ\r׫"8t�2�"M0tt�AR$X�K�5DA$��ҷӫ��ɘO��#^�ǵ
���8!�B"��z6P�pX���
�<'��0z\�-
� �.y/b}�����02�˓i&��N^`���C�7w'M�	�F�s؏�m_�%�w梾.r���p	s�s�ӄTfG�zg"� �zo�y�5� 	���o[�.�Q�K�s�L�&�}C�	���H���g?������`��n7/��Ѷu�0���Z�z{����?xv/{�$�8$�}�������ٳ����_��]�Ke�5��P����Ā�ӌ3�5NW�>�Q��BXp�O�G'�^�M��4E�������M�e��p��\0-w�5��՗d+`2ں�1
0F�2���''zi#*>QP���w�Fe7�n1��ssȪ|��D�B�Zy`m�@�;F��☁�J:S�I����ظUɋA>^��E[ V���b ��#($1�A����j�}c��C���)��LV���+S��(x`
��O��r�Y��mz]I�<$#&c�]o��� -�C�=��u �.�7�T�z ya j���^�)��t��@U9w��"U�	���5@9b�D���6���4�/��	�nd�׿dw64�H_`Ē��<yθ^e�I2�&i.P����I&�vH��Zc��'H� |M������]�HnI����*y�.�r'4z�]�D4'�)|�@��'­�n7�+ c%�-Oh���0,'��^ɥ�e^h:���v}@k;ڶb����3_k�vR���Si�]�h��׆��K���ے}���.$ ��������_��g�/����Y|�o��v��wB H�����R�ԖR�r�p��� ��e�����X	 	1ȇ^܉��Ą�LsDHɄ�ڗ�X��_��a�H)����I�RTbe�N77�n%d���
����򨤇k"�2���S�7�|/���7��,��!H) �d"ꥨ�̋#���نR,�n�g��6V<
���uV!�ELƣϝ풸.����y���أW�
���'.��c6�k �FR��r4��$���XX��TH$̎\���ׅ���Z����"7�9�o��0�Jf���9jWIeb�{� �	O	�NGE�C݆ό���c�F���Q�tHtM|��O�/s���u"!Yv�l	D-�C������8��J>)kx����h^����ɽ�xU��>��P� ������U�~ �;G,�e�Co������x�:�D�����xI�׫_�\0��Qk���;�1/ط� {�|~���o�oW��������&X����_�������1�;����	�BėU�\.�o�����;�ۍ�jն��v��b�=�-����o�x��2���z.�zh36%U��6�e���ĪUZ�1�C�r�W������C~��dD���<Q�4�H��s.��U�Hz0�&����p74���6�H7���[�9��&��Sj��⼏�&�Q�>�%F
��{H0�����i�Lי=N� Q���w<�<���-?�\�ZD��=�|h$�?��~��F5+�"%dأ{�}}�����<��Oφ[]_��m� Ow1�B��D	%1%J�F���/.3�S^S咽5Jm�/���Muj\20��/X��L�\>1�N����c����0����*� ��ph��xi����q<��)�i��~ǯcx* h}$L����A鐈$�X��n<{5�ߜ����u��u���4�P�v��Hi3*�GQ��{�G���y9����Ck{ؤ�\�^_S���m[�s������7�vc3Wl�=|����W��o�����r��ˍ��i�]H T����������f�J�Ic��e��i9c�4���2��< K�7O���:M3�ە����ޔ\��4am�ġ�����\ܝˉOy�v0�1�����w���nx��W��X�x��5J����	Hw����>�"n$�b�1݈�2��^
��H�7�@	0���^G�@Ud0j��[ F������X4#+H1!A�萔8��ܼ_��[�����q~�VVހ�A0�ֿAS���o�|�&^k]�>���jW�-�L�M��v{�������^R���s.ˉh�O;�M�����hW����.� %b��t�]hx.��X��k��a��ХTb�7W,<�R;�b������B�������#�?�g�FP�7����m&�a�Eu=�����~1�0����oL0z�h�H
� '�����?Q��2����X~
�F��y0��5S���|��d=����J�hǶ>��+��=��^wl�G�V1/l�#`	��3,� 2�������؈ lۊi����%~�����?��������ɀ�<
�YȲ"�'��?/�����_�~[?C�/>m�(�O,�;��|�)�H�ה�V��F�����ty:Qm���v��i^`I�?�j��sF�.w����݅8��E�u�z�/�ӆ8 �=T$j�Z4<Oz+��%�J�� F#����Xu�@�z�bJ�9Y�h8�����m�pnxz�'�
WP.���6P	���=��{�l���#���E�Z�F��o�4)6sY�z5ؽ�L�V )��l����������^A���Ve��D�{x;d��A�2�["�L�:�Yo#��wZ%9��MJ�l��[�ǵ�<�!O"W��6�%� ���$���ղ�٣�CW_�V[F��SB��&X��U1P+P�)�#� �DW�����#Z��!E����0�)=���þ⏉���<o�5I'���=GT�������,h:�R��H�0%�P��	@��e��[�Aj�\�z�Xo7 ���K�}����=�rw�I�ͥ��HĶ�[G%���\2�W��oP�7��Η�=����RΨ�����r���m�ط+���=�Dq��d��G��m���A�1�pC�?���/2�@��Q��r��Oo�6���6���|��3ն�ĲI9����Y�	%{O�וZ���2c�}$f@��T�kS�Ͱַ���P�D<��"���4B�A�j��8�7�:�<��e��΂1}�p`�tŉ��d� ���y
%�"�JҮp>���Uś��q��G	I����Cj�@ (3�6c�١p� �#X9���"��,��P{(�c��I[ǖ�ľH2���d�p�������㠣:��`���D��u``Mp���	dJ@�v�o�kX�3�����9��C�fhZ��_J���J\�*�dUύ�y�$J�Ip�t@:4���M7g�g�cB"�k6�����`-�tO�eu����Э`�����	~���v~�҄T$& B�<[,��U|B)'����7'�X���^��n��)����{�e��vZ ����v�~��<�}�a[a�ىC�R)<�Y�c�}��'
ۢ�L��!��iwbuYP���X��c*�|�����4c9?�⣓ϗ��c�6G*���?��q>�3x��'�	�O �p������������PrF�7���|F�NX�o��m��> �K�^S�P�BNGx�����F�����x�� ���G|��܌|hH�d@����Or?�e<1H��!7��L��:��!y:!�a>n�]:h��ف+��<�"m�
a��_����.����S��s}�'����� ����&9�/��O�2�&���6~ 2āS��F,OelЙ|	�0N�Oj)x��,Hv�1�Q]��=?�nq����u�T�i-�H�H45)T(+l��5�[G�J���K���t�Z�� ��b6�R���	���pMdp��MdV�� �P��T�+��1 �������\-!�5ѽ�SBp\;�5e�E��$OH���g*�-�!�ۜQ��t�T4)ev϶��������/eRq���Rf���q��ԏK|��@�Z��ߠ�Hr9)[���-R�J�EQ�ǒR����}_�n4~j�<�������f��8ݿ�����kڥ���>��0������zE�N��_����|��g� g���;���� �&�ұ������<�o��\P��o\�a>]�]?�\�˻Y�a�B"��IS)O�0���G�|�o������ V��< ��ql�ӊ���tT7��"�y7��G�SE��W6$&J��)[����#��ȫAFU����!���c���~h�j���	[9O�{���)�ap(�=�+���f4���w�1�&��-~'���h��t�@����5�&�T9�:�5�h���M���{N
��M�F�Z=LR�$4:YZoZs]լ_w���ګ��L�IVm�GF=���r�=����.��]��W��u���Ǟ����y�t#�e����\z�O�,	j��xn��/]2?��J�a<wME�D#%z�{+B���f ��	W<	��P��H���`��J��|����H>���H)c��>��7l�7��ew�������<��X?���a�,	�O����iƾ>��Wg/��i�F<?��/{o�kْ]	�����������6���.�m��e��6� �'���B���xB< ? $^�o ~ <����nw�U�f���Z+b�0ǘ;��3�O�Vf���Z�"bŜs�1��@1��'���X�@��&ؘ����v����`�ëO��7~��~��m��)�F��8v��5��`eū��w����1F��.|�5>V �y�_�����7�/~�/\��T;�M��z����d��DԒ�����°-�9����7�Z`���b0Zg�/u�0���S�����3�Ӯl/�J�I� @F��(FC���%��`��yP����i2`�T�����I��6��`5`IcG8屃�ԩP؇�w���|:�tvG��n�%�b�����y�*3 ��W�}<?LGbrS8� ��F�������F
`���:���(��
�Ғ�ѽi��r=�>H��kXr����c��L��F@����tRZ��*Ѩ?H�J����̡�P���^T�?Ocĕ�E4�ZO��T�_�Z]��`�%O��ϐ3\��G	.�5����)lslf@�,D�Dt�e�x���S�1���4��j(Ip~�Ĺ��1�y ��������`�[:�X[��w��Z�YZ�����1$[�7FR�q�x���2Hr8T��.X���?=�I��<~k;��ί>����r
Y�cCYC���FU���w�=��,�;^�����|�+����7��i�����JT��~���7�����/ϗG����EiQ�jީ��oyp��Q�e:0��˙�A.:����ED��V��XN�X�_�-�����a��.'��`�v�h�쵎�9���ȗ���l�������BE4�	d+ˈ�`,u�c���#����� �%j7��ȵ(�#:[uEd��*�х"8�}m��z~Ҧ���-��2t]�O[�2"�&n��5�0
� ��(߭�[ѣ��;�_'@΂)��Q�BU\����~?d�B:=�<�]$�Kr��
�������`�,��\���$yQ��̫T
�do�i�蜨*%Sz^�I^-�+�}���$!V�:[�����(FN�&Iͯ �,(X�4#5�q�vҳ�#O'�O5���EC P�F�Ag�y"un�:�n>SX��I礳�"q5ӓ���X���gj���]�'�M���(MM�x�!P�ⱪ�mY���`�PÔhX��* )����{�h�[\���`�^���şE'��k���`���3�,�3�t2��h�/������+�~�����K�p���W��cu T�;w�{�Xy���'���?��<53\�>a�;��Q�<_'ٮ���MDt�\~�n!��*\�XQG�q(������J/�S�v}30� $�~8��V��E��Cu�|����`�Y�l�Hc"�`�԰�Q�`��Q�����|�`�8@g�i���-
T��J�S �T�.A6�a}�����=E�l��4Z��u�X����c��{�hr⬦�ȍ船�S�& �B�Y�ߢ�.g!��-l��-���a�F9Ӝ�݉�D��~@�A��c��&�!��w�S�ܭjA�Ju���Gt���m��.@ۣ�n��<�7ڋ��M"3���{>E~��P���0g@PS�R9�48�E9�q�@[�����17���Ym��%��~VO{��V\���θC��h��'�hǁe���������DUP��Ń�s��)E��_ (��� ��[C������&��-+N�G���-��x�7ฅ2����o�I���)ң��\�ӄ4�Z��g���S<���_���3�#�~���������v9�R����g�����ώ@ D|_�+��1: ���� �+ �[�m�Z_Џ��	����~�X^G�]�κe���#2s����'�(j���d*�7Pˀ����`]֔-UMv:���|�r~L�=��-�>G�i���g,�G�zߎ�&��Z��qcě*g�hn�.�p{:Y߯h�*t!p�����#R���4����V�4/R�a�u(i4�#�����F*;��΍������P�����Y�ļw���: B�4�����^O��X�H�E�&i�%pwv��@�J��z�+4�P�D�sn�c>    IDATF>��a`�K��4��R�DK(����:J��Qр�9읕*�>W��/���t�OQq1�Ŕ*��/ �	�0�U����
�݈��{y�k�˒^�oE �{ 9
((�1�6GpY�c� |�h^x�1�#;=�U��G#5G:V ;:����\j�(��1�4�B��e�9�:M���v|�#Dyꪎ�$��2��@ہ�_B�C�!�G+K)�#��)��_�����Ztv����u��*^YaA�vk�7|�����?����������g?��0R B�@���W��c�xS�F� O�~�_�������z��{=!"� ��S@P����}�1� C̤o�0��Qוd�=�T?nP�0|5s�l��2/���0D�����|��0�����-�[ ��R�R��lw���-���P�H%8'��=I>a���)��Ȫ3��hGg�ys,.��9��2� �1~*)����"����k���o{:α&yL)�}VgtVA^�gu�0Vy�����cnB�enrf�ɋ�v�֩�.�|̌J�ꄞ�4�O�:?S%I+ +��KTBķ@x��[@��~c~���rZ���DV�-���k�&]��:���Hg����P�/���q�^�c�N޶!�0�Z�ÉVE�.��2�!393|�D�҉C\�@m�����ť-�"D	��淜B0���X�aD:�� ��~A�{J�$κ�Zbo�vþ���n��v���eY��+ΗWPc#�m�܂�_��?=����
חwخo�x|� �������0�֮ϟ�`_� �2��t�v 퇿�t��>A���4�� �����X����� ��}?���|zx��G+\xǲ�#���)6྽P8wl[�� 2�~(5�xPp����:������(=�F��.�}j�����uY�5�5�,'��L����u��}d� �>��@C��A0%_㐮�	e!���TGU��L(rvEjRv0��J��)Iȃy�?9wb)�<�e(#Z׈<{|?����]g��'ֿie<kF�����	�q�91�G��k�"P�g�Ш̇�R��c��9���J�]����Y6*e!��g����'�g(�wfw�WB��P4H=ӊ:�	���#��~���j�C1����-c�3��8%�@��zT�1�h�K�D1,r��^����KX���>ֆ3օ��+,��XKYB�>�,�U3�t$���{��֤[�F�$(�$:j�[�h�5�u�Q�Cǔ�������q��]!b����7_���*<���G
�(�V��i`���������;�S�P߮����^{ܿ��*�����7��K��7)��x�~�_��ś[��������k)�=�� �u�tnH�/�Q���P_�0 <ڔ�5���`��$U��^���Dȿ`Y��A���-�A�s��uo���q���ˊ�t��� ��v����y�c�Ҟ�r	2�M�a���,��(Aʃ�遈j)"��$^�e{2�0�F�0�I���Qv��g��d�#`w���St�ZtS�y@+�>:�)�n�<#�����&IU�����L��*�>��TW� �q�d�O#S51�"c�|5�wg^ʘ�p���J�ZR�Y�C����s�<�����fS�Å�.4@�1لɐew�u4�	��Tƪ�X��4��3b8 u9���q�Y�R(�$�Z�	U@�p�b�2ڗ�aT��t�2�F�|��j���d)��D�����c:36�:NU��[ql�X��V�6�8��v��.�',�'"�~�k��j+�:����hǁ�mQ�NO8=�Č�}��v}��]��P�`���;J�`��(������������}�9�/��ʦ����������g��,�a  _YA��� �����������w����}��Oۯ8��(w����CJV5�`����V��T��Gn�)��Ao9���_�k���}�[����Vx����YAk�Z�".��4�$��s�SuX����q�q�$2)�7�
��W~]{2�����)�`+�}����R6ؙW�y���]��2����TN���#�ևb����>s(�Y:y}�����0����^Cҗs�G��O��`�
щI�'Q :
�����3�8�!�49�'���4-���NkE� �:�4;gS�!�ޯU'�= (ї>�i��E��Σ��c^ ��[ �+5��	��&8�ï�jC�C���r~�{�A�Ta)fKV��	W_�t���3�W��L>�x91�@��T ��je��A`vW>=rQ-�pP%^ՑRX�S��+T�,�� ����Ԃط�h̽չ�u�cG;<����C��H�t*	�xy�g�>��w���)7P������j���rz@��,�k���������1n�.q8�X�L|l���Y�?9 /[��U��Pj}Ǳ�D�Psb63�[K����R�|&����
���{��#�5Z����8����4�'��o�cY�8=������4��������.]�{r��#ɐuҊ\FӘS����FN�J�"��QCF~�I�\��NQ��S�]C�?s�b�^|v|?���lKKw^U�3�5ySz,	~D�}?��QD9"�N�F�|�l�"Gȡ�����<��;�]�H�J�6i��X�Wc���_��yI�R�2j�@��f����3+U4v���Av����܃D�h]�힒43���3v��u���rۜ;��C3�Me��  `r��h�ˁ��-t�P�d&\I��:���t�����蝂dN��A�{[2-hD�T�i�Z������[�GVA9UU_���1U���P��-d���q�["R��3�{Cۣi�<-X��/D�z�II�t�"�/����G�ط�\�Z��~�����ϰ��AC�/������9��P%�O���7���7��Z�`�
�����t��{��;��P�;��k5�u�r~�7 b�G/��hf9]P� �Ǖ���(�ʨ>��xo8�(�9=�N}��C߽��7v��Ӹ����.ā�!k�$B*�uB�(5i��f6�t
@x2�^W5�uYQ�ST^���*g5#c�5#c�]�`��a)	f+!�R�ht����tR�FWD�Q��2^o=���qlvD�?�]t���tz�;�Zh�����A�m�9��8g��s���0����%�$_����h�k��qRdW�A�@A�K�9��rEn̵���G�'���X\�}6�1��t͇�"�n+�5�Dd8+RL;��i>E��:�]Z�U���;�K�?"6�:�F�_JA-k����]l��l�j�ꄎ����T�3#�������	t1�l�:�C_�
������m{��݁D;ޘ���I�r�r~�@�B�m��W_3K�# 8��8�^����py�)`���;��������o�4�v{�R�F��2����ĺ�|�b9_��B��������?� ��|e����P��\�� �׿������~�Sxk!7�sǲ�������\p�/�+���l�[�
��8-��v�خ(uE�7�����lgJ���q��:��}v�9Qƽ�_�}���M��6����P�`C����#��5�jQʜ*�����"-�F��E��y��%����I��a�g1�e�A�'�5�p��5�q6�Z�S�@F ����wFV�2��0�
�լi����:!#�eE��֘Eo��uF��p.t]G�c�!i�8X	� B4������&>a��RaR<�9�ȉ��X3"UY�a��qt���!'�$�@%�����a�*T��ِ5��6P8�w�{F����Bq�Q�;]��k-KN�[�0��B�̆���N��~77��RQ(�C�p��f0�y�	�������F�&X�� ��R��+N�L287yȑ�ڄ�q��[	�zB�+ņ�?��ܤ0��Kq�|8����hH�3(����]�{Cu
�Q�w�eE;6,��/eA/�v}K5�8����AQ]"�z\�a_�X������ht��r�~�X��P��g�[�{��{����/#Na����19 ����/ �}9�c�Rl�uY���{�)`%U���V�{�ҝ/�J=z���Hѧ.kl:8�E����ǁ��	��o�$8H]uY����A�Sg�
F��N�AY]Q�3�N��;_�0"�kf�_)(��,mb�����K1.��W��DK�=Lv��MF���i�E�J�9s��_�}
�W�Xk<�-��L�F0��d ���G�0P�&P���_a�y��H�L���20Df�ƣ$����g�ʈT�QdJu�}ZG:n]yg�|���F>Zm/�.�_��H��{�,�'뱿,WАI��f0[�!l�OS�A.��9�b��������g���cͽ�	;P�r�F����ÑU��D���~�"�,��c�'�������,H�n"����b������g�p"���8��v���Bh2�Ze�co(k y��]%�(7��i��Sr�Xj~l�gv5�qKl������oR
���-�R��	KYЗ(�ޮ;?���k�wh�Gci�3Ǻ��a������'�r9�z�=��� ����W�����%�������|����7����>},��Z��{�C�B���ޥX�h��5XDm���=	}��%��D������+ �(]+�M\�sT!�[��ue�aPk;�q<�R�:�ş�%~�.1FC����/<�=���YB�b�R� D�8=DF=���$���q2�*���2`@����"��H.�L�m��Ao2 <@5�,�"��g�{��Fб����H3�KK:Ҁ�w*@�IQJ��Z��Y�=G"qA�Z�ɠѪ��LW�|�"tC��șy��n�R����M��pI6B)"~ Bp�����1�1�;� �sR��O#6�VQ��=՘����;m��#ι���,d$�i~�����.GO�>�W{8�����[j�lw�u�]*�c���2Wbp=lR.���N˜>2��fA�^��D��ʒN����A7#wI��ul/0v���)Sw��1tW�9�,k�$H�`Ǳ�R�H}P��`jQ`���฽��7<<}�o�P������	��[�m�YZ��K��������������������� ��gBs��ַ^�ɟ���?&@��#��
��|�����o|�S`	O؂mکL��b.���ʮy|т�ǜV6��a�=3��q=�a�vE߷<P�fW
~�ԭ���~�hAۮ�~stW㡫\}�PI>��p�#���y)�)�z�#�(m,y���2�c=�B!!:���K�Ê���0�3֦�zD�C���XD&�juռ��,	S�ӹ��]7���2�e��A�%����� �F��wu�<��0�	��{2�s.}�h����ߝϊ,�4:�4�]�M��0�.# DT�{h@��컌c�	�gFâ�8���"�8�5/1���@2BG��C뮶�el�Ճ ��6�����ex����J9O��5+P���JY�� ,i�Lr���4��}�S�f� ��Ep8���{�\O�I)���$�����~w�I�I��=	���D�����p><��&�=��:��PO�;�5jr�'�/�U��[44[��ܔe����8�~��]��ROL+D�b%z9�q��oN�r�t�r~���:%��`��?�����D���,�ǒ���������������3�6�Se��J^�n�&�C�*�ϒ�h
x��~������@=���a\�5��������u��]Q�`���U޽�ňD���دq0���2@Jɲ��1.����\L��9�jGo��	Wc����A�J_�]�Cq}�K��p�Q���o���=�-Ty�Te%�bØ�h^6|��%~�A��������
(}�8�H7� S�1���Hՠ��T����;z�����)�]-�x������j`ι)3��y��i��y:|��X3!������a��p�r�y-�~s9��Ww6��_�V����ޥ4,�`�{���o{�C�4h��_�gtn(ʀvF�*#o>@�h�Ô!�"d��������{)��SZ�^C{gAY/�j��7�r2ލ2�zJ��³Ey]N���~zǲ����������ЏH]��w��2�����8κ��(����a�̰^^���|��u��S=�T�Ӊ�fG�,ˊ��t�}2���v�V�N��t�'o��R����y 3�CE�}}L^Η��J�o���o}�J�~{�ҏ��I<
i�5����}G���qlȞ�������Kz���; �`�Z��-e�I��=k��Jj��Z��d����e�`eu�����������d������-��|f�ĞaQ<���3C㖂Bt���.�*�?��3V6�HN�'H����<�?d�u�{��s��ZQ~3��Ak��p��	;�:j@w�vJ*K�M�W~~��V�cn�H���a��1�X
�|��L����՚��1���y͗��n�9o�t F�=������8�Ñ�1~�<��mv@��`2m�Ψ��k��h9��꼦IG��iV�+ԭ�c:� !�����|��]� `p�וK�g��>�����R+�ECq:XA�4X"��>`in�0�~}b\]-7P�5Z���䙇b�;���y�7|�c��D�~��}!���
��+6��z���DT�a]�XϏ�F�6/O��{�~}��^���^���9v��j�������?��o��7~�"�#F_��
�<`��/Q �\�_�g~�7��o���v�r
�;ذ�ǫR�`�S�Er��Ju��c	b])+Ώ�`!APPa��t(��Jx!��^�j�a��aߞqGB��Q{߃�M��aя�t	#��i����Y��p#X�c�aҕ�s %cy����d&���\�+�}���Mx�7�FZ#��Fӑ�CqV�3�+R��=���=�0� j)�W	��,q ��q��v<�u0j�50������2\��D��)Tz�~�YB����� y`���1M^J�Oi:O"���t )f!�����n�_��I�>�:�����wT�_�FއC�=��@��ԭ�VU(��'�ewu�Nr�c+r���o��~�� Ҵgz�wHN�{Ϫ���zz�������u,���+7ǛϾ�u.�H���#C�M2���1�	��ۧ�w`!�+9�XTc*"�bC69RLB�
j]�~�BH5T�ʀ��vl����.="X�<�A!aό�ǎ�_�}�ՊZVB�=S���ĺ�au���Hg��EY��wxy9V��4�Ͽ����� ��?���q��':֯���-��e)��&e3z��h�x���rB]Bk�.kХF��{���ɲ���h�F/�[@V,�Lh#Q�t���r��ݍR�V�� Eƍ�+2A���ʃ�<�R�s�9M_gݿ�y��K�e$hl�p���lL��s�4F#��r�A"���m����G��w�B+�}2f6�[t/1����!d���^�k#�F߆A��R\��Rz���Cm��TT���&�0��}���u�E���u����z�}1c��ٸY8��7M9��i$�������	ת��F�ɸ�a|�~���VD����%���g�lP�~����'@]��g$mr�r�r�I4�������ʱ���������@,]��~S4GA��
���6��Z���Bm~�#���/!5�{9�����3�Rʚ�+E�dї�C�NA�CB����3�zw����8�_E�������w?�f︾�c�����7l�ʆ�v�v{ �A ���i/��Q�xn+���~����-�0w�s�����~����g�~��@
7j��f_��mpC���IL}�uX��~�yX�9��9H�T�r��-̧1��2��[H�!�!����G�l]I�TA�$a����m��¡�p�N�:��� "��E�Y+,=��Pg�x�lZ����U�ޫ    IDAT�;�΃՞��}���G$+�_��^0z_$����݇�=�"�填�iK��*��Q��-�9���}<��F!�2�7�ǫ���%jU�pf��#'���p	���F���}���Ġ���u��F[Ϝ��PP������'g(�I�z����yE`t�?�P��=�=.�"ɔ��i���yA�g1�'CE6O�XU��,�"�!����LLؤni�Κ#]��E��E����$t=�\O��H��guz�~{H��
�\�49�:�SmCTDE_��Dz@YN<+�j{4(3F⵰��M��9]_G���[4ҳ�c������9J��B`@]V��pܮ��y�o��Y�'��~���G�<���F� ����~},$�/��?x�W��_����	���8H�N�(��X�-,k�k���7�yC5��/��I
���g�`�[���*v�q܀V�v��U����Q
8����+,�Y���PzG��Q�k�8��8O�df�i�>z�a}L�!s�p� ee0�DPz@|�!s��%ܡm�(}�7Ѹ����`7�Ј���60�< h��1��(N�;��(z/(�e���,��%5):�.�]��P���@�e�?9A>���D�})b�7�#Hz@���o>����>�M?���9���Fӳ�/5��4���\�a�P���J*�ȄE�0�1=�/G�Ɏ2}P*��r��Se���r H���;?2��>��9BO#+4���X������zq�R��
�t4S<b8h|�7�H��D�2rW���Pj�5d�G��� x�m��,���x-e��z���6F˅{���f��q�:��T���]kR��.L�P=m{ηPо�0Z�;��j�ܩ��4G�kt`��D�L�D���Ώ��]���tsT�
��hY~`��ॿ����/�/�h�~t_�� �G�m{�<=�جk���	F�
lY�`���H�)�XНZ��b���EFk̡�!��pn����1����ʲ:��v]�#��C"�m��H":hU�c�a����n�ރ���GoŨN�s��?eg���5��	jfTev�:e��:�'c3��s>u�4�ޓ�����Q�ʻ�0,�L����Ⱥy ����Ӹ��PFke�N�|>�x�'8 J�tT܆����\���C]���(����c�����j�2�S�
2��*��]#�Q��2�e�\�^r���{4Ġ��F�h�[WK�0W`���>����ո����/�<(C��$hr����r=K�6�6���#]aH!*97��PG��į �el��8Q��'���o!({a�	 ��j]P�)�ޓę��k�[��9���;B�HM�*e�hNUbN��o6b�g)�	Ǳ��74�h���8�+�c��ъ�kw���z	�߲�p}�<���=��5�F$N��~���o��� �c�,0���� �����|�F�ߚ�Y�"^� '���@'Ap��|K�c)u�rl`sG�]i��$��TA��q�ކ&u3ĘX���M� ���Fo:~����D� ��CtdT%h\��$��/�M�@8x�g���{�'� H��B�d*O����9�����'��W}>��t"4��ӡ��f4��H�#�o����R�O�-��X�>���L��r��� �g��4�~��� F|.+���qs��)b�)"��IX�b�#Ok�{�~�Ӡ��= mH�@��t�k���Ƴ�!r����d���E�� ���'J�5�th{�_����=`�tp��DD�PKp-W�;����5$z('#Q=���
`R�Բ��(2�zEGC���@Y�{�h�I���0��ǲqg�A���q�FNT�A�Y,�O�ccs�	��BY��qaWRC�`�xy��[��*eAnU?J�{��H���G�)�@��=kO5U�~�����|�p ��+��CO�T���? ������oN�t{y��ë0F�-਩�px�`GN��y��1괨�-�x;�F����JhZ�QY�WjI���*_��;kn/Ԭ���SD�L+(�7�SfF3��K]���t�!��uF�芶!j>��ZD�w�,'��y����A9�!Dz�=/�X) ˷������GF�E��%��^r̊"E���!��l#�UG��w^g~�3k~�{�2�+�Vd���Y���Nys�ƿ5����cQ�IxR2�[�;�"	�i�rI& Q�0�
p���f* ��a����^/�헀��ɒ��\w�)��X��{��@�Ł�{:F��?�~�Xyy�nA���'�P)�#����)bڌ���w����� ���x�3��$����h���@�d�7b�иq����(6��R@]��ù�5��x��k��Mz�����R��]r�}U�QYՏ=ȃ(�VW���z~�~\�,����S��/_D�B��5����Ղ����-��z<���_�H���m{)�Q���o���@}>jY����c�xr+���7�FN!�fw��~f�@z�e��Rֈ�	�B��d�TG2s=t��෌���,�C��E]�����#$2�خoÙ�R��$U;{��Wy����eO�]��>������ZR,y:"��9�����DpF|f�-���E	=-�"zB��HF�#o_:�g�>�T�5�"���-r��u>'9aŦ{�����s$~r�di|�芹�RH��n��U���3�1̈́7�����H���c+
��y����pc���CrI��������,m�<j�&�p9"1�՞���J���1�mPW��5[R�NU)2�3 ]c�5��'')�!桧#-�N��4H�\2����U�g��z��2���R�t�R���V�b9=�֕>�"�3Iz!���B�Rpoq�yv��F���N��:RR�cߢ�`����vD'CoXOOmt��P/�s8)�c=]�2�َ@TOOXOt���z�7sò������cG]/���@_t�w�ww�w�������뿍� (�~s����Cw H���?��f�ɲDa�zz�K�ɢGlf��d�Ա�d-�{�Y�AȽ;��I ��
[(y92�Z�UtWIaop�ܘ�%"�����)�*�OX��B�`&ܻ�r���tX��zDj���\�FB)$HW0g����L�KP��)o�*�\(E�C�q���3��X_�j�>��B	b��3�����8 4r�l�GG ��sD��9��12��w|��:s��Yv��/F�#Q��I�ݔ�{���P�W>��|P5�#�+Q?ȱ��56cft�p>RV;P�!�#b�d�#�yr5ҹ�:& �i�sN,��`	�׌J���mG��= 8FQ�y��;�f�zn 1��.�L�9��Y�r���A.�q��4���ǣ.k0��u886z$�Lqg����8'�ib�i��RjЃg�d�9s8Z߃��B?���A�3�ԅ$Ć����G�.�a�RW%���o�et9G���w�^��zyBoQU�4@����0���>��������p ������/���,B�� ����~�~���}����B/ywB��`��2"���ZJ*M)�J�6����J�/������ <;a�P,�b��6z��ر��_�� H��8u9OQC�kE�/�|��<thЀ*"U������(�fqh����$���(+�ID���0 B4 F��7}�uK�xxؚ�q��}h� ��Ѯ�y=b�%��A���h=��8����#��@1���K�8�T!�O@V=�z��:�s����33���9�C��~i�� ���|A�;f"#���8S��k����7��/�G�C�
ȭ2��Ŗ���@߬�7�AH��-�&'�a�:F���L���]��x[:�w���r@�0�������2m�(-i�*���{�5!�|�v������P���`�G95��5��R���d{�v�8�=Ʋ��?`{��b-��ZV�ΏD*✬�C*��#���ј���V*n׷h������*�Z���at:�B`ڱ���k�}�<=>~�(�G��� �s�?	�ͱ�^�ң�ĉb=X�*�)%�v1�����TF%;�:F���`��֖�jk;J]py���W��N���@]mM��4qQ��ٕ�t��bP�0�t��
:��@��U�-蝷�����P�c4���e����L���4�[ψP��M�?7P�1���r�F�![��ʎY�1�.g��DF]�ϑ�ـ��ߩ� U5�H}�s�a�a�A��kNG(���y�܇�,ǟaЄ��<�d��9����R�u^g9���"\	U�Z �U-����a�1"\�P�����zE�_��N�����:���nvN�8S�#+�l� T~���P��r�z���8�K:�%+4���1��T�����q}q�}��a�JE��(�����s���%�t�mC�ðf��7�U� �F[ȥ7D$:����\�,gX��~
�����~}K=������z:�*�~��R���S�;��3n�wQ�]!9�>�B=�;�h[�J��N��7܎����7�w�/Y�9�Q������^���?�k��+�({�:�+7JK�e�""&����`-�X�p�c�s�;�����|�"��������2D1d�x�*]z <#h�B�<^�R��шR|r&�#��<q��5F!���7�x�z�ZJ�ΎC80������Y���,�ٰ_>X��/�aD��̱��=x�z�oʝd���p��=���|�ø?����!��׊�U��srm�cM;�T@�P�{��;�*��Y2�y=�O(eU�s�4?!ӧ���݅�1���gv1Z��"��w(Θ��ґҺI�w��%7�
�Jq8#�HY�`ԓ�<�����D�B��"|�qkM�3G?=������fd��<��ֈ��B�{)S�h�v�Q�l�η�Q�Ѝ0�������d�z�K����*��Y؏�<�p���U���a�"����Ώ�u9�{8�VWj�D`G��Y�Ӱ�����?�X�A������h��jon��@zZCۮ��@r��/u�.r��u�ϞoCh���#��� ��� �Z^���C�0�&zȫ�7�]^�OT�Rq)kC���=�u$*P2
`����h�>��;�(I�:�q-j���ʨܥ%�q���N(Ob$d�����LpΡ�.�t�î���}S���#<�Ǩ3�I^3��z��ȉ�h	�e9$�@�F�?E'1�P�����=�C�o�ݟ��է߰��9}��'�r�8&��5�ʽ��6lml�l�4�#�|~K(��5f�V����:�ͻK`2���rB�H|l�iEL�M�F��1��~W�����YR6�W.���%��<�/G�\�R^tT �4�,���4B�fN� �E�>	��� �ʨ�e���B)>�����$;6�Y�buBo�Jttvu��#t�`�5��VV�	��*9�N��Δb��Q\���mP�C�t¨*@��!�	f�ￇ�P����1��C=0Z��ڱa���s�� ��fhVq�7[zr$t�:G'�Q0X�^�;~嗾�Pk}�/'~ȶ�~}���p��m_�z����>
ٲ#a(*:��$�(�ȍ�C9*r�^��-�|C���u����G�/2ݩN����	�G)[�%��{� � �G>/�~��N�å���?(,47��nfH��u)��d���HFk�KN8����!Ɓei�$�ӁpW�M�!�P��/
�hT�2a������H�d��ax���C�] �}�sg�M�͈l��'�:���_�2�'cΨYc�i���?eHt�`l}P�R��j!;r��-����.�b��q�#�(#t�yT)3׮r3Zc�Z�}�b��j�,G(��cZ��4�i�@�x��D����8ȹ*E�K��xV�AP��d�3MD�ڦ�l �H�qP.xv #zV�@������y�E�^��������eB��y(�)�x"�)��T9�A����z���ط�P\��m��8{z��*K�T��0M���3Zk(�旁�vykL!F�����o�EXNP7Hp�C)9 톟��g���������十>J��� `��PJy�����yw�?�~�f���O)O��Q7��R��7,����
X(�9��Wo��D�ذ����!y�b8������ry�ROY�)��=��VB�2j~���0�cIc Jez/^��y�FF�� �R¬�z��pHP$p~ðB𢣫�:±�Cp0� �����AO���	��}N�^B� W��0&���0��m���x�ɁB���8z����|�~�d��Ɣ�ﴅ�#c�(����ι��M�̦5�MU:�����R�����/ކ%��!C�O<HV�8���	�D��Wɔ��m/P�GB�A$��v�P#�����|H1=#��`�cdD��f�Vr����6`٭�_9���5z����r�e��At��:]�¨�M��V����x	'��M�� ?r���G�LGX1�!�h��;���pq��S�	���h�T��*��-"l	(���_��ǐ n�R=_^c?��cG=�CB�Z��������<���	��Ԩ8F
�d�Sh� R�DY�����́�g��~���П# ��}�5}_����������s��9��dD)�c�\�2�h����%{���X�z�FO�������& `�h��)]Y���Y�LU�jX��+�t:GUl�.�=����S{zT/�FD��v������"�r�:�FD�0�"�P���ucv��p��@0��"�|��݇L�d��$/��������t-�zm5�����($�<F�f$Ω��t90�Wp���9JX>!������b����7AHȟN���c ip%"����Y�9/re4W��΀�:�R��q|�'��HDk�}@�j�-A�\q�w�DI�߁Ѯ7n.'`�Y��.b.��q��c�g$Ӽ�q�FF%�:��ӛ2J)�CL�yf��&�V�-�!2��c:s��)r�F$-FY/(����D=*�������-ю�3�V17�$AC�zy<�����z�:��gi]P�	���J��������~����,��H�%����ʊ�;nۆ�>y����G��: �� x�
�r�n���#��5�uY��Lymm̞�]?���؆B1Ae�,�5�1�-y K�7���2�""i��q�^hG��è�HAğKj���5��D4�e"<�(���I5�Rt5���@���y�����s��q��dg99\��g맃U�|8
�,��&oB�#�ϓQ�����%� P�cZa:7e���n��2�w��M�Xɩ������#3�9��͆*ǚ��X/� ÛQ��H�H��=uF�u�t�\�q�)��p���Og�R�9 ���.jn���%�W^澟����x�Z��8R4�'�~��i�]����h�����V�~*���>�g Mr�F*&���*/�<t4Rzw�.�"�(B���RB��,�rX�)2p+e|K]�{ȉ��[�4���F1�x;Ў��Q�)�@'����˙F��l]�~� !�s(�3���r�#ʠ�zB]�$-�;���C�O�z/����أ��=5N"�a�5�<�t z@{X/��O��տ�O�������G��� Z�D V 'w?�=:_��ԍΚiz�a\W�c=�SF����J�"b/$���]u�(��%<y�t��v���QzS�N�f�v]Oi�Cp�H�u�(���� �* @O�C��D�ϕ%?��������������}��׭,��A��Aܽ�:}2"���q�[q ��=#���	(�-ڴ9g�<q#|8��aP�dT�p�{��u��'�& ��h�O��l��PVF��{�ð��g��!Ž!$dC~8#m�}�9��E]�@f����S�)ϧ�d�!a��J$�`>R3�ӡ��N����[�|�U�޻Ȣt���e:��Q{�v���%���Y�x    IDATdI,-��Dt���y���{ 6|4�dνOs��11zC( �H�Eg��\�E�*�y���,�S5P8��c�S��(�)��,K��e�1wa�7��؏��<���>z��u=���C�̘���8��;�~����m��>nq�R�c;n(�b=_r-�,�S�m�a߮Ѽ��tE�+܀}{a��a4	��b�\�f��׽u���2���PJ�Ì � N�>��z���t������KU}��,�,�%4�{z�	�y��'XI��e9��8�x(Qd!ѝ�WA��r��ΔA���uH��_R��v�.;0��CI-���\�BO�������j9�̥,H��*ꈘ���� ia�z�=�x/h��^Q�8l��"#CD'�������uD�ӵ�*�A�!�r+uD��t.ٖ���#�%�����=ԝ�"���DI���ʃ
�O9󉌇���$l���ŴJ�R�F�!x�r�J��E���]�7�b�}�ޏ��J؝���h��[
�3��̋p9�e�/фt�<����$�ʙ0�(e�;��;�ڋf�S��vʹ�Y�+��O��M·���57l8m��.�R�q�պjse�	Exr~d�v��}������p�Q�q��W+��"v���c���8b�T�꺪�(m?���ñ^����,��N�'XD�طp�\)�I>@��p�W�1��Xgs�c�a�wX��D���%�ׇ�  �����[�W~�����f����;<Rp���:��6�{���v�vJVDDċ���َ[x�O�g��Kd���1pc.Qu�9��@�C�/��P����LD�>����Ĩ�=)5:oʢ� U�d�U���/!!n�y��>�Va�Klq1������n��3��(^�����@��}�?]|����S&��7��(e@Cb>3����y�3��a?�i\w���0~wQ9/���0�#�9��U7p�4��X����~Bf���H����	����!��<F�|��Q`K�wUfd2�tKg 9�)��~w��SZE;MA�xK�K	)�e�$�@{�'�B�R���0>O$N�=�V��#B�
��Ht� z[4
�z��S�ӈ�v#�q�t���
��ܩ5���)ִGU���ذ���=�a�~�ҵ����@XO�	P+ʲ��gZN��L4w	q)����vH#�Ƀǝ�f:��o�����}�F >d{��_j�a,Ȍ,��J�ɩ&><�Z.�mC���1��bt媀T�;7Ha�1�o3k6���)�aw[�؀�V|��ؗ%*���v��ڑ���HG���V8�v H�R����ʡ��	�ҥ�Fd��Ö��9�<Լ�`E���g�!)s���OJF�it��+yT�{?�)g�dB��BiK̋���O�d��㸓w0�I��K�㚜��4�O���Y����0~�
��%���8�JxV�h��>H- @
���1}̯C�F���hW+c?���7 q�XM:|8�����Uf��N�.F�E��z�D9i�˙�j���6Gq�s�ʙ3�p(ïy�\q�
``���TEi�tbm4��g��i��1i�I
��Pj��՞׼���wDg>r������pk=M��TB���ހ
��ԧ��eYƞ��H*V�Z��(t�8=\PJ���-z�E�վ��a9_�����ʲ`9]����`,m-����t����g��F��J2^��q�7�hp�9�?��o�����z4s�x��#rC�/���aYO�%�F�ւ�RT����@��Ō��69��}���V��
�y�b==L�i�Zx��#�5��O�^�b>!gt�QŁ��arP��Q�Ķ���uE��'�[{I���[F{Ȑv�g�/sΗ�t������#��q�������KHkL�"��T��7~G�@aYS�2��4 ŦaX�>�Ia-��
��r�d<8��5lZ�������#�cJ�=.��d��ӊNS���1d@��qI
P����Ǻ�Д0��'�..3f���76?C��i�2m��jc����q�1?2�0���N�L�y.�����=� 
�=��q�t.S����5ޙ|Q��S��ij�����`�t��zC۷��#�>��hj�N��Ժƙ��^�{ro�o/t*Bk 90��>XKTJɩ��S{_牃� ��Q�;�����v���Q� '�%Ћc�X�mYƘ��)r<�R�Ca��A���30���s�?d_2�B �4����S0K�
����f5I"�lI����u��T�Ʒ,+$�+6� ߐ������:��X�e����',k�[�D��_r�{J�&��yy���⍈Sy�χ�OӘ��%�	���A�渌"\�(O�f �eF��O�1���#zw�W���)"�QLĚc����
'(P�,���3�۬wWiԝ�o��{ߗ�&�_�~�N�Si���������=�+��s�~�����_�����Գ̱*G ga�|�7��z �Ӝ�l}����'�M�{-��#����p ��4;g�ߦ�uoL�1b/�����A�|�et~�^��y^�罘;/O	��yn@�ʙ�Kj@�ٽ�?f���'�6U����?�U�;Z��d��@F󢺞�9���F���c�z�)=QVL�bGY�p��!УJ 4�w�Fjg,����฽��s�q�֊��Ep���*��`=?�����{*�uw�1�� |��oT"�z�����)���d��d
 s奢�sz�Ǝ�׭�bYR�.��v��%Z֐HUI %�ف����d`�<q��ٕb8�+e�@(P?xA�:�:Eu$6�v#���X�QK��=H~2���;|����N9�<T������ &�(	يd��E�b
����qny(��	��x�l^D:��@.��w	��]D���Qpw�2"���6.#��3��Ӧ�'�H�P:R���RӾ��fhyL��=l>��;C����&=.=��sN9�>�g���^c���s�yp�Y�����4H����]�4y��y/���ğ��c�2&X܌�8Ź�?�w�5`Q8�=�y�Iv4>q̅t��C@���}�'BD�2�9|�-��z��Fu-��J� 
C2���3Ҡ0
q<��S(,Ht��&SՓ�	����3ʲ��ZO'M��� �mW�}ˍz��D� �F��W�n�An��8ܝBC�zz��8��K�m�1Ot� �J�eT���"�~�wG����?��������>��� '��R��P�5* v�Ά�s ˲��-����.�9��~g<P�f�h�/���A��
����^d��wHt\��v�����6��;}�x�%�,�k�����#C�ao�v�����|������n���P���#C�4!y����U����~�Z䢋��z2�1�=!��>�W�	� J:6�l�����B�[��c�4a�lU�ߡ��^��#	�Fb<�r�%�xq�t��:��`��/L��79�����}i��P�p�s@�hT�ܪ4fR�3y@#R�:��Z�6�q�i!n�����׬s�Cg��T���L�Mk��9��k)O���4{>��u�S{�� �,��?�o���o#y8Zk3H�O�	��KA�FgH�sQ���z�t����tmwĲ V���� ���#�F�0�ED�����������|A�He)���h������	�G`��h{�s��oh{tS�;��y���7���BA�Pz���,'t�s��g��sOV�Y�x�x)�_����o�'���X*���� �`�?� X��<�������u��hf!	�r�ޣ^/�ު4��_��=���*��Z�����*D�@�H�c��M�aGc�y`ۘ��P1���h��I�6|0�D��ȳ 
P�"`+����$5*��GD�������k��c~�\��Bsˤ#�:�q��~�s��{��������M �7�J��z�`��y�d��� DOmS
ZY��--��,nf���������qf�ʎ$�=րޝ��7v(����x�636��4���i�e��e�אƨr�!�A9!ݫRf�!���A��)W��K�4���Y*S7t�Ȕ�+0���'��ll��"�!g�_(Ȑ���y<���u&]NwvܓSҵG�ޜ��k-�7�3HX4�\��=nJ�5y>:p�]��j���eC���(LHZ��,�n"�����YĞ�#1��p˘n��\8}pv������!9�c����m��ʼ.w���r�;��͏�&��v �к��~K��Z����Q[�5��y�-J�T\qpk,˞�Vd��B@V�e�����^�^�;�!��m�z-��!J�\M��-�z<��)`m۰�kJ_̒�vS��
� _�/ ��{���o�w�*��I��K2$/���p~~	�u����;7ܝx�l�VK � �J ��z����u٣��m�LH,�+ʲg���yYr:��u�҉+�̺��<�����G��D�P��/k�	�2(P� ��x�����l�i �u�b���8.��)����A���}���%0�%��F�A����M�jμh��NC;}���+�-�l��O��{V��(�ZLQ��Վ���1�h��%�3���Y	I��z�@]�9dt^�������^��s]]���*���B�%���|�p�z�L΋-S&ϥq�Կ�'�H+�����hy
&ʟ4�a*uhE�#�����3��9�)��>��t�<��r���N������o�����{Ƿ>�e������=��J)\��%����fd��-u��`!D����ľ��� ��}�R�D{�yaP��@"�ZO"Q��-�]"��%�|Zk�g0v'��>۶3|շ����_���c��|����ꜚHW�;]�T�z>A;�mM[q.�k� �E ����A7>�S|���!����p��B������"ew�;�XC+@�є� �Ј$���WBo���>6�9��0ޣy���]S�d�!�t�����Qĝ[�8wZNHܛC�g;�4V��#J5��1��N��bOq�*���4��}d�R����ü$�l�e�-�v�L�د%W��Z�u��_���l&�����Py"$t��h�Jjh�C
P|�}͔����iƘ�}pr��3f�� ҉E`ӅtC��A�pa����`!Q!+>��JI�@�D�2�h�y��	.��2:҉6(�{�|���uZ:�)���0��9Yw����'��8���8'X?��}8߁�ű��o�3��6Jq*}uM'/��Q�~WiN�����b������1��G�|b�m�>��D�4k����-@�"iߒW��.{t��Z�O.`=��G]�vȎ�(�t�¶P<�o[�1؝�y�Z~vF\�����  �>�r��s��n�BRiHD��Qw'@]��y��{m'��� ����D n��7>�~ן������zl�sb�#�c""ڡoo��n
HU����MǇ,����8zj�5�e1��(C�N�T$*���(k|�ȑD �i_fm��A����0g���c���.���dNH^ø[��&OFZ�lJ��0��4;а�%��.���5`<�$��svJ�<�FA�ޣrD\�D}�2W���[c�g[1����>9���VNA٢��Og�`�Sr�tT�i��S�
 $����	ψÕk��w���Y��w:aDۙ ��<�_��3<=e����k�!��6�!Gs�P�<��D��ׁ�M�/K]�LHB���?�jH�y��o�!ض��So���D(�sV� 0���;1�\�`9���m;;Rm�ZK[Q�(�l�"�%�����wJ�;�JK�]r�A�S-�poxk[d�ۊ�!��+����P�S]V����o{��_1I�ɑǕ�i�bBu���[h�,��׵ �5�h, �ں�3�{o��O��3���LPck�{C���3a *��V�╲0cr�i�,X����!(�̴��	L���4�X����wʑv�@nV�Y��w���Q�hMe<�Gy"Pe��x�P�CA�i�;�Ր�����B#r��iM2�
�)�u[:^��;W7/\כ?�������
q�O�ԑ��4&tH�w@������H����ɹ
b��z�%Τ��˧�Wv�	+�əiq �=�Y�]��:B���I{*jV�d��L�랙sL��dk#�V�,�k�i-}�Ě����9|E�y��c������X��Eöx�봜�pQ��M}��7��]� ���Wnk�9�C���q�(�D�L�4����Uwв;Ų� x� ��1��p���ڮN�A�;�y*�ew!Fs�z���p)m�zv�z�D�;9
��c����9���/�5��Q��q�6߫��k1 ��� �J�ES�Z�Ƥ.'��,iHz��uk�%F�(%�n�$-Btt�:��8$�Hd��^��'#I���r�2:�N|4�`8e_s����_owD��1;�1i��$*��}������3k��C����a(�(H� ��("S�8�>���5t>��	DJ��HL��]mk��9v�x'~�]�?��Ɗ�8r�*�o�p
#���k��%��je��3�Wأx����0�R����|�;�����,Ixp����>��>e薎`���K��p�1�/o��Y���z����h��a�}F�5c����p:�;���As��~�6<�_G��'�����mE[W��3��;�	W ���{_	{1����)S� aoH\�0��Q�Q�$V���A��c�_�¨eb-;J��D"{��ֳ,�zo�d[�5������:,�H#��NƵ�k3�v�������q_���[�w� ����I��m8_���'�k5 ���_,������b�e]��pVk>���~�C���5���56j�V�x��'�,]�A����\�d�t����~9Y��-��`�����Y�8�#P{\x��cE
`o��ダ���lG�<a`��4�d"m�D4W4����{�~MY�j��$�V�,��v1k��h
����ᴑNAL%�([�P��G�^�q
ր4:��L��>6�kM����
 Fka�_t��9
Ƙ� ('��>b��!��A$S\�9�,��61�����d��G�Nf���d�|�i�ۖ�y�Y���q���HSID!�[�a��"ff�����|54�NDde�"�m�m۰��c]X�Z��Ko{~�}�����f�V�v:3��uw!�,{��U{�~#��%p|Fc�^�C)1��B�{Z�[�Q��,�˞D���%�#Zj��d�w�Ĥ����yP�1��} yo(9�@T�K�3^���W�˿��E2��,[��b���{���s>�Sq�.�Y�^�V/�c�M�a%3���(���r�Ѭ���H�!Dޏ#�N�S9�G^5��jz���Z���y���[��i�t(G�.`9�,sF�1�[�Ө��pH��J��&�x\Py��vd��%�����@���f��f0a�����w:�ld�����`��E)��Q\w~C�?k��^o�����S�6��X瑣��-o���3y�G�X���Τ�ĔO��2p���vh�Y�ޏ�����:
<����T-��g ����Xb���R�:Sl0��39���|Z ����cO�x�����Xf�Q�A���p�F��=JY~�8�N�9Z[c:��o���ś���\��I�2��c��uAYN2�hX(�Fg�e��4l�F�:ǎ���NbrO�P��v��/I�\S��%����dH�?�rHl�ؒ1Xp��jYN����������}��o��3��8;?�Cp��a�����D�is�;^�b 0߄�@wG�V,���^?��ۆº"�aY��Pw�$��-jOm[cFv�,[mq˾��o�a�����PÊ��iڇ�    IDATݳ�9Cep���K�a��YG��BB8��̩ў����(i��*�JH��E!�Pr� �+���}��T0A��Xu2Ǵ�Ie�Ԁ|OF�0!���|���s �Y0~���#���H�E�N����j���eM��]�ID����ք{b\�N9�a�<����c|F?Qp6�	�)>���iݧ H{?����t�)@�<�+���d@��dg��b^D�2���G�sJ�]�6\��7k���v�5o%��Q6��=����C�ŝ%��I�k�F���u͌]�q8?���2�|�/����P�a)�\ވ :�Z�y*��v�%�{�z�m;�-#[�'1��S�B)֔��$�����SYS�@�vr�=ӷJ��u����B�A�^���nC��ck�C���ʊRjL$���E,�������o�O�;��y=��^�m|�8����� �-pͿ�m���Ԃޟ\a�b��{JA-�K'�ԣ��,$�5��P��(H'��H�i�ww,��O7����׵���щJc�"}ӌ�-������ᨅS)���:k�񷔹�����2������	��e ����T+Fb���Qd���(�4��J�FYa�f�(��yͣ�,~�I�G��,��M"�����)q2D=�b�C���"��g	e��� ��>�s���8�y���9#O?�F͎����ӛߢ���-?Kg�7�}�T����s�dI��
���t�O��[�������J�gW0��P��=��k�٢;���Hp$��gK/���>�73[�~�u����4j�m]�.�R�Fkޝw܁�x��W�WQh�>����WYR]0�H@��mE��!G��, �}[�,޽GK\���(^����K�t�E���#��H���Ny[�������.���8�7D�6?g���jGo��ZY(B�a�]@��q���m�[������o�A���\������'ފW>����D��Zú��ݣ/�����4���k- P�v7�����?�i�������K�����rԬ踌i[��Gh��#,�96�~�Т��=��e�m;����ZS��7�j^,'pߢG�#�v ���h����S:��mj���P�i8��	f�Pa������gn#\a�[��R�#sX�s�?%������M	���<���Pt��c0Чk����o�J�+#}�eR���,&�ѣ�C���b�qE�p}�Cd���r�JP��yN�b��;���6ymw��v�{�$ZߢM����3R��W��J7#RRp�w��(p�+����rB�O� x�-oL�䞼����	37��Yf)8N;�d���0�׳�`��Tq����~��?�DF���S��J��s��_�U��U?�Kwށj�PK	=�?s�I�Y��P����{�d!J�&$n�,���)��Vj�C[�F�j�PFl+r态׷E��y)�
uA�y$�p�e=��p�"���S&K����l���>lV?$R�K���7��i_�Ӌ7౏���x?����R����� ���C �Y>�H`��W���  82���zr��l-��6��
?�d���	�U�*Go0�ض�eY��Wał3oj���6�H*�n��o1y��Qk2-��j��S��BL��-��8���̙	u��� ETzC����,��� ��`#W)��@�D��[r$�����r4����@sr�r��H}fy�xp�$%ƈ�,Y��
l�Y&rN>��$C�u0�?vXrU8��C3�n'	�ތ+�,�8��t����3� ���A�3L�ZHC"H�Z���b8�̘~RA��:&�(�>Dw������g��t������/x# �[��/�r�����x ju͸�:A�6�	�1���T�{�o9���m�B�چ���� �8??ÿ~ͫ��_z;�9j�@>�����t�M1��n���(�|ۢE����b`�8>1��mz�"�dI��Rwq|���ъ�D�j'I��oU��{oXv{��`[����_�V�R�ځχ��m���o���a��m=�yLe-u3[�QONC��:�O�|��������>��'��z���2G��# ��N�kθ� j�("�8�hɋѺ٣�[�]����G�T�#���V>w�S[ۜ*Z=�TP�e-H+|����HY�r\���t����"'�(;���~�w�����X�˹��0�z���S ���H�ؔ=B��Y��%@P��}r�0��<'�?Q�����3
0�]e��&���[,q���3:�3	�+K�#���D��/���M���RQBl:5ݣ�<�C��|���M�<gi+d}"�!� �-�����b&)�%x=�-���/��������x�:�C]�R+c��	{�a�r��:����9�;��_��?Y��oۊu=O������C�s��l���	�8j�,�����O�C㴻H�f�����E��k���C��������硰ǽ����qS{k�%��.���x�j���4��<>#�D��Y�}������!l Z�F��ɉ���tl�#i"�W��qN���!^�]㏵����/�ڜK=Q��^�x� �	#:�^��,�$G��Q�':��iBY���3}[�{�-��O	8�@��H�knz�G��.�����RFא*d:���$w*�l�IA"�����A,�٩v�����]�S��l����!���q	�(c2��ЅO��:�d*L�SDx@�&7ebLk�.$B5�x�@2���"�z��>9cFqt�\�52�qL��x������6�9L�NIf�=��c�7h����!��C�Z}z�������yMt�� x�ވ����_����[ހ\Q�rM%�)X��/�ȵP�ŧ5?�$pZ)x�����G�Y��;�׶�8?����e��o�{<������;���埂�~b��'�'�D���Z�K�|vu�(Dglƌ����oD⪺wl�y�hӄ�@Iyu�Y���(L��'w�{�(Ql�{ö�Tz����Im� ��h�<m�;y!�޶Ct (54@"~�R ɧ��� ���W���������5��w���ǽ| е ��ޑ���:���0bhۆ��$��RQv�7[��Թ�!9Y�%ZXz���P-��`���U�fk��
8D�s|�ѱ�b�|:�0�R�?��x^RL3J���:�P#wx[I��x�pQPc[ފ)���v��� ���Q�'�&�r�ӫe��Y��";t♡{����4����ț�I�y�y�#k�>_�s�q���9���a�5�#d
.�*�8��<�~��H����=�U�S~��5̨�ޓK�@HuH�t�������~=�?���z�]w!�8�#ǔO<�
��w9������_�6����s��Ͽ	/}�q8�N߀���O�oŇ����N��p:k�P�e��:�IF�����Y���mu��ƽuZ'����ª���`�[]���1i/N,�)Z�����Z!a��Q3lY��i��:��:�p�p���t9��ZwA"������Y �u��<�o������G/���O~��cg��� �Z ��	��׶�'��0R8Q��~%��Y�񍊀��m��G
i��3��	ǫ�O�������N�c��*b3F3:���:3mo2����-z`�/�Wmq�e�� �2zy��Z�udm_?�Z�̔�:)�ѱ`qL�02�K�1 `��~�5T�k/�c��đ(Fc:�e�{����%3Kè ǧ�)C�0x��8ϙˡ�}��1�z:|^�ؗ����0	:�l�p�H�>�H�#���pC��NA����C�� $3O}��[�d��^O�x��m�2�H�q�Pǆ�Q�;�2Gg�@��?�'��*������Z ��3��s���o����,�k	�n)���u��b�����Ù�YsDf�D�(*��fa�#]�_�lo�m�:�!��,i|�,�{d���.T�?���������9\�,��t�طނ+e��V������S>G��l8J�l�JRa�m]���H��yYvx�S�Zk���?����nY�l���q >.^#彛�/ѪW�_�.���������*��TՊq�ft����6�Q职�L���������8{ >�gK8+6}��Ŗ��� �	P�bP��2�p�ٶ�%��F-����:�FQ$��'ZJ%¢�VK[���춈w�;�l}�;s��M����NK�@}���%n(�Ϫ�0p��r��©��.�������=�K�!����k �*T%���kG��t��sh��q?h@%.s��q��� � �*h���Q�ۦ����-a)��������c<�W�����Q����w���"'�9ם{i�b��r_y�ۼ
Ó��Sy=���+���Gu�����˸�֗����9e�1Co)���wQu��as�3}��P*{�KE�<��wQ�R�=��Z��񨻓��iVQ���2�JNI3�V���,{���AG������þ�B8����?ДFT�P�H�Cيbq�!���K�b=%H�z�����R��8�K��8;;�G{����ÿ����x�	�� @� 꺭�����m=\�̓���!�8_��V]BW�.Kh[�hڶ!}fF}d� �>�9�2�Ȫ
�m2�"V��Ebq�A������}�o&�D�����0GD#���f�f��_����S�'�H�]��"k�S6,4B\�iy '��e��#2k�,��&9v���1�!^��DQ��W��S~Mk/v{��Z*#(P��k�e�8��Fk�SU�<�����G��t�B�s�WMo���������>/��a ���?3�w��t��A� ��� ��ŋx��=cd�Z��҅P��؂���l��'?�P�o=���da=�����E/x>~���JA�s,K�'^$:�rJ#H�';~2�me�� �:�=B�
[�Lt�̹����~Og��{�AV�%x#�zC;"3��I�س�P�?2�*�Z8�{�y+ޠv�B{�����舲ZB䈂D��V�q�Q��bEl7dY� T��3�m]���y����6�W�Z  �  �)������rB=�� [�`Ԭ����ɰ��dU�]���HLժ��H#B�^�gN���;]fa����tz������ap<0������A�h
)���c�*;�r��`�-a�T���=j�N�N�[" įz"�n� �DP���ҩ2d,�����<3b:8�Y����' ��E�+	y������Q��:ː����"Pj+�����xT��e���� �a�)�<o^`�Rf���B�Q� #C e
��o�~���(�I���_�l׏��p��z�x��0������ӕ����W�B'l��~������/����V��x'��Ρ(w$�}u���AwlL�� ��5�RQ���2&XI�Oy�O�s���D/�g=p����\��{ރZ
�ZP�_
�e�n���.�f��s����A��YV�D�]��B4�w��j�N5T��z�D=lQ�޿8J@8��{0�%Y�I��# �y�Tڜɀ�Mv\tG��?����B`�$��p�q��Y����nq-�����jݣo�#(%�m�g\������f���������� �����?���uo�X�e��?��ꡡ��u-�z�������N8���T^�5we�Av�,�|��O�֬�GM��j�Y��Y~P�N��Z���:]��q���dR)(�{"�P���`�R�&Bc
.�,�R�e��B�pLH����"J�0���hرi<�E�TԲ��z?��������j�c�y���+�j�
ʲ݌����u)�R�l��$��>1ޣ/f)�䜻N���T]\F��ݤ�@4��Q��0�ؔٻĆ�����C�F�O�yd�&$>!�6�k� 6��Ǘz��pw|׳~�ʃ�'_�^���_�/��_�[��f�y�G3��k�������/���W��9�.Q�?�efx�W|~��H$k��/�~O"&2��~2e�j�a������;�[��~��t�F��a���7�C�d�(�3e�����G�LGc�p0��u�ö�ܭ��(U��u��w�6H6�c����n?�x_�������/%�x� ��5����I��+�z���u@��������NxG�yCG�]<v��z��r��!���7��Xf�X��®���������]^��p�S����_�����7�x�#  ���_�Z 0;�����Z�y����a��Y�eAig��� �f���/���Dp�۱��Co�'�}�u�y �/_@;�a��w��	�C7��=`�r��g`ae�)I4u9�^���9fȮrzd�
�K���`X���N�`�bX�3���qG���d�+�3���8�,��ߠB}7:����n��p�����0��d*��W%���"��Y^ԋOx=���r�t�Gɲ`�\�9��l�Ky��BA��Un��T"�� �H�8���͸�ùs�@�� ��8i(��sp܀,�pO�ps/y�O�W��J3���5��L�-o~3��g���zW���cFW�N��y��������?��?�o����=���Ṛ�~��/�^�I���З\�9�����g�N�
ъ!£���Z����t�n������],�b�ŀ�ۿ���x�D|33t/��u,Ј�m%�V��c=�� �̘����7����Du���G��́e�R�l���~����J�ͅ�[�X����,��h[�`%�R+Z�`�5Z��m�ݦ�Ŗ�hY.BH���r~��>������ޱ�OQw{l� .�`f��y̎��{���я�U� �K��|����?
�2��v 9ސ��׺`=�f�Д�OJ�;N��h���wF��
��8\�(3��������a�/���#
^�����)(X���Aop,�R�����`�ʼ�_m9�DC7�����eQ}�����h�k�A�1�Ћ4l �΍����g�$ye��V�l>�*��P]���`놑��X��e�z�"�H��� �;�Fp��%�_!��q�lW�<p�B�K��h�!/�`9>N�9&�nJɳ$�#��@�H��H��
`b�+ӟv�|��磀E����g.Ϥ��� d���|a#A�3���O����7ߎb��:�p(�����=����r�w߂��G��i��PW��v;�O����m�8\��@o�A�JF6���I0e�k�ٶ._��[��<���E���kAAG-��__ txs�e�m;��MJ���� �[ּ��
y�M��0K%������t��|c�����P���P���v'�Dٸg;3���@�|�/���ފ1
­$��������$�]J�&�.����6gܛ�:�	��F�:( ��i���{-�"s^�������r�����;��{p-�3��	�݋��.;����,�S�/a;����}�i;�s��c�ZRM����Ϯ���ۊ�T,'�1C�ȑND6կi@Ԓ�2"�p��e��C�,i "��`�
�h�3����Gк')0J�f��x��Ц�I��9��QLq"0�������p��e�r�����¸�>�N��� �?:o�HuguE�sԭ `��Ӊ;.�GG3YL0��,�K�rʐ�dXtf�3q3�c �B+l�p�ݤ5A�!Hq-����k*��5��㸯��)�ZSX����*u=��c
*&����_��o~�����
�.�;��|b�C�����v�}Z���x�W�e�7����|3��'�<�`��3_�[œ������մ쨉����������Q�b�X1<�t��O���ϱ�'��]
�Kf�ګs���-��/�fB$Xل��7��	"��URȠ�b��F�    IDAT���C�e=�U��h}͠VsTJG�o[
�*��]f�ߏ��D#=]�/�J�=,%_�뭯y]�Bᣰ�#����+���^���}�C�ƽ��ϯk1  >F4V�'�_���ٜ�n�-2��!&�Y-Y��_�>2}P+[Qo�X�/�aX�/E티zY�T�m���,Xv�(dۖB&,h�z8�Zv�72��Y�@��I>��U�Լ�}n��F������{dq~;�H��V�D�D��""����A(�	���y�M�D�ɛ+l�s���<�'Y��0/-`}<�G����D΀a���){�k��F\�xd�g�J�G�a@)`��7�cy����ld�ʘ0%L���>Ȅ]��c|7ఎT%օ_πQ�S;7��@,��d�G�����8�y����|'����{�{Qͱ+�}q�.�?���A��/1Sk�
*D"�� ��o��S���h�����)�~m~�����F$�c[��W�����`�A�C�Sb�^k�mt�X(�����>�pP�(�讁:���S��$���}#a��h�/cp�>ɺ0����NU?�ܧ[NT� ��>B�hD���Ŷ0�o�vbw�h��.*�0�,ѭ ��F�m�`{Yr YG���[��4���L��xĚ�*��x�?����˲����~��6�5��V ����m�v8ò�cٝNي�[C-��/6��Ӂ7�����b� �V>d��v�B�a JY �i��Q4����5E@jl�9b�G��53 �-���D1�n���T����B;�aqʒ��� y'����-�`YN��=�.�M^�Z�,�4��U�4ʮ��O5��	��b��xɈ\挘?�燳P( �4����|��̿�?����#�i9�h�$j0g�S(z��Y3��'��ﵣ"�|��w��&G�d@��P��y�/G�}�DW�xx.����D,������������]wF?|v��d<���Hs���7�2��O?�q��� ����K���~�����8����M����bdloo��7�ͷ�M�+ n��]?��H���L3�R�[J>����{#�׼�'�j���ZB�J�Cb]�6��Dļ'0Q�!oD��k�97���D!��W�nE�r4��]<��%Ǟbl����n(�=�/F�aVB��Hl�o�[#�dY��}^��������o�ч>�_�z �;X<F����A�#2��Q�#��F���4=����d������z���z��q8�+����Zlr��̫��;i����w��@Lxs-X8� P�yѬr:&P��;%���M�+���3�)z8�A	��lTA '%@c�# �!UCg�Ԗk�J=���eU]5����	a&k��0Ϟ�Ke��iɦ�V]b5��=?ch��g3|��l�<A�k��Qy^w�4��� XS�����{e�#{�@V�1k9��l|��0���x��R��O��}�@s/�饔57�`|��~��-߂?���P��E��1 ����>Ȧ:��4�7�pC,5?����m���Z�pn�]���*�����x�m����]�ʧc���\�z��¸D 	]�ޱ�S67�/v��e9E���;������b�0��Lz�K�p\wv4a�>�̣TI�@j�0@��<��o��!I!��2ʉ�w�;:�2!����D����U�RL^�kCCv� x�5�W��S�%E�Jū���vU{H��=�q�����y��G�8~]����>��˲ǲ;���;��7�-F�j6���C�.�am[�(A��-H~eɬD���X�/��ۈ��L�F!#x�hσT���-[���{S0�:<�1A��cR��w�����mf�S锲 f7��\���5�Aph����l��l1��#W�%`��i�=fq�lm�~��M�d2š�������ȴE�K�7Cz�����i�%T����������7���U.��7�4uh(�֜�8����6z:���+p�W ��R� -I�%�������-�G% !�����>�����c� 7�7���s�I���#����T޺�W)�]w>���)x�<5_������q�Ĵ�~�߁
��9���w�E/z!��[�� ��h�-�B\���8�@-���� g�5�^u KD�V���	&>E�L���, B�D: -��y���s�Z�S;�R�ht)cǢ��(�r��=9,��%��p��^��,0:�Nr6R�1��H�%�@X�9����]8�|K���Q�������W����Կ�_�gqO჏�׵ �:�f�.c[���a[Ϣ��S�r�G<d$�xO��`�.�Y8���u07�O�c��ylxBdu9�rr���K�x�2��pa3*��rb��
����`�����X�3\[$����ă<���h�h��J-t��tp�-��v`@��1a�ω[4hx
�L��Qj)c��gvT�Lc�Lxe��Ց3�1������Ѣ38�S�]�*��_�z+���f9jڬ��&��f�Z�XsJx%̞��£�V�~���	Љ+���m��3ߟ�y}㓟;'��Q$�5�~�K^3�t� �jx�}��"�!�g~	��y�x����ݾ�{�p�x��j�f$���ٟ=��� ��a���K����>��;x�T������70 d �00�>�dR��f�S�B>��_]b\m;�.>�o=4 XF�2�� �wf��7 7h#�UD�k�bgJ
��\�.��J�Abiq}�� v����!�����%�� ��yqr�cso���H������ݥW2����D �X�a�;� �j__��_~�{��׵ �%� ��GK�����<�́��B�7.��  ��O��b!K���q��v��08�e�e�e�����x�E
L'M�"Y� �zX���"3%��7
��k����_lz9
A��[�v�
��惟F�Ǔ�Q��$
��CX� �0�k�P8�B��\!\B�a��^�*0l_��#�Z����#=@�5�aB�J�um�%8z�gg�F[�S��q�E�7k�S���~���n�48OU0� ,*q�-���d�,�a�D��O�8
\��p�mRJI�(�+��5~�7�{��20)��Uçޏh���`nF��nX���-�'ta��|�+вa��ͺJ����;^���?~�0D"\��So��j|]�,ө�^�$�t
�Iof�Q1�T�v@;\Fo��':q�٤�N��Įq�q>,����x�0!Y�/�Aa|�}���9�W�F'`zK%bj*��̠`)��b;\L�Wlq] �(�bٟ���J���6��ۡ�N� n��W_
�p��z�p��8~]k���g  ��;���?�z����;��H�ѮM�-65����,J��l(J��t<�����h��M $�7��z��Ĕ�dpz��r���v�12�fZRR3���At��$U�ѓ�����ht���P�j=!��2s�y>D\���P*�=�,p0����s���:������KA��������0"R3���̟�8}Za
̈h����=ڢʖh�2�བྷ񊏰Ց�\��J :�t�����G�6���d���
䏕��j=��'�p�p�u!�ܮ8����|f@���3�֗j��|B*��=���r<햟�վ>�  a��>~�sj�7!5S	�{8���xӛވ_z�[a��O���?s�H�7��6`�e��Ǵ�Ӟ ,Kr�EҨ�^F��S�.:��rl.��yoQSg=�{Ƕ�a[���&J�[�����Y6�x0��5f�̤��D.4�(p�^#3׸�1OD虞��|�r���&�5��R���B�P������Ķ�R��;�N0���}�]��G=�ׯ���k-  �t�@۶�����W~�dBM�P�[���3�&�.[]�kk��V��uY2{4wg�	�
3�!�%<���R�w�	����̞k�����"��jW���~�{Ь ��ƿ���ژ�OI���~�|`@����!��e7���sbˏ(��Q�W3�#8��C���s�P������C��"��;���>����$!���1��y%��%8�y��}Ik%ad�S2O ��7íO���u�s;���09W+���z�_�R�D��E}|\���q�J�^����X������7�	؀�?�k��:����}*���"�Ik1���?���;�m��A	��)�y������@�Zk9����n���[��j�U��gp��pǌ�q?��NGgbYfR�P��.9]��%{���m[S_D��{G�=2��b/��Z����r>�����ALI���N�!�v$�
�m�p���TY���m(uڔ���@�EȖ���*�����%?���'?L��$b[�a0�痱m�NN/���7]�~�k1<�����?�q������f �{�>zǥ�0L'��'�q`�o" ��1�*�Ё0�>$>�8��p�$B�`���NL\���v8��\F%0�l�����Z_�ֶKD|p�t���P�4��1�枙����
�\$ڙ�=G�l@�`R�����%��GYxf�r*e�%�5�<��E
dy �(h����[b��c�j͑�dG6:�����S��1]�tm�~��§���y� �Cs 6�ɘ���$s�
�w��-"Й����z�|G83�v��[������2��  �����{^���/e�G��t�y�s 9��i��)��X��?��������|�3_�L�p4��Ǹ��;�<�YϢ� ����sD_��zpoQ�[����$�ژ�(T62�Z�0H�K/l�]���f��9@-��������	�k8�A
�D#J�kN���ț�ԱG��_�v+i`���pk4�l~�=�H�`D�A@�Vl�e(ɑ��Pʂ�����ӋX��3h(�p�쮏�m��)���x���W���G\x�#��W����׵  Wd��S
H�� �a���;,jOt,�Z�9B�@8p3�~��e�e��T��  �̖�5����z�UٰyR����{���!��)���4�2hN3 ����Ur�w2�>A��1ʹ�-g���la\�E:����-��1��I� M)�Bu��#���~*ga�N=��x욆����xT2����u���%��ȧ�����|����&�`.ݘ2��L���h���q}�(�R��\�9�qG���wI�m�x9������b*�b��ly*(���t�_�2a� ���ռ��������e߀�s���Sk���zk����q|��d���������eyϜ�:M�k,�.�6����jt�
�n��_����ҥ�	�e�$2�
��{E	�"'!"ɒz#H�eNZ�v`2�\�1@�m�䄨��dpF���CADOj�V�$��q�;~�4*b�pbp),� jqϪm��YyK;�sa��KA������W�Z��y�c> ����U���u� ~ş�@k+�/߉�ۑ��s�a�P.������ַзsl�9Z�5`4x��x�2��죖���	b��!���a�9Е~�i����j#�-�fy�"�R��Q���%�����=P�/���{(��(�-Y'��1��V�G�x�P	���D�������2�pY���"Ct�Z��Ȍ}���p��D�`��F@������-PQ��Á�)��2UB���E@:�����.�:�i���!;�DW0:H95g̘��9�|F�3~π�����>�8�?��ƫ_}[^���4Պ11�4���y��yJ"���u�u��xƏ��j$�|��mo��t�M�_��K�D�S��?B[��w�?x�O�t���D����N(�Y�NG>����mmEK��3�(@�"�{����EyN����Z1��\��Lv��X����68�q��(�q������Y�vG!���BsD�uxB�T!�K��Dظ!�?�� �	j��q�mгeV��8�RJ�:{w�_�V+�'�s?���zo}�����o���o�ޫ�����Z ��2h��K�a�E��g��g��N��b�n��tkj��6� �o����u����dFm� �dC0�K� O��앟 �FFpᔮd���t��ǯuA� :��j�E��L�	-ᐣ�I%��1�N�7��J��IZbK�F#F.#~ ��o8:8�=�� i�����U�P�h��"�e'2 �T< ��"�|f5-r����ш�7f�W@�ʑ2
�e�mJ7a�{��*�f��!�~�p���#~��ܟJǽ��ck�b���5��4��Y� D<���җ���!?��qԄ���f��\p���]���Ἰ򣿀�}�����xG���]�D�`6����ۺ�[n�(��z�̪�7}U�ڟ�t��I�� �h��������9#I�;�*�|�����B���$�!��L&��%8>��}<G\q?����r����:�z����K���`���fP��$'o��%��]Mz����GxY�=n�,���pv�,�=v�ӫ�_.\����_�>�^�Z ���B :�^�<ub▷-!+cv'=�BBMo�*�5��j�e�zyo-āo����BR��VeB�f��N�U<��8^��>����$#E�n!qG��M��A���X`R��G��%�Q
4e��?���e��2D���!c,�8���>.C��y"#|�s8d�ȇړB���XG�&2�l{�=�T�0�6��X�A;�8����3��
A�96*���cr�q�p���N�Xz:�����9�(Y�:�)����O#�i��wf��m�鬴���]�Ё�p 9��X���n{�k2�*�����@�Ff�gS|CIud���p��{��൯}-���  ��y���a��qֿ֯��?�7���^����o�,�Y�0��lDj٩�s.Y
#������s Ƃ�A��1c��ɝ]�A����3��r�϶�{#�M�p���v{CY��e��V`��,�|���nf��P1E��O��p2���*Kt@��g@^3��#���-&���B(go���(el�3�w�e����;��f�ba��������=�e�z��|����������ݣ��'��� ���� ��o�9���ZH?R,�=&�ѡTe)�퀎�'���A@�?���eF�sN�"C^�p2���>� ���i����(3ƀ���@�� ����۶ed=� ��y=����.��.f�~Yw'(��`���#�
�aA��n쪇B���(�ܯ2�,p=z���ˁh��HOY_$��Cr�@���!"�03��'�>��`83q��VB�{n��G�ff�����=��p&�cΠy�&wY��g=]������\�ܗ�~0�+���B&[+1ef0��'^�u��k��5����aƏ��.���T@z�5��P���xE��Z�u��f@6�㴞)��~�}��m����T\����>M�0�-��dw�_��\��лo�yv���iQ��e�Ҙ�+�(�{d��ֳώ(�1��Dċ��v8�c�-ι2yaIB����3�zπ�}@&<�=�"��F�o�O,w��tD�X���j�$e[��sD�?f�t�<����1�%f�8 ���� go{�U�O��O�G<�����p��7���� ��f  wom;DM��ʎmwڴ�ѧ�lw�vv9�i3�X��@<z���b$�1@��g����0���VS=���+ahd�&��IF�����[m�ִR3q~g�x>�
�|�7�N�[QjQ}����B�Է��!x8��u	��R�W��#�Y}���^��
�џ��)�63�KB�A�"$:mg�y\�ՎI�RHr핸��p��1�L�T�;�� ЙM����$:^��!?��<�e�l:�j�������:�A0��ѐ���#ΫN"Nٻ?��^[���׽.^���8    IDAT��9ԅ��q�%B��/dp�\@������g�������w~�w  _��_����+������6��%/��8|�jv�D�98"!pS�1B��첵/�}<�쉻�zO��vg�=2ܾ�t����	K�s�m�zv)�o-γ����Mk!�#�02y0H�U��a�6~��6�	��6�\���Ɯ�>m�����J��s$G�c{1@��2�m�a��Q"��E� 2����`wr�b�"׳������ַ���������k�|�#/x�� ����m��z��	���  ��A�{��
���A��=��02�M���߭���b��vo�N"����}��`wz1�>=�P�!0X0���@�zd�|�R�Ӭ �3�� u��p�`�x C��GK\G���}�a'B4�h���cW}�3 p"��M���n�=פJ`<��c�qI�@@
��a��49{9-:�Lʐ���%�SәO��	x���pt:�ɭ�=�I�^��󼩇���T�s�et�G��9y�Xo���*����J2�ѺFi�)�����|��?���^ռ�'�m������c9��8�3Su�w��~� D�����ƵN�J}�۶&	��~�W�+���Q椠�	uj�'N��$rk�Bd�s�kioj=A��\�p����2�-Ѓ<��62ۭ�(l�X�DT<�g�^*K��gR0���cԚD�������,=��T)�29M��Rsd�,"��&u�"�}�A������f�o�Rw\��,�f��:>rǥ��>���j���|�甛n�� >��o�z ��/���h��	��� @���� ��
�X���@�]�$u��d��2v�S>l��$����hJ`���	��O��$@ʼ�=IH�@�|�$8!6��Dm�ً�BG�;��	ѥ,��O
^(�șL\#k�z@��0u:7��m[str")�R��F���Q*+ ��;�W8ӄ��,��8/�5���5�hK�Z��f� Cd,gv�4ؔ���/�)hZ���to�
���g���������p�����q��`�.�h#�I������8<����H�3�������'��-���e��^}۫s�B��g�>�"W�W��ʨ<h��匎��|}��?~�� �%_��D����}6��{ox٭�fLX���7{b��v@_W����:y�6�#��aK���֔����u�=�ަ�
���<��-��9�z�� ����G�`V��=j���� ۊ�3@ZӉ\���M�m�2���1�cc�Y|����`��XwO��A�Ӫ|�GԲ�X�l�W��@g�����<����v8�y7 �;�j��տz=�O���ÿ���o�|�6���Z �(h��7g�����%֑����{E�=X�M�2�v\�xN,d���`o+K�>��Կ4��[�!�;E��R
�/72r{ռ3��q1���Њ�����O�0�e��?����v�K�����CI,!a�n� �̢��,�������w�;�y���� ^�>_� ������;I�*k�����|d�FG<��p�����H2���#g�?�s�r������8d�DEE"���0������r�B�۹~����+Uį�D�9H��~׻�_~Gf���BZ�>��H���7��Qd0���/z������� '''x�c��y\��!P�7��Mx�{�οX���r�T�#z��c`�x  lS��/�PpdP*lY8?�7(6��۸Wb�j���v �3׶5��t/���N�&�to#��NC�:�ȷ��S�y!�`�xNGY�#��K��H�L#�f�^��H>�ү����m�jۊ��u�v�Xۺ�e m�bz�;�M7���w�|�#�Z��|�?u����|]�����ߗ�w���w�yƯ�?�v��Ϙq���:B%�pvW��W�Q<'�RJ}Q�>A�Y��k�i�P��lyOV/�u�w�~V�������n��]�uؘk�}��n� D�E�R��2�P�I3�����(��#KU��]�r�I�TE�$ʣ���|&*9v9��ȉ?�����H����� EH� t�������c�} �zPX>R�����~�5�s�9��� �-��v��3H�rU�0R7-1#YE��W�D��f��λ$���w~���F\�ނ`��ш�'KFH#
�0�P����β �9H�-�Q���	-@|�� ��"��j�3��UN��c����7^�/9m>U��)�ä����{�&��ӈe:"�N@A� ]mN���
� Ң��C�Ō��k��}�<��  �zׯ���^����q�'@:b��g[0�p��O� n���w��������������*"V�)�����7����o�SX�51k7��D8���C�  $�2N�� �j�o���f��&B��)�F`)��i�m���:�X�<�q�.��"pY���	��h�����QɁ�՚�d�Rp<�4~?��u�:�'�B(�t�@�u�1E��F� w�b>���e9�`����=��\K���������o��ڵk��������v?��z�� �������g�}�C>�����]xE�� �(��>6ӌuޓ��[�M_�.�.R������"ZW+��f��^���Hя�i�sS�5���f��MZ�r�D��Ê��sS�*�z�hQ�ry���iG�2���-��T݂D$F2�Ŀ4�Q�l۶�z&dѵ��>����87.�G6�^3Hy��2��
eCB�I�0���u��?!�g����{*��sʶ�<K�2	$ҩۈ�m�����ڳ���7j}�w��C`(�e�:���$(�3�4�.2=�����F�_C�d�3���������� �,K�]8�!�s|hq�������E�ڦ�W~�W��?��v�~��� R����-��;��<��W�ۆk�ϼ�b�U�:�}+@��/e�ZK�A �Q�ȶ�.K:?�t-����J�W��i4�4\bx�t�9�P=e�?�A����5C�8�?ך�	�-�����ȿ��4�M��A���U6C��t��H�NRc�cO�����Ї�r�
����[C�L��#�iN� ���sϏ~������� �ڵk?���}� �C?�C�W��7���=���pl@�Tk�zƵP��9�ZQ���ZO�q#*��)N�I:�ѽ1�4�-}A�/E/�б�陋���;�RM7.n9��ɺ7s�P�̈�
�ʖ2F�_� 7A�ݡ�¨��JG��{A+TֈZf�x�,�^�l"�c��K���Z��7v%�O4��&�u����H�� E����P(��+�� S�'3ei8�\��\��`�2 ���-��u����5)�� �>���/��.k�~�u����`� P�q�QsA6�A�����)]��c�=��~�s|>������1 ��9!��ݣ#ҏ��w"�� ����x�У�>�_��_J@�׿�#?�oy�+3�O I��r�������_�F^��;(_Ը��GP��������Q4�Z9J�e�*��|�!o��`]e��bQ�T+s;�Q�3���iGU=�!i���Q;6&��$&�p}�:�1���ae�:�M@�9��N�p��68H���#�n��ض$�xd��j*�u�y�X3�ǚ���b�6<���n [��-ey6�	��z���V~�~��7n����ڵk��������5?�x�����JD��8??%�(�Xi���e�A�̱�-�ƐD�Y����l�U���0��v`��-��m��-sm�!��HC� -�@@w�qw���5�ޒt���D9�<�Q~d��(�$��(����ú"9Mc�K������G}�bީ�%�:	�(%6��pTe���`��b@�������T搩�pt�$GuO=�߭���}���{���p��ӑ�Q�f��R�5���S�|��;�IS&C�]�%FCs\P<�[2؞� (!	,΂��lR����\u��� �z���?"u���SH�X�h @"-y�%֑�h����)�-p��������W��'Qv��y�O��On���#֒(���������7Q�'2�Y��>y( �fq�I6�;�Gj�;Z,w� ᨩO�XȒ�7���##W���Z�_�	��ݎ��(q�W��U���3�����Lћ��f|>l���T�m���Y��]���b��p���b)+0;�1��v���,62O��ױLc��E�d��B�J��J��P\a?1|�/�rs����Z+����_|�;��*3�v x)�_n% �^4!�m���Ͷ���{��������i�C�m92�pk�X�nX�O�3�ٖ�z�t�4������<%��0=6%<�+X�Ӑ3N�O��VH\�`��X�;[�(��tN��7VΡ��5H>��H��?nPJ�@�L�*���-驃U~jt��#@�S�P�6�0�0ƝJ���M��&͘�hs�����_���Ǜ�8D�T�^4�Xn4��6��7O��g�֭�vЩ�5�>��̛������J�s�QI �辿�}�Ӷ�T������r��T*+&�p
b���<N��$��ɸ������C?��q�}��kf�oW��թӰ����|'�% ֿ��;xoX�{�)��(�Ɉ'�l�����ܩ[&ZU=cMRC�n[і3�UZ�Q~��H���Mk	$�%��K�{%<��ƶ�h��>��m
���VcEB�!"���k�Q^B_�0�RP�ǁ�ĵ�O�!�� �<�6��f��5�������1ۺ�-2[p�ru�i��bF�L!\��5�? ի^�}�[d/������
� ��r��_�r�ʷ�T�_�  x��Gs�~�º\D/������ (�X0�Rj �i�x����t��p3���{��}oS�K�߸!�X�Q�+]�d9�t2̃T�D�H���ՔA���E@�M�A-�o26e
gBRS`�d-���"R6E��V`r�����eS�d<���*,���Ub9����.�����l��d:>�3��$�:{ѩA0���s���{�@~^�N#�����@0M:�����	\�(�Ԃ��~��FT����O��BP�5D֪�X�W��z行������~�0���B�e�
�K�9�)�m��� ��{_}�[�tt'��OG�܏�؏m�YK5�F��[�ų�|f�w�[�G٣m�/gH�3 ���K�E'A%��dVr�p��h�����"S�b�H[Xnޠ}�����;f���A�����zW͝N�LAV6	�^��c����.��	������y���e�Uk��R�v	8)�ຏ����@�	@�	�� ���ٵEb��+kk�&̻�\�|����Q拼��ַ�~����q��}��G�������� �E�t���.�Y4��$��-{���`A d�H��9lF�5�|��K�U����G�\�.X�0�-uJc�TY��,[�p���M�ZѲHmt"ˉ�Mib$X!�9��;�mG�|� *�U���P�MDs��1TҼI���i����Ĩ>[�̠֡4z��GO'�d���	�2տ�Jkʵ��R��Fu���)!U �r2T�U�<�4R"]"4���\�~�����:��������4؛�rN��5�Ai�Zk��&HO"b�4���DV,p<�� p����I�3��a��3V=}H2��$	ϵo�-2#o������ހ7���󬿏�� ����+��w��Y�SO����� ������X�k�7)XFk[� e
�LG�iz�&@#�m��}h�9�� �&0ξLtƍ�_VN,��ͦ��5����W`C�&�
��>�a9�������}�j�.���l`w����d��3��q���)KLn�|r�(o�H �R���i8�^��� ��gp�.��o~�	�{�]����٫�\�r����7��r �����!�ʨ�H '�i#m����w��`! C�pӱ����ұ�'��7��s��@WKJ�x��|5�S� �2�{�њJ��A���h�(�lҮ��b���0��V�+������tW��k`���c�8b��K8��$1�?���x�3X�A�vW� P)E�vC�a�[�^�<S�:K���_x)
M6@���kdl8=ߌlt>�a�1��T����Z�6����D4�7���9a����Y"�t�2����AgNT�+�R��}�0�S��"v�j�6�t�z.��tCWC����Fg����ֽ���@�$d�1]��ǡ�??�[���?�A<��Ǿ2�;�E_��C#2�
u��58B���7�T�;�m2wJ�k����������4}�����8I�a8�B�P ���iD׮VÞ�11q�
��a�,T�4��$0�Y6�q�j� �d�l ������c�=-N���R!*��:��_g>
fw�9J��S����u_pǅ]� �7 ���>w�2�*���, �r��;>�����R�+n�����#	P/�����m=G);��T�Q�(۾��}D�K�������v�z~�i�m";����ji4�|o�K�>n,0t�K�W:�7�رk�;"���X��M��Qs�8zG�"0��h?j��-�+4��SL��F�@�%;�[}��F:�lc��,�l��L�;=�QuqX7tj��'�?�&FZJ]��ͽ�(��!qc�N8���d���b��3�7�1)�k�aK�?�(��m��~��*m}���F�>fF�j���T�H��=�O�<�����-��ֱ�o��_����9e�[Μ 2�df����}�}��yn��g��}�m�u���@"�s<rfvt�=�J�p���>%K# �_��w�;�=�Ѩ��[Ck�zׯ' -��D~T]Cv<K*��-��h�=�ұXUH^;ֳ�����k=�b)!*V��k[	
��[O�mYPɱ�f�C�/�D��5�4��T�4��3k�C`�J�+��*Ej获TJsg�Rb:������E�� ����x�?�|<�Q�r28U�_�m9G)��+��z8��5f^0S�a?M����8�ͫ�y�� ����7����~�q���������r�{ ��﹝��I�^��M�sK�YG���uޡ-�P��m=��=�{�����!;Y ��<���ᾦ(�b�wL�u�J0~��c��i#�
�����`� I���[%<7�`�S���+m�@L��ϐө�hF�H�NM�Z���
~<��K���MT�ۊ�Q�΅T�U�L�2"��4D0��]
�����$�!���Hp���r+L?�ѓwFu��t�	�y3&S�!�ҝ�����C E��5=�b�*�p�Jwo��c��U6%��ʾ{O�*�:�4��Z�@�0����C0pJ���;b$�b�K�#{��!��z�e%��E�#�h�`^�@�<G�=(�{���[��Gy�<�HF���ѧxϔ��#�y K���^���\k:�\��]k;D�k6Ə�,f1���)S�Ӽϖ5��53
�0�_c�����Έ)�� ��}3���.�B?|�E�ϧ��G�P���`D�����#�<�N���I�5(����!G <���< ��̻=�#fh[,��=F'�: s5|��O�=�姾� �3뭵븍�]w݅7��M; �\�|����^�e��# �+k3���#�^��K����.��� ˴��WƂ-3�=PyU+OX���V���-K�
౑��s�
Ƨ]�}��X��{�2�п� �����{8E��;����؈�g[)})�G�m:y jd���0��X���
��2�?RA+6u��Fm^�g'P�)25��9���Z�4�l[#f�d���d�+3/#��s�[S6�9�a�#�ᘕn���U7���#4h(7k@�����vF�|��>�z|�����
�Ba������p��P���$EEQ
 1    IDAT�F�������/=���=�b@-��R+i�G#�X���ɍ�"��9�|�z�=��#g(�X	?)+�e��e:���}o����ؚ?uW�� R�Ly�M��l�P�Gv|lj�`��t)�U#��6k��霳f�R�Ik�D�pj{��>�w��Oo0#�G@���☱�9' Hb�������Vrk���s��L�1H�����J�PRC$����#ک�݅XuBk��X�X9�\ʮ1iU�&�j1����<��{���z�[�R��3���]�z���Z7�� ��O� X�)��ںDa�=o7�G�.�9�i(��wI���/l�c��ȾW�MM����bS�y��c���q��È�lbN�="s
fl|���|lH�#k��Ƭ����.%?	��������T�x�NA4�k'~%C8�S`��ōXeTܣeh9�46F��Zf��4��b�=���J��]Y�1E�H�0̢��Q���%�%E����Q�qrF&2�;b-ҁ@l��'��w�1x[��c+X~>��]�w�&3����Ndلk ��	��R�?؃~��k��Y��A��M�6�eK����l4+��$6�"�[�������k��́`��)�u~~���}�2.���5�vбW�k�n
AA�#�]3(�M�NM	ҥ�'0bG2Ń������.Ya�z����s2M{��K:We�b]���x�"p�ZR L%;�C`,nu``�@w%�g@�.t��3���0� ����m���G< Gh"��w�0�N���d0���0D���e��Y,���?`7�w�w�իW�p��}����+S2 `�����'����y @=�J@F�Q��=������I��V��l-�`T�RZ<[��S�8MM���4peB-�Li����(5�YF�t�������2�b!K��[��W H�bb��5�X3����9 �->A���� ZR�#�Y�ctiOm��>��@��`��h�2���T[�����u�ئ�eK��G*X�}@N���n�P�8#;��U�g�#�t@���q�"~8Zsʖz���o�����ЙR�]d-��� �a=}.7O�ז����v�=��4�Z��fc-t|ꓟ����+��%��c�9n��8��(���T����V�e��Y@l�a���;0�
�k#'��� n������{�m��ۃH����х )2a]X.�v�{B�5�}�op ��C�5 X�+�Q��(%.�X���P&��:-uݔ�>j�i&؏�w�A�/ZFq��Cs8[�����$��c�˴\��+Iz̎���.�ѡ��̔�c�R���� ��}?f���ܫ�w��,5�\c�F�5�S[��Z�2WU\c�,��[  ?� ��{�لe/�z�ހ���m��~���&έ��F�\ �� (Ms�yv��s7ϗH�$�t��A$�u�ޱ.4鮷�Rw�O.d�[3�C�{L��&so辒�[0���������[$�i1�3�S�Q�at����� e�"JU$0*��G>e�`����-����k�C�7��G�)#:�uˈڲ���d���X�;�[��pl*��6Ο*�N��ny�mP�r�}1C����@D(=�"���l�_����f�W���-�ph�-�T�I�8nd�U�pn�'A�c�{c��2V ��0������������?�����@'�%GMo��6��O�>�S�f�������H�3���z����G���畻@ۈN������z��}�ce�;��Z�[���8�w|���yz,���ѐ� � ��FR#H@�.p��(�����B�<��1ƶ�)�I��-D|��<�x	��k�u����W���
`�:Q4F< DP��?�W�~< �g��E����5&���%���X�xZ� ��%����g	��Æ�3�)�aw�N̻ �re(`��
�d�sp/�x���?��x������ �	��._���[k�^J�^2'�|eݟ�v@?��g8�t7����U��s�d���<��yl�2c��8��и�J�hm���4�P�K �����{�"Ք�@����pڽ-i
{�l�Q�Hy�w�Պ�FK���.�a53������,bn�zd�MN51I~v��4���N�k��Q�&A+��c�&Xo!b�I�ņ=v�qIr���3z�Gˠ>��ݝi�M���=O�q�,#�th0���s����6j��"L�L�F����8�u}��T��1���r|����l	�?]���@, l����g�����'>�S����fʨ����Ҁ��?��O3��o�C��zO����kk\�cs�q�pu���c'�ϕR�zO@�tj�{:�Xj%�����>���4�MX,���>j���G-<�t�*�uxvN��ȶȞ�Nʖ]��k�JI����D�HoQ\�KH�wM��Y[�
Z_��d�Ĥ���Ʊ�
�< y,�ç�i����S��7��#�P�;�*����Vf�6��y��	8��{�d<}�*�)�������9�K'�g!\Y��ްN���/�	�`����)Q+٤�_��W}��O?�=�}}��|�]�z�µk�n{�П����ǐ�R; 87�H��ih�n�4�{�P��i�Ta�!�����(F�J�.��#u�J>@a
���F=w��Ֆ��zS([���t��A*^pq0�L�6\�߅���~�N᎕�weD�1(�!�e=$���BW&�S�P�/)=�' �- ��1������̎�����4���P䱉��y����(�!3>��}���g����m�	f[�!�T6�����)}�)F*C��2r�`�D(m�ѕ�$Aa�1M�"/*uL�TZ����g���ML�j\�ȱ#M��_���3҇m1Up�C0�Wd~A�9��-�I�2%�f��o�1��N�}(�G��ܹ湉��%gM�RK �(1%���!�5�@�	��[俍�z%���yHr��=J$�r>ʇ��k��\�&�.��kz�	㞨ӌd��#5:g:[�� �2Z����hj�u�;=&=���R�*�t�LFiE"@�\K�E&��Ϩ�/X�%V���Ev��+g7I�����a* @�?0  ������go{��^2� /G  ������8��(��ea+h)�
�����n�e9K>�c9�&᯵P�*%fhhO��A�Pk�!�H\��,�0�%D҉��x���xfv�k��S�R�+�H�O"2ز�(���х�q� @,��D�F��r`P�1-M97�-uY�V���8����r숕��yDI�|��ܭ"�m���uS��~:��͙��}�Q������\���H2����cNG�}�:G�������h9�|ts�a�m|��>��mx�k�8~��:�0�;�Z7�����z���\y���ܕ�J@��(�g����^gn+��LG+Bd��?��5�#�6Ο/w�ի�c�҆#t�K�	�͋:���<�T��lwo=88ʈQ�CK(8����&(3��[I��Ȗ����⺣�a[�pKt
Z�F�/&X+�(�,�yM�-A�&
fj+��Y��>�#A�[y�jm@#���n��=3��t��Ժ�d�z&�g6vڝlڻ�B\g���<w���_~�o# �$  n���7��<W �._���^�|��������������� :6� ��G~���y��*=�u9�%���j	��Q����[�z~3	r���!�>��KX�e�#=s+��8iP�Z��A�����uA'UF3�? l�F>���e�`����,:	1M�a�h`��I e�1wE��(��RR���)�?�'����^�~�e#F?�&���8��"�XFX�Dui+y]�m���&�F�?-�P�����~#"�ߕ��8��gT�w(
�x��6����oq�9L���+3;u&Ȅ?<�������\�y�m�fc`U)d9�O��OE�߀�z�s@�F�k������R�'���y�\r��\"p2��uM���8ٟ���Q:5?���>�/}�q}f��{z��e��?���-���\K��Ȉ��V=c�E��(L%�L�t���1c<��k ��ªLu�R��=�9 �7�ٰ\ǌ��g�{M�!r[W��x�G�șD��URK�A+Y�ϊ����?�c�i]	���}��Gr�6�ge���v��̻�M0�����B�r����W��x  O<����6^��ox�
�� �p������_��%q��� �vnfgm=c
k�����TJs]�aShAǢ
SkE�+����v;�R���b�������	�Ё ϭ��V�η�jl�u9������d:�I�V�3#lcc�z���~�=&�I���JŴ�cڝ R}�����hH�n{�UZ�N;̻��v0�'IH�Q�BX�&��$䗍b#�~gMP�s�O�g @I�BC�(^=ݖ�Ҏ��7��q��Z�9f�L;i����^(u�P���L��1c�&^�Q��2n�p�,6�) bB�8�x���?�����O01���c��<f\|�� 訒5���2���n;B���_�633�F�6R�$̂N��~�LA'���:���N�V��}k+>�я�318yx�+F��RՔ�%D���y�Z�y>~����n�`����ɣ�q�����<2{TP�}�_�P<[�����g��נ@Zk��=�c ��V`�k�i2�8Ea�����gF��T�gke9%?@�*&�B�3
���ۓ�0�/��{���<�v�c~��i�?����v��Ttܹ/#�T 倵�����m����7�=bB�}W�^}d�۽$�w/W  �08p6M�.�9��K�N��C�{�<��h�����P
T$��492�,��@�B�0�́���w���u���ĨON�HF�卋T^���M���co�4��N�u��B��b��ȕ�N�e�xO�n���)��KA�xY+��hūi�z�(Cщ�	����kK0�T-4	�HXd���dz��s�"�> �
�c߄�NУ���S|U ��݀T�T�VF���4��MJ<�,vE������(#
�:3�Gݷ�} � �:�Ȣ����wa�w��8���t�A�@1��Ͽ��(����m�?�t*�{۽��s���I�	�Y�0�^���ss-�>^���2�����R���~�c���{«1��
E��]5e�ڌ�ѥti ���m���I~���e��N1�#�ε�Δ'P`��Y����X�a�-0��:�� H$L��jiVf�-�1�TX	Pm��_5cE����D'^��r풰�1��呭�v�<D][`�:���c�3x��O��#����'�����ήi��,�u�~��_��O�ޟC�e  ࡇ�I������!��@d ��|��v?��|�\@x���t�xh��>~�YI���OԱ�l+#�	���h�i���O.b=�r`���3�s����p�}I�=M�'�6�$"��N��y2�����4��T� �V"FJ�D ��F@��T��zXa��kI����d����dq'0F�.9 ��� `��S��$������+���>�t�F��@�	�'��o�=r�&L?ۂ��[��Q��^l^�Pl�cD��B�ѡ-�͈��g��g��Stv��G�</1�����?�G?���f�1��9����gR�1[[񕧟�T@ƼoN@
!�?�O25�!�!� ���8�ϒ�{�	T�@���<����m�|�_��?�p #b9���T`�̨��Z�;bz_?��m�(���B8Z�Z��OQ��m=�,�ʀ>i��d��-P�1�W����eODҋlh��4s���o�>��K��B]d���*�),� ��� �9�oχ�Y����D�.�;�E6ewrGh�'�:�N�$}�u+�
�PCm��p�w���'�}
�)��H�y������p��x �Q�� ��ʕ+�"�r z�� ��~��y���+����I��.�4Hb��F�e�:���f)h$��io4>(�'�f?�/�7X-�vP� [����*���MWo�"��U��P�c@�	C�s��"���H�Ҡ�%��Z�+���ބ�t�uA�4�0���	��6�uJ���I�i�DF��Z[�m��������hCTu��Ґ���p�\yb�S�>�'#���(��"�K���Z�9X:�,� ������@���  ���D 4rF#�A;��?�� �x��и�M�b�Kdx��+O?��p S�~#Xe#@í�� F&j\��	��)i�$��A����K;~��3O�>#��>� ǣ�(5Hs�5��&�	����Yb6�� M|�VX��N;���IK2WX3lUϣ�5��*O?���{Ϸ���)"�j�VAS���=�q��,�
7$8��y8R��7ď��v�S s��+ה ef�1��H���hɞ�=PJ}���q��Cئ���nkg7P�`�?A񆩖������ؾ������k^����صk���o�z�꯽Td�_� `��u�t���-�!�������m���z�Ѝ��ɥ��gv]΢��k����!R�<^1C[�_����T"˔T�T'l�jD����6"Bd!�?}��"��.�Cۺ���T��Og,:eR9��)f�c��}��hT�W�NZ(!dG�I6θ'0��-V��?=�#A�80} ��a �aE��(Ҥ�2O��RĪ��g�ؕ��V>z���*D��S�8��`��hr{�[JT^���|ܼ��Xl����� ���!���F��z�Bu1[/�p�f�'���QL�]���&N��c��T�����]{*��hdk\_�s�	���O�7B5xw��~��yϵ7����cߴ6��`S�3�����+����D�Mt�RYZ��P���D �sP'v���U��x���摁>�������SR�,�'w3� �1-�[�6e-�9p�G+@R�l��?�Y�q��	�8�:4R��;��S�� ��%�b��'�;����Q)3`���4�e����оb���j��/9��x�6[k�%dfx��^W._���o�|�� ��G�������r ��Y ��s�{�����%�wR C����T�
!����ٽ�6d܌���o����;6�!"� ��!n�-���F�I��'��[����:��#�4~�2��&gu{��nM�[��_�'x�&�ppmE[���i�h_B]�85ˬ��b��)��Y���@���%h� ����bdx]�ȁ�͇-�; ճqh����;����yZ��M��˘���~J�!�N�ᩕ$�ut�:�����{�[d)�T�^s�G�0L$�Y�R`J����O<������Eq��!�+�$��q`�N��2tƐ=w����)����'A��>�Uzj+n^��G��j����6�~GD��!�"[ʠ�}e7��ո9���s��7�ԉm�u��0�	�)�-��4��Jp�"�Ho����p6��i3�>���|F�7�N^SV7���?KڰH���/�� `)t�cw��/'�*�p���^v�D��g�L��q��~tB�n�%Z�����z��iڡ��uA����Ex_p煊���}�3O>��c p+	���Ǿ�=   <��]�v�N w^�v��\��}��ٯ��� ��@f ��q�����K?����*{[Q�h���Q���,�����T��5���$��п��I��Y28r��E4�ˉ�K	�.+�jz�9n�#0���~�"A�DW96���ɹ�Y�x�ź%2/A��Zl�����[��&(hf�<�&��HФ�k*�ա>��@�&l{�e���_i	8�4� C��۽��՚�HP0Pһ6��j�#��()o����	#
���E�Yq���9�Qo�:����w�	����d G1k�O)�S����'�@�7C1<J�c!�����q��:��ID�����Z��lR���[����l6�'?�P(ax!�5�    IDAT����z2^��U���JX�"+�#��o�2	�����x/K��S�*��5���M	� �H �Ah=�j�Q�`G��}�gz���<��})����KT�~pHVr�V��L��6o�
��#+�^T"����a�_�4�Q��Wy��4c9��X�ne
�:͘v�P�Ro�{G����n�<?��o����@���[���q��x �/_> � �G3{I��$Z��/����  ܬS��φ3K�:�qE6 ���h�pֽ�YW�����p'��l��i>	IN�CC�ea=����L��Ma�P�_k�B7Ͱ8����Gw���4��Ț'G[�\��8'ڥ�jT%���+-ȏ��;��Ўw�Q7\-�E�;�� ����hԷ���k���/�B��T*Ɏ
���dZYy��Pz�X$tOF�D`*���#N2��@(���d2d�$}��f���6�d�ц5"|��x�;CÈ���p L�"��ތ���>k:<�$�d����ab���K�;��K �c�0��� b �G�Y���=���,
t�&�
r"�(�t�]OG�gX<�����k���;|��Ш��/ݘp�m|>�T]d[#������#L�H�"�ܽ�R�pS�w�Ρ��,gL�RT1��O�Y�(�P�mK�i�g?Vr�{��������Y��)�S��Q�$�.H=	� �)w���-e>��1��
�8��3>���c�/�^H���؀iޣN3�O������/��X�N�k6���zP�=�;.�yv�a�+���[E��Яx fV���ڵk ��ַ��������Q_/� ��Q����q����z�;PQsS��@��EV�ނ��X7)�����眀)������,��������|8��Ǭ� � ߵ@��A=��Ey���Y���1���,����+0Hu����r�Wͺ�'P�Fi���V�Z�s��4F��73e|���2��{����_Y�P:p#_*�*p���1z�G���td :&~1�j�>K6��|tWl?W�@��o����acZ+z[CWD4���N���}֖`!A�@�/�c�����0�7O=�eޥ8��-A�@kg�:�	�'�5�ˠ2Wޣq� 1����z>Z�+}�����k-�+�d(����X�~w����sC���VwV� JEp�
���c�z�>�n���Dj�p~3S�2��d���$��)�1X��E�=��6*�m XR��P�P� I�h�I6B�{�UL�����T	�C�� w�_�v&� Tܢp��ϥ�fZ�/X!�����Q��mN�g7��k�, �b�h�g�l�����|����q� �������^����}v�/_~��˗�-3���&~��� <���?�O?�dSUCO\���XC[ї�+��>C!�m�1xg�_@_W�i��>�r[�=g]O�N���0�eD�h�o�S E����Wt�H)[��r�S��nM�$�XL1���f��V���^����~�m;`�u�M
��)U�-�@F�	�2%��W��Ug��g�JW�D�Hg$G,�>��k�Q4��0z����x�{�ׁ�^dZ��-���b#�ѹ%��7^?} T�M��k#��(���7����#���+?���T�y����)m���z�SO=�b� (�Z2b4�me��X�`�8��tnq����yɡo��������/�?�"���uC��]���<`�?{��֨y�b�l���s3��%�#�;^��!42;����"n��r��FR �M�"��`��a����j�/��M�q n�6`��`��˲Ch��ۼ̡�`�M������G�5� h���!cɧ���}�c����G�8˟��V@uzM�}d_�Ϡy0 ���0+����7m]ׯ�����b ����Ϗ^/^ī_�j ��� w/�r�M�f  ��x�7K��:�aT�q�~@g��T�[���秘w{�i��y9?g_iO��8^RNӻ��2��9��LG�`�-��p�������+'''�!)b�t/J%�Y_�u�p��q`df�XQ �#� N���]�	�i��Y��Ŝ�}n{~{:��$iP�8�[!Rc%x�������(I.I)G^���	�d�J>#�@�xo�*�g��\�l���1��6��L��,���8��eD}z޾Q�g2�Ե���s�w��O$qt�?I6�F�kԹD��駞��x�Q���,��?��Xu� ���Kf���ϵC�x3�Ԝ��Hs��>���}�C=�;��ʚ{8�1k��.�G.�t�Z��A���vˮ��6� x�V��rF[��f83z�ъ��9�������2#F��-"�� �s�퀾x��+����C���K�%�J���"�&G�9��s����	zū����2͘�㙰�c�`�g����'��Ʈ.����a�_�l-���f���;�D^WG;��� nb �m�����|��oK ^��ך�v� �v�Ko~�/�����3@/�
d��ց
#��}j�^����KL��Kü�H�p�nw�jZ�����Oo!����r�b��_3�[n���h9�yn.gj66��jtEQBx/�X�U��`�ȕ���*��x7�yI6r����� ����I�4V�ry)sf�-����W�@��A$�r?�Y�F�E�{dT�ų-���o�'�� ?w�@t�����n�b�y�[=�q�x��k�sN���|'��D�#�9��G0*�b���,)0{T�"��_T��C��x��W�{���6ҿ��!�����ן{gg��8E� a̳�� o��?������o�7j}U�lJ��\�-����r�jk�zp �b�� ��i��G�\���3 ���&@�hwu>���a��F���,#���P����-,ͬm���;3q�M��
 �������A��1υ$�m9'@d_$X�J(e����6�b�y�D %s����]��#8)�� ���r���eF�3�/!�h��u�0��(Vpz�iL�' t���u9ò�b� .����i�c�5�:��i���?�w����/�p���������^s�v�ڇo��_��7S@��g�s���<���n�s����wh逸U�_ǔ(��"��@������4ٷ-������Rw�"Fo��TF4��aF�-��,�R�L�ө��E���T[�E�&8X�@�"'E�la�rdFr/u ����)�7���L��n��kH��;h�� ;�P)HR�̈j�M��p�mM��p�`�q�Nb�xz�̨�o��
Jk3\o|X�Æ!̨REM��m��"z�-�����|�I��n����J)ҋ�������d~$�H�[%闾��B��q�������3)� �X��*]w�h/�D����cDf&���V�[- <����v�Q��=��{?���8Rl�P[�?���?�(u�o��`kb��啶DD�{<�>"F��!yEaF�J3"r����*`�;����������	� :SS�!���Ɖ���
:9@����m |</�Y^�̻K��(�"@�4�Q��a�ke�A5Yt���@ػu9���g��}��7�3�o<��ߪ ��� z����n}���@�� �\�|�/�����}����  ôi*`�����z8���\�`��f$��$6��<�� ����9��M���p \�"=�"��d���\�ܸF��:�9[����k(��%�"Ғj���m�VY�S� J�癔a���l���6(���Y�)3�6(��&bH�DCܹ_i8�P�+�Xe ��"`��~g*\�Ց�쭣�`�6��-ey=�cZ ��Jr������(��c�c���61���XL��{���5s��2B�8ׇGd�9/�̎~���d��L�S%��uX�H�>��9��1WqQ,���	4����_�`��^��IŶ��:e)�وᨛA���7p��/�ws�z���=��|��'p�t��kO���EوM���:h���XC�@��:�,mx
T��b�Is�h�PK��%Z���.gX�opq݉{a�����p9�s�J!�:[�e78�)Ł��\)����<���Zy���2ACd$c�G��`B%��8�Lv
�{��]��֖P.�vpw�]VC�O�RqT����4�\�]܀y���sDxJ��a�/���}��?�b���E� �]j|�{�����-,2� �`"�Ⱥ��#?=,~�E��`��Ξ�Ff|[�U�)9�o�[�@��	-s3*��B����3$衞�P܊�s��6�pI�A:GEك�|+�)~��F�'�qQ�� I� �� ��{���e�PD��]���{3E)�},��08��B59e�H�`̤���,�3Q�4�����-�Td�RMm����/|��)Ҳ4�q��p8 ������6Z��8na*^��(X|:���a ���,�<󕧏�9�U1�;���0������\�_��?��1�F.���K>����R���sW	�u>����Z�o6��.%J�� ;�c����K:� B��v�8��yv)P����_j>ku
>M�d:��=��F͝l}���8?#$��3M�3q���ǟ3Q$f� �@\��UP�o�J�����a5�{pR�vWH �S9gA6��^����(�*�E	Ue����E�X���+ ��ԙ�������:��	v.%��uxG����8��o _�� O<��g���/f ����W��� ���g��c�q���Q7��7ֳwދ����fŲ�D�!�љ"_sZ��� �փá�3�{aX�6�L��}��/ƈ��MI�D�9ޠ��< �:h�S̶e4�H��J��g\�M[J��KL(��Fq?��T*6��Q�ڎ*Sݛ��&���T��	��JK<��&��1aI�:R�94k]	M0,�y
�8C�����ϐL�����S����Ѻ�q�$�!82�����z\G�6�%0�	
��T4�-�e�n������c�s�|�U����Y���]�m�� ��[��O�,G^�m@ٔѿ;Fw�J|�;y䑼摢/t(�٤�t�{�_�ۚ�L��=��:Z��A��d�{j,d� m�4�`�]H`�z\f��yj R'��3Ph�y�ާ$�924pT
l��\F��r��'��JV�v��%��".Sd���&0�oܯ����t��1%�P�Yz��?g7�E���	�yF[��Zä6�� ��u=@��N��
1 ���~�x��������x��Mo���/���  ���˗/���|����f  � �f N���}�ç7�Mq8�k-�i��/ꁯ�8�V��#�K�B�e$ə�":����Q��e0��<-S�2� ��A� #6Ra-#�8�h%,�#2�~���Ѣv�=��z[�x������>�Zg̻=��E̻���� uއ*@D<�&�(e4F�L�?XsPJg�r��8 ��� ����*��)[��������^ۗ@2�\��b��m@�� �����&Fv�y_���s�G��v�ʷ��`��/�{���s�=;��,P2!������.�"���u8u2�,J^�x^�碛kAČK��6+j���w<��#�������� ��͌�H�ol�]Y�N<��Dr$��á�6�N�9,�.��/YҒ�&�sO$h	~�D'��"��H�|<]-�q�R+�i��V8�e9�*Y*�F��������A�
꼏Lꑽ�,o�.�5iO;�i:��)�ְ.gh�� �[�y�L�h��9,���.g ���p�|���z_1�w��7n�?�� �U3 |}�6ރW���x�]�v��fvǕ+W�r;��z��� �c p���Y�G�m��d��(�P�.���p�A�t�w�.�Zo�e�&�	+]�)߫�܎�%�2��0������em�=�?�#�V�<�oV�X�jIG�V���fzM�+��q�8IeC��)yE��0G_��vʗf/������ƍi�~�M:����a�����I��2�o��rh��P�g�/�M��Bc]=ǚ��Te�\%���a|�>01��^�8/~N?�!�~@G���8f�[)��K�X��~]��܈��`�������!'��d �YY/�|�&M�+����{z+�QJz����g?���] ���2gm\_)ArpW�gR�\�f�Ǻ]нa�vq�Bq�5��T��2o�7%� #�Hj�+�� �F�Ca�f�)m��V�����R9��bq�e������N�XH�i�cY�T���lJt�(Q� ��H��S� ��`N�"�`�)���8;=P�Y�Y�Pm�Rf����㺜�-���w`ޝ 7v�=.�:M
�
�/8 �E^��/���p�������� �z������������������ <o2����<=�W�uG�����G�&�����4�XW�hOj,���^aS�J���Cd %�����3ݗ���=2�&c۽���^)Ӽt�q� ���-�R9�h�D���1�h��V*��$�W��a=捯�sku�T~�>< �<_�,k�݁���o@%1z���6�U�*P=�xW�aF`�ZDM9���k��6�vE�����������JS�h�V�58H��y ��ma�d0���atu�$�P�ꅺG��>m�T8��7�l�ϳ"��Ʊ������8���Qu��H�2wJ~fe�$L�=�������{,�ZF�z�F�+=���r���'l�J�f!c�ۀYǊ�$:W�s �Z��hC���C F�r�l�g6�'�-ta����8�N&�{��+�0J�++�eC�����2�7��9:��N�s���TK�9��h�άA�=!�(�	<�4	�J-�t`F�#}��g7 v'�PJAk�Ӝ�Wxp��}���p~�������?��7o>�� �"��o�}������� �+W�� �����]���?��7K	 x"��������<Ti��6� ��_��I�G�-�י���ϽV֝�jRn�L:ӊr�L�m�Y��+N �GBz�FGQ�U&���U��qo&��9�K-qpES�H����F�2��;H�9ź��T@#���)�AX�������ϛ���{$�:R��c�uƍ����>�=��% }��_T���9[(y�g3�۱��>���@Z����]_3�3�C˖�ͱ����8˓�~`\�JZ@<�7O��������<�Q���x�C��XC���
����`,e��~���巎�#˖\����<���~*xa�������1Jܙ��g��F) �u�OF��#k��Ǩpu%_M�ό@f~4ѯ� �N�O��B-�Kt/�� H "'��ԷoH8��s������{.����A~���:GVUR��
�t����RJ�����S��e�p~v��X1���h+�-2��u�����k[��p.���gOo�ޯ�G � �z�|���E- s���ի��իW�u�ʕ�n��ܯo  [s+ ��Υ.�yw�D�����|r�b�S��)4dh�m;�ղ±K�P�Ւ�:�2O2�u� ϓN�CQ-��9uE��"؈NĦ�!�y��:�P�(Q�2��3F�S�1j�h�qba=omL#6Ϛ�|OA�� .&�A��g�4D$��؊T�Nh�YF���b���9���J�����0Be��p���q��PP�|G��B��� T�|l=�cC��t��gmX��F7���r��o֝�f�����Fp~�������>��s���7�ݮ�8EsÝ�&n�8�m&.�X}2�ߔb�� `�lu@���w}s��6E>�Q�������і]ՙ�7�Z{�s�*�d�2�۝�t~ܒ�a�Npc�I��G�;��4����vb^�iB�j��0����    IDATȶ�@�y�z]F�XBo$�J���㜳�^k��|�}J�[RI��BU���k������7o�]���p�Q���e\t��-9$=^��1�ҩ/j5���6��U��y�lb<Y��
MJ;��	"��3=T��/�"΋V5XP�%�ڣ`u��_����tClE;D�E-�{��B�˨�R����`���F��IP��(+16�]���У��.;N0=����=.�;N�ab�H��0ڕ��r�f��0��"r��&� �О�3�<	@s�С���~ � ��e<����(y1C!�%��Z��T���
��Yt�c��7ъ<)d�r�r�5� �@��ۮoe3�X��j�F!���J�#k��dt��M/�֩V��^�HM뒥ŤI-Z�z�1"6-���p�Z#������я�< 4�֖�9���>�-V��KT�⺡��Psy&L٠�vLt�;�f�1����T�`��`�ã>�J���6ҧ��0�5�?&�u"��sȜך7�G�5��z}����@�x�S�dΐ�/s��?�{ї������<GLh�	�wv�g��n�&j<*�(�v#:J�03~��GW��\�NF�8�6��H[�4��̐�+Trs���w鐲G��#�N�Z%� ��l�q�j����T�a��j�i�����G��V�9b�5�"�(��+����0S"M����n�aX�2fR���:� ���R{�8�H�JK���m�r��w.�To(�# �x�J�Hd�� �cY_�bG�]��F��#qVR�����9�]3@R6�$�p�4���R�2����Ko<r�Mw݈�  4>B���9 8��Ӱ��^�� ��Efn��@�'�R �
襀��y�_�[�߁�ArC9��X���Hﺖ�TF=��ƿv���k����{��Vn�o�5��^A~πG����\�h� ׼���w�6)�	n�%�
�TH{hT.����( ������������(�ȗ�CݫuaʦnV��C#�	�)�H�0�R0%�TaCK#H�:���@��2���Y/���f�MG5"t�����oV6(���,�lѻ���u<��Z�ϧ\׃�k�;��g��=���a8� ��sD;�s�(2~	#��7���x���u��g��玍����ա�ɟ��*�dN��aa�p�5��<�}���<�0o�<��\s�@#as��ď홤��X%���rIZB��o��6h#8�F� � u�V>����e����q�s�'�F^����W�uP�lPdB�M=_ִ�E����ɹSbm�{�ԝ� �,M�lO���P2g��(�IIӝ���`�'��.� C7z��h��n���3�̅"&�U���{�s�n?|l�u��7p� 3��� `�������+ �666n|��=� @^�9 �(��d��\�<�]
�sA�L5��k����Ƙ���T��I&�D�SH����▅E�4�Z�ZD�VK�oTm�ء�5�:	�y˩��2Ee-[Q���Ǡ΀HG��"�	����\!1�V�c��3`e]�VJ%�Yk�-���I��L���<g�?{p��d�6AM��kZd�g��m��I�;Qmʿ��b���F�y�M�^..A쎄�j�͑�D�V.���7�Z���Q'���Θ����!+�/�4�F�N��b]�c��(���.&�����;Dr�z>ob���v��o� \����<:�_�.y7���/�����W�>�K���WF�����#`y. yp����8�i�sL���1XmI�k�����g����}��i��`�`ml�Y��Q��&�-͍��~M$IEG@��k��q���?U�A�7]���K|����Yb�5&"m�kc }Dz��xO=dR6�ݫ:�L��w�)�Q��ȶ�6�X����Ț�si�U+�f�e���ER��PPT�_�E�Y2�4QG(5�;p�V�p��i�C g�qƷ����E �f^���ӽ��T��* @v����`�iZыFA���E����=5��!�n��#P��nR�	E��r$�# n���R�&��$��)�h
�֣�'8�?#vNP�%VUDu]	ȮHC�v�*Ę~��;��T���lЁ��9s=zSGcr%�A#;�X8���,�t ��
�/H҃�K����i"�ǒ!�eBR��(�Յ�����U
�@�p��`lwkB)y]}�]k��T_�pi�ʠR��%� ��@*`�����sP��z�j�����-��0ȏ�0�d�;����(��O�ɬ=�ȃ��_�yL�+������^�8�����E/B�u������y/ϻ��W���y�E}/#G��"@���>��(�^��kL���A�F��R�cN��5쥀)JWG��A4��Ⱦ�����0K���δ�l�����{�'a$<�;���^ ��_�o�a5R��T
��A����1��@(��$�LқX�sF��/5@QG�4���Wt���g&d������Ҝ`f��e�#2_/"��"6-D���^ !��z�}�@��Gf��m�y�4S��n�k��ĥ߽�/\��Sx�  ��'D�z�С�~�_��T_k/��� *0V��ٝu�]��ھ�Al��Ry@�5�f�R@I�o�1F��HM���Ey�ʼo����ܢD�9k.�@6���!9?��ʤ���0ʢORHQ��ߙ�3U{��1(�4H0]7��
����>K��jMk`T�"V|E� �/�\�Rj� �EU	�f;a��*�K�$��d���R��F�**
�B6+������ ���+)[�$�An�]'W�\���}�ַ��b��hd0�� ��#@��j�m���)/�X7ȣȞ������?�%� 3�udOyҙx
�����߹�5���T6�q	���m�g?o��e��;pޯ�����ּ1V�K �@ֹ+se��u���@�#Ǌp	�,��D��f+�����_Q?.��/��@����9�Q�@�p9|DZfG`d���p�ޟ*x���NOO�����^���UԂ4߯�"�SXZ���YE�qi���D���F����ĕW�&�#%�'R�*�L]o`�������s��[>�7���da.��`����[i��D�& !�Q)����b.��~��#/8|���y������; �̱i����i�������������O�Z��x<: F�$@`�ko��ǟ~����ٷ�z �"�leq�ߜ;d�r��{��<����b����l�������uV�"��.��I��Bh1"h�=s����FJk8$��j9������k^vP� N�&�S���%�T��4re$���y���f��A!k�UܡN��6T ɘ���u�q��Q7N�22��`�"�dt5 �M��O��(��Y�o�χ���ֵϜ+��i���"���,����;����xj�'D��Ɍ~�O��@�S����ǎaum���|�����s����gO�Qx� ��?�^��<�����|�~�+�:v������ی=�XzJ�6?���i+����<����:�\v#�ru�Hv��aPV��n+�&+� �c��/�㊁���RmB�@��{�'po���?�x�g��P9�Nd&�=:t>
y���
O x�@њ�9g(�N�97&�$�T�������=��������_���Hd}���0�t���N��,T�0�sH:s�@,6��̌����<c�6�| vP # �T�t����(����#��ѳ�>��+����I^�a�W`���@�v
9�\�X�LPˍ�����SDzg�E)E��� �G�d%�@Q�W<�A7�&H?T�.<7?\X���� ��O%3��4F��UqPIT]�8��ꞥϷ��1|.B�p��i�+����])#��t&�e��Nk;����*���	q�"8�Ζ�W%1'�� 0���l���Y���ȈJT �JX�=r�mp���鳅K���6��B�A��Y�Ko��#V�F�FԳ\��I��l4������?��KQ$B��
�����}D����>>�яz�m�����\�#1v��q��㒋^?�,m0�3�ߗ o���w߭�����D�:GÒȖ��4�I�"?�i:s����/.ׅ)�L��5,s��8j\Ss`���	���Ǒ�_Y���;���K��/}L������~١�e����^���Q	�.#�K� X!�B�;�<
2���ݟ:�����w3��iDl��@�4�곈��u��(��XYݏ�wDX����}��8���|����:M�`ee�ٌ�9h���ϟ��N��x#��� �l��e7\1f����.N H�IX�	�k�%ku�DQY��UkI�HrF��c�
��Fߗ���+2A�|Y�(�ʍ� FK��c�L�R�#�X:�\A��g����TIy��Y�`˧�����h��B��J1!5��NZ�:�Y�HZ�HP��HEE��N��gAML�5Kn����))���]L��(��J3Y�~f����í<ژ�1�գ;�r�o�́���Jn�f*67�Ŋ-�;T1g��g��w��l�O?xM�(d��S�
��iS:%���������WG����)WT�����w�Rͦ�pµ@��0Y=�B��[aN�<R���5���X�gQ��8>�EiДk��rt���^��w���"�j��hy��~��b�:����PU@�����^Ҩ���ZP>��N�2'F��²�ʄ�N������ X8ZV5CR�T���'qފ:Y�Cj�� �9wXl�k?x�e�����#���������g�u�?=���|�k^����#��< K����ٽ���{P�"�S�n�*���5!!K��|H���))M=ݘ-Px�� ����6���)�9W2�2�Y H��5u��F��R��lJ�N��<��B��H^�1���O@j& 5���c��.����X�x�����h�����c e\S 8�Cو��J���B�M9/g'�J&��E�4���"vW�Q��P�֥�!�c4�Yw3ζ���!,9�Eb�,u�ݱ�E_<��ޫ-V ���hX[��<*
b�4/���7��s���S��X��o_s�}A�Sj��w���=��X߱�����������1�	�sY�>���A�/6(\��`��/�h���"(V.��'��{���~�7}���^(�4�
��X�"�۫��W��x��w
r�O(d�U#A�o���~�pH7B�t@Jߡ�0c��O�|�ޭw�^.\z�?p����G��� �S �?�c����뮻�$r�h���ʻ����G��y< �Q�)� [�8�������Ѯ�.Ik��BB���� �VO$���:7P@L�# %�k?��lfޛ{�e>�5��ލ�nb0��8
�T4!�,�'����Q M�[��j<hD�Cq6t�=�n���9�'�����vA����C?�E��a�UAЮ��F���(y ���e=�G�;��y��H���".C��9�jcf�y�-���v�KB>DA����G�s��Y�!���UՍ%�"s�� ^s*" �C>�lC���C��pf�F��o��?��z2���{��䯇�[���С_��K������ۜ��G;��;�ҡ�B�SW�(`|�O�[-:�q�s��X"�\��N�ܤ�]�ՙ���A�C�_Qr^Q�ED�AѮA濡�\�p��_��bxrc~�.CT���MPa]��1v�;�h	�VM�i�R�d<~���<��P����/f>�Aŕ��6����LW���h�k�?Y�2.�c�b��R
�&����UJ9
`�$���p����'fn�J���0�͡@)��o���ks�@�-��c:h�\��'ɀ�t�)C��U���	�:�x�JB���jd-�Gu�!�BݙAP#f���}�Jr�?n�M!N�=U�J,*�u���ٍA�Rz��w� 9�%� �gRӢi����1+�lZ��joǈ8rj�u�6QJ�b��&{�
0���i�@KT��H�H}=!5�q7�P�oy�Q�?2����̂<�}D$���Q_Ѩ�I �96%A� #�U
��G��t���� �8<�]S���:��Q!B��`������8�H8�=��C�-0��b�����c��:���ǵ�k���>���_E�U�6�������긙1.ؼ�;>V���#`���$e�4u^��&��^J�Kk~�ߑ�,b���)� k���4����#���/!Ec⁏ם�i�56�|����E�p� �(� K	(ZFpgZ���/��{������������}��B�1�V���]�d����C�����<�R90�ƴMs ǰ� �	��豶� ���x�F����x�� �j+Ǖ ;o�����-��▛���~������Q�E)� �5J�TP	��#�M�����KIaHF8j*���K�Qk�c��y#�� �k l���XI�E���E͇�f#�t�EM:�H����lrA7��c��'�j
5�K��45a�F��l��9*�Y��"8�T@ p���Z
C���C�
�p�"Y�fU�c䬥x<��׏Zj� M�Se�!�$/Y_@��Es(t�m<�Ս�/t�Wvy��(�iPå��8"92㈷t�������+��}����js*3�������v����/�����?��v��ʈ�yq&�������Ɍ츬��������8�q �0�oH�yI�;�`���v1��;?�3��%��r#X���������9qv�͝F� ���/����?���=pl�V���{vf%>�h��`�!�~�܂��m�n�����{c�?�q��a�����*A�|v��T��g��E�͑ډ.[��l:�o������~���:�� ��V�+ F��ޏ���������7Z__����8x��:��� �w�8� �X)�@!�,�$�`'���E�b:ϱSl�����N��&�}L����0�x��@ �0UCl`��;��a�jh��0��"�uVY_#<#Z��pBҲ�QVV��L�\j��"`�������6C8�%�;
�w�,�wx�0j��5�A`=�9$��Q��	�Q́FI�K^�.ۘˌ�{\�[��G��(Ub�M�)[�X���v�`;��,����9HF>)�\;���I>�%^�Ю��-&�,
��9�鏾r�+�!&̓�ﱳ��ݝm�g;��9���Gq����y�����[q������.|�K�`�62�~�&I�W�OW'������l��\����G�Ub�����ΊU<��%��{9rEd����-�AV�:a� @�_*s&-}���.�HU��,6����?��ظ¡"�C���}�&��7�
V
�Zu>�	�����7�˿���ٖ���0r�a�`�R�}���.BL�B��L����  �� F0��.���?����		�
����� <x�7��ٔ<���d}}�?�����xD  ��F; [ �}������3O{ʏ>}e�3�wˌaX������D���A;YE7�Q@�-0Yُ��Lō���Ѓ]�7��)(��1n�-n����ˍH	,�Xf0\/]7�(��\�(�F:b&7��7��p��0k@P�~s\Xa6�)���z_Rc�P<�A�������H�v�vR�.$��z��7�XB�X�Q��P��/Ydo�>���ѲM���PQ��i�w�y{�yձ��z.����7C~������HXr�uލ�`�I�� �\��S����=���:�r�-���;pםw��;��]w݉��m�]���1��2m1m�) E`�}%���5@fF�	=bA`i�km�`7�͜����A5�Q�h�zR������ȜN,�{��S+5\C@��4�d�F��Qe��#��l=�i��    IDAT�Qy��x������Q�q�{~_��O�k/�i �q0P@.�G%��%�׵�E�9������~�g�|'��s���/ಯ_����J��r���y?����x8A;�(�9�A��s��@@��mq���B������ͷ�.�?����������8�СC_���xףq�������a0�)�� G���n����g>i��4+TԠ�������n.NA��du?��*�n�a��m;E7�Ǭ=́��#
���3h������IM��'M��!������N��R�`E `M~굅 ���L�T�_8J�݈Q��: !$ �ZQP� �6]�G�D<�&~9���V�΃}�z/0B�\/�w��������A�wp��#CfFc:�ѓ�b&���=���>G����T󸊀L�]�K�d��-��� d�E�-�k/X����Y�v�:��\��{���qloo�k��k���\s��������X_&"��#�e�c�1��H���1��h�f,��S�
(la1�A;���� ׹��rt]�h^+�����]i@Ѳ��=�B��rBEl�f�i��&�:�Lu�JR)��(]<�u7��Y��w�JJ�h	�̓7���
���OceeeO���B�ޫAK�v���3e4��f$������9�w�����_�{�PgQ���Q[�>0қ��/vQ�M3ݕ��A%�}�I�,��&�؂؄�+  ������~VS X__ߺ���:t� >y��W�\���W �p�� ���8��y�u_y��}�ϵ+	�K>2�$�J^�Y�ɩ[ ��J϶����>`1C�;P��zm'�A����'6[��H�B�﹥b��BΠ�ht[
H pVn�4��
�@] vA7\�z!��C?G)�2��f��i�d�`��JaY��%p�7��� /��x#g��ue�4�G! �1�}��g<�$�j�m�6�}g|�8��s��?�"���@%8�0������;��#�!�NI��<qV��#����YJ�9�b:5˜��}���'p��W����0R}n�b�@"F@
�s�3��H�}m�"R�s V&�U���+}��h��F����j����j�Q�9[�)��N�D�h������P�(EgF��HG"��TR،��8��e[��S2��mĥ�T���b��D �"����7}�/�����g
��x:����k	���Oڇ�瞎�:�e~]}�Ux��_�cG7A$N_5�@Dx�q"I�mU2͹Gۮ ,2�C� ��d�n�����>Y�����7��Q���{ =$� |�������Y�  ����o��i�:�Q<� ;8�x���]yӍb�����AT{��v�ϥ���`�z@?�=Ƚ����w,���ءK1�E�P�~Q���b�c�������1L�Ӻ�C��u<Z7���9��zs/2�!$/o�� ���	pX�.(�\��֩�(iA���-~���?S �s�*��o�)M\Vv�$�XH��fT,�C���t@3��ۢ�WN��zK�����K����6��vU?c�Cv��Xc^Χ"1£(����g�a�	0����Bgrk��7��O��?r�.��"����<^�������E"yb� 4h���Id<�f�&�vp�զ`�a�5�զ��+=V��i*���30M�HQe5�@)�Nз�DJ�
�:g�V���`-��t�`��� ��l�_9245VLG���~.��Qu<�b��ɽ;�6��J��(Ԫ"�u�s����I��׿�3�.V�b�"!�*�c��V�X���׾�s'=�>����/9�=�m$L��i"�M"��O����_b�VhAG��
R���8g���Nא��W���?u�M�����o���?�ǈ@ 3�RJx��7�T�ˣ}�G�����Q�c 6���n�����M�{�����	�Դ����N��	���lB��أ�N�8#Ӏ�!�����n��(� � �\�&��B*��-uu������چ"����Azv� 
�x�Q�kӛ���ό�UG�F&)�e����<�`����V��A�r���q.��g��P��$J�i���X�F�X���N���K0�D�;���pGW��w�B�o���E<Uj'*gª�0BЊs�,:u�g'�z�B8��SC����p����:�/ѧ��dP���E�g�_�Axښ̌ 
&������i�֢頊��ų�m븙�tA vvv$5��m*B��0J��Mc�O���Z��o�Q3t��A6Igs<��ȪOP �K6�EЭ���t.�'Nd � E�
~���񖋿����RRQ+��{��̄�jzI1ݯdL^��?��D�q���?����̟4��DB�"�~�J�Q[��D��<���V�Y���NW��N�������Oң"�����)�o� ��?*GS�7hcc���믁��G�x"  �0Q�m(
����,�=R;(*��XBjGE\"h�,`>�AjZ����Ƅ�L0�!#j��0���*�<:�<�A��c�e�����V�Z�NUWeI�Y�|:|s�O�2�"*�D�1�CDL-BL^Bc�<`����	-G�9��H+`�m���H��I+��"ڠ
e�C�$�TLB���#(���V�#	��8�9��]��m�FkR-�A�0	T��� ��۟��T6HyI"�
 �]���A�~�
m`-���7��Wk��0�k��fd�10� �xΙ=V��wXm
�uZ�g�����N�LIv��(*h RA��
��n�>1J��":Q��JJ�)�����W"߫�0fTm�K�!����;d�������Z��FW�;GJ}*w�m}���2E�qt�սp4P�$�=��7\�X��K4mf���r{����r�wq�\���"M&����M�z�*� 4�8<1�K�{��Bcj\H,�$�>R��$���;X,f����-����� ��qT��X��Q;F ��ׯ&�c]�=�N��0Q C� ��ݽ��7ݘ"!wQ��Q'�Q�JI~0,�(��
Ҏh!�_��C"n�ک�E�	�j�G$a���oA��idk���#�ulZ�p��DU�O�&K��/7� ��"m��,P�!$7tr��,�`,4'��e瀡�a�g�򶘡�D5p����w��b�b�2,d�˹��^� H{/���)��x܍�f�n�nE�z92�Ō�F?��f)�cK��2Ʋ9
��
S���h�����; _y�� �3��F~�w�ϻ��w���13���W�O�Oc%ɽ?� �)�C��Ų�3V&��!�L�>/U0��9=g;Y���:W��2k)��g�_�KAܹU�e��n�F��@m�-�J �>�����\$/J���Gߕ5H]�%q�z2G7� VQ�VϜ;����K;�9��_�?>���HS�~�^�r-X5(D�s�%'w�R�|�� r��<����s~x*F�(�!FQ�bF�N�Qr H���P��i� bj�ws�nE�Z�� �����(�󰜀��͟��g���X�� ��u�<� @^��������������4��AjN�-?t���SD�X�J^/���N���\2���D�19��c��
�y>M!�"A�Z]H����w���/��T�����V=i0b��3!�I�m(�!)��BDЎ�"(��m���9D��� �g��-Z��NxYbJ�{�À��c�g��5:.�J��3��4^q���N��d�	���o���:K�K
@�uLjd��K����B��lҚ
�ѐ�	z}q�F�Gsz���/fl?�d���>��3���܌K��f���mNI��4��φ�0��)D����iZM��Ν[���0�Ѝ�ڣtO!6��Yj�I�D��[�>*ς��~��/��B�zME���G|�i�_n���qf��GMu���8��_�Ԟ����8!R��������t2��?����}�)�L���6>�"S,�h(����4�_l$<������K���_��mǿu�m��?#����)A <�ѽ~6-�r���ƫ��x�CM�xl>�߶ӗ�iQ�[5���ť�YY���3�n0c��`��5K��
����/�B������ZY�àQ��z��tr\���hO�&]=�|�#���2�7�E�.{}7��|�jT�5�H"�K!9�n
���q׫���E���	b�T8_��Ȫ B�duc�2HD6(aR7~��>��{=J2�UK�N���#@k8c�-ط}5�an_���Q�cQ��+,����!���Qi�,9m#��w�}�)�1Yr����������zy�"����gC�щF��A�+_�	A�RB &�U)��Sf�/e� ��TEͬ�B��w��3 ΁(~fx�-�/�@A?��΀^��x���W�:4>'Cp��;E�:t<� �FVVh��&�"��߼p�������^���^*�Q������7��e�}o�[�&`�!����i��������@L�R��N�� �̌�����!C�HʶA�W@lZ3_��ۏ�f�۰\�7��v���	 ����w��W_q�W�>��<1 ��d�1���n�`k���tU`��{K�f�����"6a$�NE�� �<X���98g��:\)���Ş�v!�(`Wx��N���d %茦��);vj�=ˁ���7���1�����k?�A�A(������5�TZ���#|�}��0��sH>_��Q�d?�31A���2HI{��g�@��C-:��A�E�9{�mjƪ�(���>��*�ɲ�S!� �;`pm.��X��U9-P�r�(�n(1�>$�tJp��e�5O.�Z8������F���m̓��c-�gx�"��=5���������*c)=LX�^��gFӶK) s(J)�y'�D���T�mѹ�cܩ�9k&�T�#�u3>�bً:�F��~��&�m�d�@��g_/A#���*5}bkAZi�<�1�2��h�l(9�L��i�`����7|`oп��}�:���7�8c�����M�ΓWŨ��pm(F��_�̚h�ͷC��DB����#Q�RHp�q����e߹��o��إ�0gu}}}y]��~�8 ��h�X��� �]����<�=�]�%'��?!6Ma�6h�)��
r�I	J�:L(Jg�є,@����n���
�Eu,B˻����m9F1L+T� ˿!�Fe|�� ls#�A�y�ܣ�`T#梥�v~��S��u�c�o�n��_TQ�'9d�V���_`�e�3�e:�,�A���ƪ�H�{,@﹢"6N!�L��^��4�^�a��Ơ��$µs8)1*��H��nX:�MBrC`����Rع��3��=���ϻ�k��RaƱ��R����o��3)�Ym��kV��KD^%�/�3��k<�R��(�Hڸ��Ҹ\�<2��s�<?��𜄥XD}���(��������T���⼗Z�i���	����Q����Zc��s$U
�JPU�R�;3������s/���)
	��=���݇�u��m�\�~-a�%��	O?�"PDV���g� �4!ȳ���[�I҂���G@q"B`�kK���?Q���������:IUq ���/Oս���Dq �(@��������w�S�򡮟����j������H7H������	�Z�	;�u�`�
G�E�Q�Y�����8�|�F_ZV� i����q���F&叚���Y�%�.)����I��텍[_J\0ĠoC%�7S@���:�����4�鼋W)&�lΑ9$Z�g;� �tG��ڸ�m�TQ�#��*c��%C,�#R���(�&o��F��V�� b�Mכ/�DztO���?��������r�du�q�n�Ƈ�I9!}��<�|:����զ%���Z�  �������A�rt�
 �c�q�[�E)��y	���܀�7''��$2#ўڙ�+�-6��<���ת�`h�9�8�r��$���i��&�WG���	L�e��O�i^�Y��T���J��}u��]����#��ڀg��4� A沤WDߟ�Y�SLB�A�?=R�����v�{���Rj��À����]z����U�wJ�����^?�X,�� B)�1��O ��}�g��]M;A	�dU�}-w�9'ݤ��LV5��}s
)"��Vdvc���c��}dS�}���R�_������9mFD6!3�9(C��@T8s�p�(�6ϱq�-��6_Q�3!���㚖C�M���yN�6/��M�Ivp��� �0�䑐��D��(_O�b`�>+y���p��ϣG�;�����
�rɲ���	�\������տ��� ��f�z+��B����.�������" &�S�5G�O�W�s���`U'�gb{�B�G�O� �3�C�
p%H�x��� R�������^�k�4�ݐ��^c����4���Tx��A�{!�	�#0nWlcwT�|u�;�B���P���o�A6��XC/���wAE8�p�{�g%z�IIxp�S�o����x�ߌo�kLa��T$�H����K�Oc��Xd�K�����aJ��y��G�v�Ĉo^�֑��A �������� lll�����>�h �~Ȁ�0���ߺ��R��n>s�Z���ٖ� ����4 ���v��He 3�0��R!�Ũ�s��U�w��"�CR��)���-�f�o�nd̈�Ĩ,3�����J�aD���'�(��AcAg-G*Y�K���~��!�*��.G�8��}��_2�VQ��ݍ�Q[0�,V��#��Q����)f`F㠷Ǻ��)������F�abH�R&SQCge��t�����l#���t�D�*���$23���KOz�_xᅸ�����_&�?vp'@Lc�߳lu��!w�_��������)�Q$oc��:����cC��Fu�2�d���]�
�ds"��xt�X�]�VkIV�A~Fn�
�w^+n���>@u���֟Gʐ�G�e,�W�k]�eCH,5%�E��_�wB`�1! �~��{�^�9�����_��RQ�kVZ�3��/�,/��@�4=)�N�ǘ|!"��a�O��$C?GH�N���3���?��ko��N,G�'6�9%�? lnn�t��=0'�+���lq����  �?��d��9绯��]7���}� �v�*C7�z3$��(�'d�f��etV�b����,xK�č���v�eu�&7�Po_7/�PT<f������ ��x�m�k���ڄ�o��=]������R;E3YE3Yq�"j	e��5����F��	HY��(�)�D�.�E@T���A���	��p�h�F�@`x��������:C,|dBm,hF��=�F86��i�'7Kd痨�hѺ��b�]yH�����>\t�E �<�g�q㒱��"i�0*�3�]� ��''�6�)����M�ќ+��M=�;�Q��%�~6�	D�[�����C�'/�
s��}�X�O�Jt!0��kl�݆�kP�!XCb��0&���k%��̗��)%{2ǅ?3�!�����=���q���L�w�c�_��\q������H���i�QnC1O�N � ��M���wj������@)��
G"�^�VR�������$DO�PK�q����/��gG�c~<� `Y�� �=�y�/n�|�������]Yv���f�[���L�K� 	�?Ą�JU%gk�]�j-/��-��?Ps�D��0ʓE5:&�����j�<��\�AI��Yٜ�
�q�#Q a��A9�T�T�Ǡk�p�`H��vA��i�U�MRr�F��i��4���%���nQ9ֳ���e�Z����&���B�����:g<NLؘU��R��(-�Fp��z�����~���'=�������w��/��=0Ä�{    IDAT��w����sM�R$�c���<ڇ#U�q1ߛ�c��.l;�ψ�h�Irs�Z��(X�Ya<y��ht��R��b������� �/�,�V6d�֞!$,�Ҧn�e��(
g��}�*w&�UP�A���DQuqNBHN4�T� ��^��=�9^����7���=}��~p���7#Q��`�Ặ�]H��t6�U �M��{�� ��ɋ.!���Z0D��N߇?���w]��e��D�S� ��q�� ������|�+[���<�{�ס��}�8^J�'��~>B�|���dUJMR�2d�j��!%$���K�ʾ�a����H��R��Qj�R)�r,7-(9��B&(�&?&
  �Q1i\�i\7�"D>U����@��Yr�D�� J�$Qt����ܡ_�e��j����,E�Q7Jv�� X��*�Of��H	��B��<x/�c���dBԖ2F1C��T���Jt��'CQ��u��04���<��0C�������U
�3�@!ҦA��d�@o��&�U�B�������G>�d���۷畲�%���f�~G�r���4'j��<s�]��l%s͉PEg /��T��{0t�J=��)F7ĵɗb�T��0ԙ�=��r`��kſXw:��p�B��(�gƽ��GJJ��t�ȃ]�*cU'%�D��N �YKx�	�V���8����}P��|����}�mL��Lp��������VG0�v�2,�V��_�"�^K"�7˲�`�rFj'� �Z2����lu�׮��f��?q q�����_��gG) ����o��S}O{9�� �5�8v�w|���<1"猾�1YY!56�J�F��t$��BJ��1D��@#<�EJ��*�#�x�hCvU�\L�W�1�����|�g�!/KC i�klw���Z�E�u_aLVhZX��n8L��sF$�!�NEɞc��Bsv�H����(J/U�C7iW]�\(�����F+�ɧh�)��@�`2%6� ���Y�I � Uaꝱ@�a%���F��J܌��jXjDjȋ�<
x�0��y$;�S�I|�C�I(�T������������Mu�4����ӝ5M�dN���TѨ���G��ށ#a�X��k�y%���Z#t�~�e��{���I}����W�n`$�N:�M�C������z�6���6'WS�Ș��8������mWE�MA*W,}����L��E�ͻ��N�|�h0M��6�I�E��B��f������ԂKF��Dا���dZ+���D!���u�w��p�G7�z絸w��G��w���������`"z��OT`��Q������Mw�.E`��;X��Դ�A�����ɦ�;�1��@.RFG!���j�n�_B� ���E�Vl�D�r���a��r��K9�`��m|�3���7��8�l�8�����J��o�J�12c#���W4ߍцl00׍��Z��� iK��I�"�4C��)1�zȽ��R2e�&�lm�ff��9�]�xڰn��ޅ�yn�>�|4�ٔ"p���5Q�`s��|L�7~��]IO��x����11}��_�U����@
�ޏ�'E�d��FN��ػ���m��!z$\#:���z2~N�/7�r�6��m���&��׳4C�w��|7Fu�<eP�m���ܷ�^>���(�ȡ�����kl������S/�D�=�	3g� #� �D���i2�2F��e���+65JKj�����>	�p�_ ����I��T�=b�Y�O��AѢ4�/W	�n��="FS�b�aᒿ!X9rF�L�dA~�����p���G���c ������o�G���4�1 G?��k����n����;4m�~�@.��Ϡ@D-O�pR3%@ y��-f�h.��	($��|ɃhhLH	��"5S���H�âTh�b�j7�౦?������)Y*D�?Ρv����.�AJ�bj��NB�J��AjZ��*!����
mF� E����
�Z�æ��yX`���i��=
�~��s0�\|,l�*)3�(�O��H#uY�vg�nܪ�b�c�.�aY����:����������|��]w-���7!b@Y� �������b�Ȍ�@_>F�;;;�S�5#X쎥C�&P�����.Qp�B-�[zhn���L�;��ٱA��brùt�e��{��܁���:��0i>�H�� ��Q�(E���w�ʜb�Ŋd�\W�ߤ{L�bPs�U1O�qԱ-\�O��l�:&5�����K��^��Pfƭ�ނw��A��Nۄg���+ѝX)O!i9�:dD����.=(6*o�1ʵ�r��gl}��L���\kh����r�����K 3sY__��������^�� PQ�qI�q �Dt�箼���w �w�Փ�/�	�b���-15�a��+���/ �@A�~d"�"*X�tM�p�`����Gz��mZ4�m��b �ލc����������tE��B�ѣivhZ%��)�h+�Fk�I��B�K�ua#!B�K`���7*��J� �M+(��BR��8JU(����l�s�Ѧ�(*X�~B����݀�����P�[�����ѓ�xkl36pd( `�V�0fi�]Q��>"�{M`uP�:�w�~~�7�t��&�4�4�����,���c��sO/-��a��! ;�Bȍ!�:.�b)���6�{`sǍ��$�E���P9�L�����ӭN-bRjܨ���?5�7r��z����bͳ�ͣ�C��k!\�q]r>�R�G��,�k*��3M��a�<����W�Xbz�^Sf,]�b�,!���|������������7`1���0i�� �VA��κ��)3�����}�� �w��K����3bLh�SJ8�o�w���7�R�`����(��'	�1��'��XF�4J)Gn���c�L�����bY��@b �У�g�ZךsF�N�g���M�N�*@�v@@�;�Ԡ���-�-C��lK4HT�R3E�6F�X#0��5[���m�xZ5�Eەr�uѦ�o�tˌ��}�Ȟ��#��%h�k$D�BH���B� s:Lx�B�KD��X�}n�=�P��U"��6H��:h��n�A�d�E�A�8Z0�a�F-�%91B��_�$8g��
�[�y�����X�H������7a��Lb�jb�&�Zbm,����1,�;�@�,A��� ;;��$d0��䨃�:�0�
p�����Ys2��uV]�I����sZ�2r+�I�yw8�1u(���>���NZ�Tg�|=�k�3�w���?c�9e������*�Wד+j�`����0C'���Hpaj�� -#5	k�8�8�������j'ʽ)�����8��������4O;}�A�˵��I�Q�"x&ZE4z����� :Ȓ��jі܌��>�Q�bw+_�[�7r Ƶ�c��� 666�DT �z��g���h��� *`��c2�=�y��;�w��������/`����_c�3�ɪ,�(�&�`@&>I>=R���$���vA��r��w�ϥ���)$�����b����J�j^����q��P���Hd|ͻst�X �< 皧�B���?�W��𜗣�<�F 8bP�9�r!�;��.� V�85O��pu&��]	�����,V򠞯�6�"�|D��v��3P}{)s����>rߣ���#�c�~ˍ�D�j*XI����Lf����vwT�Ҍ��ac���s2Ŀ��mR�㦘3�Yt�Mb�4�x�NDKi#�[�!��j)s8tRF﨧���&�
���7{n��;n�3��������כ܋^c,�#�\��
2W����$���\��Z�	d�Y�*��7cH:D�H�C�@�z����3��K��O~��$}"���6�@,��
�I)ВiC�dL�:���Fu?�E�U ��%J�E��-�����-G��>���F(��x� f.D�C���=���&�� � lnmo_��w�M��GP�E���E+bJH�16b�JFL	���HyNj�`�����.������C7G�g�2�v������~1�NYyuA��cL�Q�Ck�u�+EZ�Ba7�S^*�O�^�XeY�"���naC8$j3��"�R2ʐ�:�5�E�.���|���j(�������d�u3���-�hH#9��2���pE8��Z��/(T�}�^��cw|j�3o
���a��W�\9_p>������"�a�qݵ��g?�)��1Ѽ�4+��8`����u����\��8m�}�a�˙+Y�
4J�=0�+�asg�rI�BPV�#8�b�1e��� �����;���_�T��<��yv��}ז�ڈI�4�C��!9��.�C�5Ph"��\����Z��T�Ik�]�
A��]B�ts<�����I:���.�S�:ك�q�?�[��y>�>m��Ъ�yX��2EYP�L8�(Bh2fN����L����+�ge��H*=�~�V'V����������#�onn޴������������C)%�m���Od XF�i�� �\˝�\s�=Ǡ2� ��Qd�ڦn�$/.px3YUL�1}�j<
�qÀa��!��Nk���m�y�����5������Ht�YU����\J[�jd�����A��2����j(�5��,0�sݜ� �He+y�ދl��*�𲖿�"��%�Zk99��Q�X�e���_7�d8C�UC���:�Ȉ^\ϣF�;Ƥs*Ax�<��N���͘���}�}7"g4��)���s��s)��v�/�N���r@���V}V�qK���� Ҷh���icSS ��k���������(����׈Y��`ހ�_���<��fu:�<Zng�д���9ٹ/����<q�8�����3��	����7"h� �)ektd���#0��{fBj�q���8<���g�]�-��2�o���>��[�]��1X�!M�ݮ����у�@:���t��A���0M:�_�#�زd,�7��ز���e��ڒeY�ޖT�[�[����Zk��|�}K�:%,��eսuk����s~��܂��H�B�v��������,���~+x�+_�������O/��g�{��!D��dH���m��~�n*AV�1hV+�͚>�I%'P ̦n�{��g�tϭ �`{��j��T�%��\� x׮]�0�ݻ������4�
�?��4�|>��׭��q�%���d��\�;5Q����q�.VK1Q��醍�O�����Z)�s�M�������\*��-�� SH��dV��FA������� 3��u�ѹ�~�h�)�v�[Q�*e�<�������D��|���׀�5��d��� ��w|DҲ��ԝaP0Y�$�w�&�/5�S�q{��@���'P����ʷ_w�=��IN���8���h#е+]@���6҂�Gum ?~�̰³rid�N���^��
Q۷04�C^�A`H)�jr���9z�F87�,8������*~~���5Zҽ�0$@�JC�ђ}��aDK�6۽�ɛr�^������i7K�� +�SnA�;�2d�݈aȹ��&�,��9&�?"���לv������>�����Tx�(���7m����{ ��:�\�Y'� b�bk,�$P~Q�gNR��N& ���kn�ښߏ������3�������ƩB@9��v���=�_��)����� ���,p�!f���d��,�^��D�"�I[�Њ1��� }��F]KՔ]ODR�E���D�\����p�s��3���
 ��)(�@	~L�F����T�_0�SR�P�6�����B����SU�嬇�wփ�Q7�UPH=�p��84���D�E):mѢ�����2w���� .S:����q��Ux���8]:�`��`�ʂ�u��:����?�0�y�{p�'��<l��mT.�F�F�2sh���H?޹( �o��T��"Z��P)�R�U[��+B*B5.�
����G�j(GN�����}��h2�ԛ��i��\ �or���	[t��XP��X��mJ�\�U�-���5�����pC�S2V~ M7�Sd���Iޯ��R.ǩ*r�Mf[˂���N�p�D@fƥ�^�<%Y�H��?�� ��\�̉��l�s��ح�y~�0�b�AS�m7�4E�n����O}�f��0���=�2�? :t�����v�޻w���|�9 2
 p��;���1F��wb����]�s���#�M7�f��h�Bb[
$?�j�B��s_9��(p�MS��#+�iR�A�@v��#`��D U�`d9�8,��+� ��~t�����[.���!�i�7�<GB(�[�\e��#Cʩ|�A{1Xkb���EÀ�"	j(���~�:�J�p�ܸ��N2T���+ �{5n����(1�7NĘlh*�\�+Z^��Wް�fe0N?�?|��$���]���(Y#Iw�	m�yO�����( 3�����H-M3IcR$ʜ��܈ +O��D�����J�@��0ǹs�\<
��mױ��2Z�g��d�m ��NI��9�^���F������h�I��ԡ0��G�W{jO_��A#�J/�e���U"ټ+RC#�?���L������9�� .zы��?�� ����z�\G�� V�PQ�Q	�^*k.�gV�����D���?�Z5EA���� �>~��{���G���?g���; �v�: �z�o��K���9�\��(�&ē<��0߸�ck_r�9'���"��s������	��rX��!�k�C��Mo7	A�c��4�,^�Lc[��p<�fg-��иP�@ٱ�pl��7sC�bI��a(z4/ZD�%����D��IzV�W��B�����&*�!6�*�t�+���h��gڲ֮�BM�@�{b��6̙H`WA]�F�#��&R��a:#T�Qp��U2嫯:=�߿���[ނ�#��#Rq�,�|�@38�m�խ�2mk�d+@����F�)�-f�U�W+��gu6������0��ut���ё�!�&2T3A��f+>�P"���F�a�jqФ������� ��&t$��Z1�J&���������VM�"���HTmmF�<�í�/�d����cI��жN.%�W|l�����g�gqɷ��\:,���<��@ w�EE� ?�4M+����m7ð�C��16X��?��=}�� �C�[��?�J�l>|x�#C��Rҥ�^�>������C�02��R��_���=��y���}����Y�W&�UDn1lm���t i�EV8�
,�y0����ԣi:�� ����1mh��P�k���D0i��b�$����	�	D�%ZA���$��)�Ȅ&������r�B�M��������FB�����A��Q��X�Z�3(S�ı��A��ȡ�`RC����U+�IK���5�g�޼ 'Ar�%��,Hu�w��� '�N�h C3����E���f��(�N��ƍ7ވo�m`!c��݀R4ՠ�m�mg�/���LW�f��;�;66N¼B5�r)mns �f���}�X�e���L�QrC���w�" �KI~oY7��t=70`h�F9�T��m�sjk:��)��"b����s�������:���������>�"��������IO��H�i
��4�ҔEVTΈ�vx�����q����~��0��ɏ�$�3DOC�+qE�
���d-�Ni�4f��F�eΘ4+�VVР`���t�Ç�+��ǣ�Ok������e_{����tbmm��oꤖ� �dT'��� 8���;���#ð�DlZ���&+h'S͇
�vR��jpc�	�W!��l�i�P�%79�e9�R�
�������p�������C����L�ãq�����OeQ�D�
[���J�h��>�.��<���(y��i�4�"����LI�eM�%gk�u �*��;�    IDATB���Hmp�y����I#b�:0��.�FDI�yi�C�VJY�A����-E��ʧ��4�'��>�5Wߴ�F=r��|�  ���F��pD�9�3c��|��)�
�x�� y2�=I�Hli��毆��i;��\��V�b�����k�F��g�P*0c�l:u��kY�>kFTy��پ-�5Q��i��W$�A�A�N �u�|xT8�w@��3�V!�[3�9A�|��Ѣn=7�yᒑ�8����/��N� ������q1�b0�#��Q��8�zOɪ�+�XIԅ��J�<,Є��*�pd�xzݟ~����9������	�/��`6���K��K/��[����n�s �2��@�8x�����M$�,����c�Vv�����pMl;1
��/j�a��V�NG �~�t���"@S�b��h'3t������N�C�+�ӫ+���g���z]�$(duH���p���w$��H �Q`Q�ݛ�)���<>��?�Bi��9%���F�N24CaѮ^_�-��cc�-��\L]iyo�%��>�m/�(�1�Hl�h�<m���<TV^�������c��q!����-׭f�p��1�J��NW0�Μ�q���F��O��]r�Ϩo{�.[ߚn���Q�/���P��U��}���VU8�B��9�bt���f��}�|�0�.qx�:�cB�1�ȋ�ҦYD������}�}�:��2�d��DMљ�O{E�~��Nffd}��T��뢭H�S�|�[?��F{�����=ϑGu���Y���~�	�ȕ)u��T��c�!5뚵�����<�~'����1���B�;w���e_k ��?	���{��y�)���s��aN��� |��ۯ��p���! =�'�MW�Nf�LfHC�2kґ�������Zy��	f�}�a���=H\2�~��ĶSTAJg x4`�xE����
�PL�ƢxM:Y�b�y͍��
Iz{���%i���;�����U���5E�1�O��2�R�;������aX�j�H_�(�V�z�Fu�BIa�w�c�� ���G�\W���J
ʹ�QY�=�cl�4�v�;u\��k���oFPؿ	��w0�=9A��ձ���?���B7[A�ND/�T���~��q��"=����XNP�J�8��fc�WDʿI�μ�=N�Sƿ����G�㏵�[YY�C�(�	|��k[i��Ȁ����ѿqm`S�#��|�+�%��L�u��u#���U���?���#��И� N�9f�t��\W٣�Z!~��O,��N3�r�~��o�-;~�6}ҭQJ�u�3�Ά�[�4B����C�h��D���d�z�}���� `?*�Ϙ�s�Q=����1"2�DD�{����K/���x��n��q ��q*`,t�*��R�������_�G����cF?����=���1��`�u%�z��v�9�n!Yl`��IH{B���3S
K�J$� ���r;Eg����H.)�+׈�(�`*�"F�ä�`n ktc�����?�
QI��U�-D����U���*��3����!��Al"&��/CҜ� �d����֥�4�N�u9W�{�#( DB)r�F�� d��t����9
DRm���Hȇ��3�SJ�⊷ITH"��%�U!R�!���k ��w����Z�@?�رcn��S ���Ih�ޔ�h��/���mE��O�"(f(E�Fь��E���)������U1�K���%�k0������S(����͝Ay\B�g˫BT�Q0E�입 ��&'X5�~�^I����C����}\F	�g�P��� P!�.���Cs҂ih�%��9�n���'��'BY;�Nd�y�c:݁�� ��44����������u������K�9 ��&"Z\r�%�pϞ=۳g�S4����G�q*`L\�r�߼������(t�8E/Q�b�n:����~�_lIC��1�s!�"iK������м���vh�HbJ�Ǩ
����9��p��C�%��MֈA�t�iC�FV{TC3ҕ7O_���#3�hr����}������5pa �M�Q)�" ��>�@�@�9��F)������TP�5+;]�3R�^
�k�Q���K�q��Q�;r6��߹�ڥ7�?�aؿ�Q��A�������a��1]فn2�����*�ρT�O�bC�t�H�k��h��+��[/{��,{ڵ̉�D6.U�׍�?��ߍ��YYY�k!}��z�u�HY��%�Y��:0&\�HN�f>�%�U5r[�D�;T��埀��ur_�*��|��$�4�rG����=V�A~�I�0���?��>����еM�������6�	�A*Y�&��K�Ks�S� ����s_:�[h����O���ɽ:t��ݐ��0�3�����6���}-3�ȑ#�c�� �ҭ����K/��YO�O3�9 ��� cq�u ���ڛ���}G[������9%��-ժ�z�����cۉƷ�s� ���Nf�ǶC7]���ղ�G�R��"6���� d����'��v9NW���PK��%=����6yU��ͩ��ڢ]a6k��WV�S�FE��{I�g�4��k�-��8� ���Z����2�z��&K4���aK�\�D�^RMW���`ym�(;(dO��-3����� �����q�t;����#{˗��Mg�M�y��<;v��ҠFN�9F��8c���@��a���ٶ�p?`9��"l��ȡ��CM��`uuU�SX�-����Q���i����P�a�7�|�׹@���E��?#�f3� OKyo
��/�S~vd@�ܵ#|�C��:ZB���_�<���#��W�Wk��#��8l�ԡ��h��5���#
�����l��22������de����G7�ȸ��C��?�
�CU��!g��
��ܹsm��9r�ԵM�v�z��ݻ/۳gϱ�{�S9�9 �=�N�X�(�*��}j힇K�,$��(\�/����81b�琈�AzĶEl�SWVa��ԣ�oz/��_q6��4Ā�m���M�,�Y�Jg�$��tSĦ�8 ���x�>�r�j�x-*mbr9T;�,���G^�DlKl(D�0RVC��C���6;����?��`�WE�����u�D�}��,)����S֞�agA��215	�����b�q9�UK������8|����$���F�4�� & 0��*��q f� ��ײ�hj� Q�|P#䎁E�W�jU�(c�JD1$�nb�G˷��U�����!�ر/<?�z����Q�!�L"�cΤ�%���ak�V��?�pZ�i=8�r�hS�-�/����6$A��UP��7\��Y���������{�t���.|�#y�׍Q�"^���Joܘ��W�K���U#4�]8=�V�L�/�д�n���C{���{>Aa���Z��u�k��@D���گ�ݻw�2�o�8� <�0'`�.�R� ����n>yr��h4-rJ ��[5�""��j��_�>ȱ��NV�0,6Qr�d�*�z�ZS��4�������5�,��N�����y��������9-�0��C9D;���_s�B��/��u����fػɉ�a�e��W
� f��b�9l��6��9f�>��h��{ r�bΑ#�S�ƈ�;'��5)Xo�#�K@�E���(N�,�	7O���W_���`\|��Q��Y57-IY=k��承���< �vϙ��W���mH��΍IC{�|J���6���J����Q.�n�p�����0<{���X�=b΂!N�4ׂ+�Q��97�}\�G'FN���rY�sE�T�HT3���V.Z�_���j&�T���ָ1��Τ� �����;D���o������Ǧmu]�ӶL�D5\Ց�JA�O����MQM�N��i�-�ݵ�D���e�1>m����� �������i�s HX���' ��+?~�-'6�_lb2ہ�>��m���U���ʪ�ӕ�Ar~ �N4��P����#r˹z����z�C� �6�}1vh�	�"RZ �s!kL#9y�ijD	P%��xc����t)Ԙ�"'�����jT-��a�	��n�gW�0�AѨߢV���8r02�FF��S�R�i����*&d�@b�$'\����3D���XN� �������c ��_�=h�&��1��;5vo�`&��U�����G�u����p*�:@n���p鍦x���Eֵ��k�:�����=5�J��?U�R<rO.|����<��/Eu�CM�u�w��;�!saMo��m��@����60@?7T��������6m�$�ZEI�#� {.�$,}$���9���+��{˜����x�;��?t��������f�_��kq*ѝ;MsFj4Ŗ�"v�
m��h��t!^�����6T�?�y&j���x�Z�GD	�|��ݿ�k׮�z��t�8�k�8p����>����MİX�:4�&+H��a@�g��s�f�E��\AJ�h�	R?ǰ�B;��C��c�Q��X���T�R�/���ܙX�K�>ƈ�th�NX��
׌s� $��LO@�Y�P--B��<�"{�k=�LdLӨ�x�]�k=0J�&>Ɣ'�%�4�6A�B�jd G,Xɗ<�'(�����g�~����\�Ϋ���<�{|>En5.��rc�q��	��=�qې��M�	��E�j�"��G�7��'& Z�_L��ǚ�#��^����pF�����V�_�xX�4�;��P�k��1�����x�Px�ϕh:�S$6b,�`�4�nBu~R.WG$�_�o�k�Rڨ���M���m�����Pq���J��%�y�(ͳ�y�s<�����0�_�3��Ǐ�U�z�����ߚpˇ�bmk�p���~�u]tO�"M�i�P�R�����w��f�LEʙ�-ܷ�������������T��1�����-�ڻ����,rs�޽�^���=#y��'Ϝ�p�T����s����DE��(-|�f�~1w��4,0?y���-��և�w��&J�]uBӡiDT���8�8J���fh܈SM}(QК�Ħ�Nh�F\^��]�1�+�Mʾ,ڱHH��+a	�2(fX(�A��[��s���z��B� �����9{�f���j(�JJ�u�sR�)�!1�Y޵��8����hb^u�������'��_��#fe�ºV'�S�Z�;��z��8 �����]֚˨��Ȩns&U4�Y����C�hjr��;*�!Q�5�R� uN5�w"�	x����ӒZ1	
k3�⑪l�0z�y/y;�!�:�F�h�TS]\���rP�|�
w��A��!Z��HWl�R�X)�;^�f�ox��W��Z�Pr�����p�����mf!������,:��w7,�c�QJ��� \T�ʖ�M�n��@iq�8|r�?p�M��_����$����;w^��k���	�*���믿>}sg��8� �~�`���6� �?��{��8�%#�m�a1�@":Ò�8~\ F\%?��IX�[�&`�������h�	�D�H��.R?�Ʊ4ט�N/"�#� h&3t�Ut�L��T ���67�����^�%ex�~W��^�ƽ��jQsmk�L�:p8 oe�˿�آ��
,	�**��y]������T�5�#�4.$���#49����Q�87*:D������X__�>�18j�� ϷT1$ۢj���w��oCTN3�=�
L�ScG��~�5=PGc0vRDf�	��n�A'�@�Ev������	ع�P��w-U��&mѫt��Cr2�x��m*�|�S5�iE`���M������odiA�IMp�A�S�]8���fdĚ.)�5kl�˔��}�����>+�C$�`��5� ����O�_l��k�V�0Ec(Eۓ듦�Y�R@Ꜷ�	��9��M:ܳ��Ɖ���C�,�?U������ `f�w�}  "b"JD�u�%����~ ��8� ,7�	klC>��+���CGҰp8�_l�m;��)��U.�<y�#�(�яsF���3�<��(�Gͯ3��HJ֣]���j� g�q]�/�(�SG js��H>�v8e?l�:`�R@�G8������Z��RP�4R�@Z~�!�,i��:rnjPu�)�Z�#Z�7�i�b$̈ȁ��7\A`#�i� �o�>��I�w*�T�߱<���x��Ό�p����`�����ޝ����p������Z���^��0���O�����*zh96D�P�&y���Л}��s�����#q%1,�Q�9^(��FN��ux;lpU�����Tu�I	�\���[�~�$�	��1]�y�}�KF��^�9m1��!�SB�5MA�3� ��?��q�9��У�o��_�W����Q�lH�J�>,RUpf���}��6���y��z�~��9���dw'"i�-"|�+��?x����ъ���������7�1&V23 6�ys�޽��O�8� ,7�(�)�[,�����n)%a�%�|IV_�Y����d�Ľ^����Bh[�R�R���u,���R0�+`=`��OaR(6h�Դa�Р�&�<�-����D���T�7jV��Q ��<[�N*��CD<�~N��F�Cը1�X���X�<f9�L��z}Q�^5�S��,hCP.�ڤc ���D��-/lvK������R��z�nk
��Z��,_�t`�~|�/�B���w��I���g��S�V�Q����,d0���Qa|@"q���6#Ok��$�m���!���^2K���\��`���j��k?���P8FWNm0D!�9^˯��*�W��[韦��jȃ9�� ב��^�O�,�~�yBb���*og�(���Ј.��eP�y��B���!�����6��;��������oz#8/0i�Id|�s�����1�H�~�ghɽ��?�hu��]q�|ka���2���?'��X�vx�5���R��F�c���?����Y����?X�93o0������T�o�q�8��X��c�z ���G�p���yd��W#�X���	�àeA���\�O�]�d�<�v"e}\0�syP�kV��@���!Њ"R��b��4 �ң�D���o� �[[X�7!܀ fB��^0u2��Ty�-��|ppG����3��h���Ǹ��>�5F�$�I�Def���fh
�b@}A t]���	�:����mFD�t*LI�F(7m�����S�#w�^���K}�~׻0��s�-��Q�ӅXekP����J%��]7-�ˬ�>��/ީ�@�+��9�s,:��%�T8����Ԟ�p�I%���G#��WZ��V"�q;do6��������N �p��R��d�á@�}���Q�a���3���m4��撜�_����(W4�[w E��T��V�U���&6����_�o�D,�6�u�8�|��о1��YØ6�aS�$+��5��9͘NE��i弈����<}�BD &L�U��}�����0� �s��7.��{���ʐ�o���� ���|yU�o�8� ,?���
��r�}�޴v��C�&z�v�3&�U����~'��&��|���bl�	8���J�S�A�錨���yk� ��T�џ�3�!M'醦ؽd,��h,�� �z�"�%j����r�F���1��� ΃�D��
�2�? �4h/s7��4G��N[�E����C@!14%'��{*�r�zB��Ș�%�[U�Sk&&���j�b�1���k�A�4��v��ۢ}�9r����Ɵ�m�g�����.X�!�����`�`oYˎ�x�[���WI{����=v%�whm�����^7N�xt]����+����z*���[��Q�K�w��]j���D��B��/B>%u�J�\�!�1R�⍢
	�H�4�W��o����p�^���=���� ���8�q���:���M�6�4A    IDAT�����0V[X�!i5^0�����-��֟|�7��a%���\���XK�����v���r����~�
�ߓc 2��ݻw�����ڞ={6��i�s �p�S�I�����{��<%3l��\V�z!Nw<C��|�7	
m��i�Ӏ͓��tS1N�&�C��/�� �H��r�a�b���4r���)�n"0����ܩ�6������ሱQ1��/�8�8��b��G_���
z�Ֆ�f�T��ʚ�0 P!E���qlUⵤ�!M�IT�̈́�<�l�-<�B.�2�V`P�8�=��k���]w67O�H�m .���tTU:#�a���G�F�A�˖���#���Lu#v��Z�dψ��x首��+�9����t߹Z`UaD��H�Q�:"�A�{�!�[��|GH�AJo��se��	C+��!���5Ue��db�eН+Ԕ��*���JI���C��8�@�J���!�O�M�����ǻ���������{�E�4J�~�����;�����a�= ?���<!礌E�� 6-&�����?�鎇���b⟍3i4.0���}?3߽{�/����)���p��T'`�p�������ɡ��d�%7�Y�aX`��1����f��c�9iDc��ֆ�M��t@C����%I�m�ay���
�l��������Q� �|�F�C?�w.��V��aXG������U�]�ndъ [h�}�X���5��\
����5$�����z�[y!�u�c�c�p9�<W�Z�:���3���G�D��O &��
����PLo~� ��-;���0�o ��s���� �R6�`�FK�� s� JJ%#���T���阽�����MglO+�_ɑ
@8%!D��/�w�k-���P� �3ïi�T��68��P%���J2���u1��`E����B���Rx׿��qjj�j��6�$h��Iݽ��~�{))!�n?�?��
p����I����\D�i*�Qџ{���!B>Z�h["��3���Hk�4������<�b�M�����l1����k777��~���v��������w���/���gL���p�c� ��
p�C���ӇO��D�y
+� �����N��'N�8
!��4�:y�� ��ClDM�r��r�|��o	���m9,D'@�)_�`q�����m�M��I�uɵ��(ZHn�2�QU���f�a�.rJ��"�kP�GL꼰�`T�f���sYڂK:�j��h��r/sŔ1ќJ(�Z�$��$%��^��(ё,�0�;�����{��_����M`|�y	֑��fЕ,�4����X�E�K��W^��9��n股[9[ M?�������w{_��E�fcXV��̐����|D��%��0���t��=�yjȲ����#�I�^�;�5�zŝI��a;
#�M�ii!�F��r��0��]Q�Sn�:M��uo��'���(T�	�͓x�{ߍ�B-D�N{\c�Ū$l﨏�����������A��\�n���iQҀC�6ҟ|���v�?3�g���Ν;ߺ�k���1����֞���]�~ ����� ��!p�,�0�w}��_�}6�\rN�^E��̥`k�@�4h'+����E�}�%b�<z�vvSX.=��<�)�_lyy�hHi_Qi�#J�ֹI��%'�I���/�+�UQ =Jv2XV�990�,]�匵.����̀�����JF�&<�K��;��# �!v�b� ����ȶ�P�,�5�`Ǿא˗n��nXnC1�/?�a7����������u0�]�_% F��V����+�ܻq;���zO,ub8��$��O2����NP�]�v0TƸu�x�#
X__9���cs��~�/�=�Zx����NtS8_�'i�%�6m
ֵ�Z�k�3ҵ��N�~��Ո�F�f�k!&����B�Һ����ӷ�� ��o�7����q*c���ݹ���:��@����?XbɘL&(i�{m�<+M7EӵH�+��+>��;�;v�C�g���_g�" Tv��u#��gjN6�9 O~�0V��,�����xp�X@�:=<	];bOl�/����Æ��vz�^l[,���NV �D�ze8�)��⧹�F��S4� "> ��rJ~X2Ke��ؒ�_����/����ND�8Z���ϢN��(�HԽV�Mfh�34����6�5U����7���U2�5E�Z����t3�>���i��G�f-���p�r�%�$%s��#E�Uv&ys�}���O\�����0V�f�u���kK���)��bkI��8|�,�]�X��5�k�f5aĉ �E�y�!U֬ʌT�m�*�̯�Op�F����:G%�|s"�`v�E��j���RO/�@��;3D�6��"M�:`�}d^�K1��<fdLT��E��u��?���KC`N3��C�G~��JD*h� c����k��޷myzs 3~�|������G�S\�'6�V��{�9z��������п�'��đ�ܻw﯆6.���7}rg0�9 O~��
�CP Olmm~�ß��3O�&qA���A�A�vA�vN�	��(106��NC��t!6(9#s �ܚ���p�΂�"q��@�fA�f��ڔ\�x���!�VH��H�\#2(t���H^tXl�K��f��tn <R��n���Oќp��J���`vh+I5�QG��9#y�,)�z�r�O��Rbָؒ܇��֢�r
\|�M�(ʧn�'��/.~6CJ��k0nSl8����W���*���K��G�h�]��ap�}���_�8%�y��I8k�[*5E��(g��5zvuH�g���w~�+/#U���]���N��P�D�Etc�AKC��J�ly~����X���������+���F�50�j)��I���Z�𦫯;�=�Ξ	�'O�������o���& �JG�)N��)l�زj�#$�������ȩ��VR������v�����w��r�g��d�m��fe�&@' ��N��/x����������m(@������GB�hf:]�0��v�B�k'S�<zU�����bkM��
t�U�	.Xl���h�[s�Ԝa2�!��L5�q�~�Ѫ��z��!�����."��}[{\B�$�5wI�"&�Ű�#��B�+��-�U(e�L�Ff���	�~0C��**��{�{J�ph�/�Jv�� e���trT'�s��Q�zPx�՟]n�G?�������FrS��4��S�\z�{�t	�ký�8t蠯��37����T�	�����D�I���t��������RA5$P2R<���1��\�dLs<�;_�b0�{��pP	�f�=������M�"������
3R���BP���t#��ӭ���ʒ���� 
x�U�<�>R�3���|W��
<p��%��2&^)a��@ꐍĪ���Cs:����G���g����������D�݄?t����|��7a;�?���:�}}��3x�8���خ]�~��6<�� �s�_w�S�X͂�x�����?1�m;A"�3��o��u,67%��N0,�`��>h&S4�ð@�/\?_�@~W2BӢ��ж�H�Z��i6�J��v*7*��o!%mU��@7�t��A�H㣦�`b ��*����+%6��D5NRVUP���G��w��@��Y[�R�b�t�T�l��T	�G�b��G��.[���뼝<HIa��� #O�4�G#�o|�A���/J�?b��Y	߲*�%�z8��h�����-�k�/3�#���/:_��CPݝ1��"_�-W4����D��$9�mC�xzEU�DK�H�9h�[P�ۻ��� J5�s���w��ԑw�;�)�H��P͸.
�[�iԜG���	 	�Q5<��<1��J)9*��J<�*>�8����<}{_�������k�F��D`D���5�g�� @�y�42 );�I��:3���/9̝h�	bۂs���K�Qſq�V���ܹ�W�}��������s��s4�4�� �8� ���80&�B �}_��÷�
�H�NU�b�J:@a��ݨ�aQ�"i�,�xВ�R�z����)�����$:��um��k�ckp)#�\�t2�~�-��)�i'h�� �t7d˫�aR�^t|��c5b�n�Bh�l'h�)��
�Ɋ8 �Qhک�Rјlq�@*�#Q`m�5�M�X{D��#����dF>!g�[���v���E��Xf딜%������8�%�=�0BDL�@�갪 ���#��"~���/��>�@��q�6\�o�#a�Ud5��U
jH�:�#�q����"�~S�;�baZ�=ii��.�Lғ����cƿ��D��6��)�~"�Z�*׈�Z@��D5�D�' �J`I���#��I��0��_�Q������z|�����+ކ.]%�Ֆ�E���9Hk^y��a��a�;�%���D����cK�+ �_q�(�����掯��o@�����z��G�EDG !����o�s �9�T'`L<`��|~ϻ���+�'Od0;� �-�iZ��omYO�b�������"  -��� �U�+���_a!��;cӡ�L�Mgb�k���wf��D���$r-�f2��K�B@3���� X}�R��<���@e�3��^l�Ql�Ah[/1Ps������
��M�y�h��bT�O���n�H� M����EL2,��jm�q�tV��5����79g\{͈�߲jZfh�o�vԘ��H�9�!_SI1��e����%����I@s�d����C#-�+`�$�I� k?=�0`�f�:�޿��i�ƿ���[�m�A�,W������R�^��\SC%
�d�,����RGʸ�Ʀ�`���^?_��� E9,��MpH�6�\���4�?���}���#x���P��������U�o�B?���b�Xy&%�'s����$����#K�-��g=��O�5f������~����1�?gB 9 LD� ������x� �X>9xn<�; cm�����2���}���x��.yqwAh"R��0aF�E⚈0������~�2�,�4�-�?�V��a�=���dA�v%��u��I��"�sMӢ�(�U8�GR*�6䁐(y@��з�D< !�q*ֻȩwX��d�Zυ%�`/=����Qr�Q[�_(�H�V�`�I���qL7�r��BU^����5� F���Y$��E 5n�J9=��$�o��gq��:� ���Wz0O$�N�����h�#r��u� �>�Knbi Y0��VI��wUB%�qD� �>Ј�$b�7(�.�iDI��2 d���u�|u�lM�PU���������^��K�)�ٝf��ɛ"��zZ��BH�)W�+�b�R��@E��T�(�nP<��E�(���A���XrB?���o�}=|P�~(�	�J�>�E8IE� &!![Ռu���.�&��	����7����˾_���|�#7=`���5�Ov�߿?���W���8�k׮�ڳg�מ���8� |����B<�� ��+�m���9!h�?���}�4$�1]=9��(���L%J�-��!-0Y�����(�$DY���$-]Bձ覉���QkT�\�[�D�-�i�Y;��(J��Z�V&8�H�A��g� I��-�[�(��A�5����i[=�`cM'��t��GAN��-�f�\�U�di|��������,�˵$0����n�����?�@���E±��X����m75CVB� ���Q��S�G�ׅ��@¸��>�Er�&�T���K�&m�\�K+�0s�a�Ns�9o��F4d
�*}��2�Ҫnh�?�qW��T!��%/�f�T�Wj����֑�Ց⤗�
7 ��XSa�:�^�'�/ZU��s�ZN(���^����#�y��~��p���*�_4����Qu�<o�̐� �s �����i:I!*%�~�_�Y*����/�?��~������uc}}}iYϽ{��,̼`�# �ɗ��e�x ��O�?��X��	�8tx튏�������B���m7E�� 3��Ű3C��)�(\0[ف��'0��`>?��4���W�
�DH�zI@&�o�����A�*L�	�����Ô]���H��� q���dJ�}��"�v��������j�P4je���E�cʺ�JD�X�����Qr� ��Q#��3�!G㉢>����f할�d�SO��4��<�!E��1����ZnM��L@���Z�h�b�����=�׸�xd�>@��ȋ:4f���������ع	r�3��F^>_��t��������%#��xN������w�y�	��"@>?
�-��ܕ����I���$���]��Pf��u�U�J4�L�� gs�
.���]��F�{������� 4A��y��i�4�Ѿ�Ձ��[&e\�,=< ϲi0��� i�<H�mb��M���}���W^x�UWD���e� �u��Ν;�޲)�S����ڻw��O�ܞ�8� |s������G֏�����v�"S�L�r� "9! �����&34M��	!4�����n�<�=��"6��M3A�t� �9�`m�@J*�Ì�4h�N�jt`��\���
yI����L&n�C��D,��tW� 0��@;]CxI�r�% �*�����'#����Q�	:c+�1�5�������L�IQ9�ҹ��sRJ�@���F�F�m۴�h���qǗo�ɓ��@x�v��`ڜ�J����(Ⱥޞ�w�!�:�'hs����y�/`P0�dp�9�䪗@�����Q����c܉|P������̂*�GgHs�D��_���v���=ayl��?{�O{|�#Q�m·]�����C�U���|dQd��L5ԙ2id�s��3ez���U��tƟY�y�Wp��~m�?]�/5�m�H5i�F�bÑ.��5n�~E��ɂz1���"�5���O8�S�����r�[���?럳�������I��AD������驘ۓ��o�8��:�~�KW^�/����m1���3BH�-��M�\8�_��N�)i������Mס���MW԰���X�HW�~�)u�,�=������Q\j��3 ;�@�q0W�<��gUd���o"�����n��vٿ�T�b�!4U�"*�S`*nl5�5�C���*\IM�Yp!c���;�Q�Z]ap��v�g�T��ҭ&���&)��o�Y�m��w;��2���l�Û�d�fN�HJ�x���������bN�ނQ)��'�����B�k�*C��� ����>Hq�ͺW�>16���#c���9 �/}�=�q�+N�Nm�$�_�.�ʍ��R��YRad�
aB8#U)u-\�O���x�{OO�aU:�<���U�7R?��?������P[3�\0 ����@8���F�v����1h�(�U��^z� p�_<����?�������u��e_����j�!�wt�����S1�';�9 O�0' AP�-�eA� <|������o.�"'}ߣ�ΤqM��[�[*������D"�F��|i�U�o!"?�LV��V�t3����0k'A� �('Dt��d�-�A$� �ȩ�͍M�n2�<
Z?�T�-8o`������Z~;Clд-�v�DC�yC�k��ǀ�(�_k�9p�^�+v�d5��b�aX �!ј�:4E�؉h�\TZ9��`R%A�0���eq��[�p����h۩'հpaw��hJ�/"2�hA�3E��C[-gG1���WM)��9Y�7�(�2����r;l����4�Q~���;�Zia��)	��&HZ�YT/�(<]�)| ��@�o�q�
W���s6��"�� �����j�f=����-�k�&h�_�A�    IDAT�V:N���0��[F�Y���������-�8��60:*h#��!]2]��X�:Je��˳E��T�� �(��V���oRI��gV��җ��?��'?�i�� ���e_xJ�_�yNDG�h? �����T�1
`N�X � ��<�矾��<��ԣ�ϑ��Iu a�{=�Bl�/�曒��ڑ���!�.��R��4��n��ZƯ�e���amC�3a%�Ŷ�d&�3�9Ik`挬}Dk��2��N$"N�т�%�yX -Dm��05���G��Sպ�i㢒T�u�Z}�Mq(DM-����em�(�;*�C�%9�>Qg��Ѓ��V��D�������ߏ@�&T�ո�����`v������G��צ/y�2�����dX|m%�j[��c��r]K%�f&^�^#��BE9��D)r�%��þ7�����J�r���ˠe�֖�j^�vv��V��%(G�HGE4�?.|e�tu@B����l+c�REfƛ�$��}���x�k^��zm�־]C�4Q���M ~}��m�(hC�-��F⸙b&I+
�R��!�����K_��ݻw_��w��'~���k��ۖ}��?�y�;��w��'�� �L �8� <u�R'1���������OlDȩ*��9�,r�9�i'``���gp�8���o���&�lo��d@�?�ʐ�s���[(���&h�	@b$M��`Ü��R�"Eۉ8�6�(���0�ڿʡ�4{[) Z�����>�=�[Xl�İ�#�Ema
9����}ۣ�Ak�c�Z���S0�܄R c���(��V��(�}������ϋ�%�	��Wt!UYd��SA4h�zH�EK�4%0�=��������<�_7߶j�0��fX��8#�n,Q"+W ͂���5�H�V3�� �?��L��h��L��������R-���j��w���h�#gmG���Զ�5�T��15b!�Puv��y��;6�d�X��y.�^����Kݟz��a�[��f���/�	�9`��-��t�I*+�`[4��'u��16@΢���&�Q }B� �$h���B@I=�t��gtM �.z��_~�G>����_p�p�'N��[n�@Z[[{Ѯ]�^YJ9�o}��YC�<�  ����l� ��b�~�s������=���~�N�yHh�΍Khi�;vbh'3�	��U,67 .^O��H���DQD)�&�r@&)3Z�_�LhULC��z0��}楁 5�����Fт �?�qȈQ���F�cVF�.�
 lR�Pmv5�\���")�p{��Y�. dy��].���d�5$���噌�M-h�L��5���V~��[��#� ���!N`�=���U��0
K��Yο�9<x@�{�j�#���-
Q��Y"A"Tǡ02�#g]Mi���䯒*u�E>�*"��J�Z�c�`�op��_�/�J6̨�Y�Z�3AN��[W!���+nT�,��T��G��B%���q��]g3�6���#H���+ފk���HhI�.X�%��F{�?;�.�Z�gEl�Êf��HԞ��H Ķ�RN
h��#' #�->q�k�w2���?���t��fϺ��~�����~�U�z�����w�qǟ���/?+��e�7ܠ�C ���]�v}2���Rʱgpj����~�� � ��9B�A3�ϛ|�n���?tѷ\���[@�m7Aa�H�E���Mf(� �"䓈�NfXl��4O ��%!)L@�jW���I"�Z�#]��AIl%~�p�i~��;�儖����)pC/�0�Z�c�</Ɋ�锧����	NY�Z"���,q&?�Ǒ��df�e����!��_'����T�S<�f`�b����"������]���H�ʳ�E�Vw^���a� #����iss'6�h����Q�o�C>T)��M�nm�#k�K��!Mk�J�,\�!*!m��i�R��ײ�	�)�{��:WȞ��B�򵄒I��JJi��|A�ԇ)'Z_��`�T�Wl�c<�e��6rJ������=�r�����鶧�2.B�Vҷt�"O"�(�DRn��B#�D�I��T�\�jB �s_]?�[[�f�3F�C��ї�����������.��3��o�X__���ӾPǵ�^����&(��o���O��O�����y�eWy'���9���*m2������Xd�@ ����c܍mlF���x�a��g��q��8<э���v��[�� ���� I�%)+���J�J��]J��*߻��s�����so���F�T�QT�2��˻��m���U@[k#��β$�é��O@�0Xj�vϗ��g+� ��T���K�m�F�oh�PO�F�!���sT��A����4@NT5�<�l$�W�
��dHa�Z᧮Al'�(>��A���� �
���4�	��!(z�.��)v��ji��+='^mԷ�a�(ꝼv(��~u����f;6�zh�;5ڞ���h&� ptU]�`����3�\��k'��$�Q�����iN�8p`	DOV��&=:k/ :�%3�m�b�U�i+=v"�Ŷ�
ň@����2[�H�h�v�}��溟�BG�Q:P0"��6gI�%��$3+
�Oyf�5V�/>ƈ��W��ֿn�;c�G�/�����3��Wb������5��0%��i��{�$�''	r�b��h�����"yT��|�Db����$�ުI��:M�5�K	�W�o��K^���ę>�颋.��5�\3��X6lX8�d=��c��{�K^XX� �0�AM��J�����2�А`��e�a��I�ܹ�#�N�� ڻfR$Ts�HM���;Q�~�/U6��ip4�NNR�z�����s�晣p�c#̂�� �G����T��J�21.����F#��_�j4#������M&R�Hm�j�m�8�Jgrj��tJ�Z����z>�Ag�\f���uQ�_F�RP��'T��+�����J����2O.]�9v2�o4�X��2�r��̌�s�]�P���h@����%bx�I��I�a7T�Q�!Sr�P:EO������4��5�b[XFs��Q� �s���`� z��}͛�p�}�}����Y0L�)�A��s���;����4 �B% [WI��c�?��m��j���������?��|�:5����'��fր��]>��SM�CY�gqhqF�D� 1�ь*7��h�t�RRP�$������w>��9�`iÆ��t᷹{D?��� �M�6M�6�\�����}�-��rJa077w�>���pk]�Ϻ�p�% ߽e	��18�u�[v����Ǐz�`�.�k%	���ω�V�W�R�L��U��Ke�Ջ�f{��w�*�C�hV���J���Ґ*��9��g`�,���D�ƹŽ�sD7Y��G��\ -{�L��nV��4�����5u/�y�"�ɤqA�(t"撜�*g��D���<�25�aheh��v%)�R�W���P@�]w�)���l}�',1Oyd�&H1�e�*;"iKu�Kߖ��	�	�,-I@�Z��GF��C^��1 ����r$eeR��Yf���#���8J�#i�J:.�rϥ�u���$��[�������������R�Ȅq$�D���>{��Q�f����T�����|�c������Ey`& 3��SEt*�#�PIb�*���,��Zs)��Pp9#HJY��U��'T�
N�	��~�,>�y߮������� 8z�M7��������/�s�E �]����/��$"Z�
��h4z���k��]�. pjO�0>��oٺ�&�eo���.�tb��CPP�W�BF��\棁j��"e�*�Ūi���u-���N09q��:�w��M�`� �o�D�Y)(UQ�YEZ��N�Q*�ZKP�Yh�'s��z;iIVb_KΪ��U�0���IA��26E@W�{"/���
�6��e�OZ�K����l�0 ���B�MBa����Aݿ?�9�ʩY�Ved�C���meU���)�� ��pf`Q�y��=~ڇ�3,�/U��%��}��*_��+-g�߃ M�dj -v��P�v8��]0�y���s��d�`dP�#�nY��X�n�J`+�D�M2�q�{��A/\B- 9�YY9����Ǚ��Ǖ'��O��c�77�P9`#�a�����
�q���^S��I�<M����)]�$��+�R�]5�1`�2R1Ќ��Y|��={�>��k �C� �����y '����NuN�ڶ}������R���W���;w��kVΥv����}������b577������� ����Z໿���!=��` �~m��//>�r���|�4]l���[	�h�T4J��Y�*Q��B�g�k˯El[�M����]�Ѻ�k��v2)B:�$��e4�����rb��h��жcLVO�iV�V�5�1��]'�|�˥*jZI攕�,A�l�i�smW@Nb�UiЙ� Ln�Gu��d6��qN`he�U W�yS�x�o�./��>�O��D�a����VuB=f5�)��
/�{�P�9&f����x��c���U�`���"���K�4,|!Ub�@-��L�r�*_%lK@5n�lR�ޜUvZF>���W��\�y�����!�Ԛ��g�& �"wl�<���A�}U(���m�r���ٴ��=�{v�¿�w��-�܌@b�;��L�����@�� ��=&�D��ʪY�I���>Ò ������BWL1"�%�Gu���������[����V4���'���g����K����3w�}�}UU��\
� �կ~u�%���=ID�/..�{ӦM?�iӦu�ֱ=�ZK ����5���� `�-�o����Ѫ
�Q��N[�D]Өηt\�S��������@Ey����d9%�j��U ����5�Udf��]�Ѻ��WM}�R������^ ���X*ľ�D_�j�K]�v|��	t�X�b�椲����+Ō$9* :�bFma�8��l��sk��VS�Ţ5'�� �T6�t ��Y���C;d4F �P�މsb=���碑9�<\]�\PpcNȝ	"��a����:�1�q����w<o����ase�H8���A��qqnL�^�<���1��1�����fH�`ϬA��%��%�Ю	�dl���7�I�V��' =�8)�Ґ��\�+�d6�X���`�,	��-f�S���_�{���C��ȏg�`�[��c�� e�1�&�I�)����)�^��9��ǲ�h�ב��=<����Q<fG7�y`�ߊ>��i\���������;y��Y�{��f�1f�rnn�#w�u���6mz�3�����������S�`��7n���������ϯ~����go�Cf�2�N�3?r����Ǟl'�;��Y�V��M�<bז��kE��t���K7Qyߢ��+Q-�%�NNGsrE���\ ҺW��#��*�fR	Qr��
j�${��b����޺���-���Q0��5�K+�O�1�a��^�� ]
c?�h[_����
��2#�R,����n���x衇d�C�K/�D�6X�ē�7�ҕ���"��U�E�F��)�S��ɓ8~�8�s� �^��{J�_��`�Pgl�yP�9�y��36Q�
��g�<dd��,���\oSk����5�f]r�%E��X��M�`x��m�N�1�m5��s0Lz����}�[�>&f���������t�1���j�qQ=�R�a���.N)�Fst�<7��'��˩�DfU���?�SD�U���v�u=�z4��1>��G�-<�� �-� ��q���WL~~�W~妛o�ye�k����-[�"�����W\q��5??�n��ڴ/ܽ{7���3�Vp��� �ꪫ���>���Z� <�k��   0s�����?��K~4&���������䈪�A3J7;�`F(�ȀX7Tf e(�`�2� ����Ե�]F�6�0�����i	���S"�!�,7vmic�9�U��ꬵl��tds�: rΜ"�����B+� u^	��I��	FY,7 ���5�癑X�E�I+P2�g��C{�[�s��=��pt5���G���6p^+���2��+^m�[�ΊL'aN�T5��ס��+�e������!R~�)Z����ubg��A���2��U���U� 狇���	�kYmt!�g�1������F���|c�Ge8}��jr�[�첌�8~�T�����t�b� �x��~>���~믷;��#G���k�_��&��% x���x�H�&��� !x��+hϜ9e|�6Ǡ~l�sm� �J�I�I��k�
�h��������!����]��m{�; �X�/���;��V2��o��_;v�s_��_�ۿ��/��˞6[=t�����YB�h���/������ׯ_����o�}�d�,�7�?��O�d��(3?�?|�w�S
����gw�Nb��	��
ݿ���1'���xޏ��u��rvh�>�m0���D6����
m�Z�V�{/@���n�~U#�V�z���O�z���s��U*i+�����9yPʪ3���aG�GрpR�V���&;�<��:"�)#�W��LV3A0J�����"�{H��\���"A�V��otf�ڵ�k1���[���6�M�,�m�Pf�a8�^���z3g 1���2K�8��$��#�`}Ò��L����$���tH�����Y��|�$^`� ������X�^�
VGJ��$�>�b}��-��w�AL|�f Q��伂�Y%�H՜�Y.4���<Rj���z��� ������c��ݸ�m��曑bGP����F�LJ�9J�-T 8$"PV ��Xyn�sU�X�Q��R\Kֆ��e�z�TJ�Y�~���UUa�C�܅���i���i�5u����mݺ�� ����+�y�[�z�կ~��k^�w��#��'�|7�t����S���Q`�������gh-//��I":@D������Y��ZK ��e] @>,��uJ'��=K������K~(�����EC�Ĭ��b,(p�E�����+�V%K��@tŵ䐻�̝l�ޟ�����y���6����nVĤ�]G2���.��T��|P��&FE��w^g���2�t)��7�"8_��E�(��d,�Y����e fĜ�vD �Ɯ�(hb�@�Nn���w�sw@娼�#_F�I�ZYs�Р_�s�n}���Uq6
����P��E�� �L�bxǗY�]̜�ɾ�hs}�!�ڈ?&��4:�G^�'"՗WEKsx�nP��38Áz��S&�f�l�P�IK|�+Ify�5/D���l���i»���p�っ������XB�-t��$d6�i�\pjGlh�ǒ�3��Ā�z��W��b@Gs��)!	�A�uO]pFU��yO T�_~�.��R����V�[�o ��V }ۄ�w�_o�������û�����jnn�P��iW��/..��7��©o�3�n��t]a�1��[�شi��������5����̀�j��ػt���/���q�̒�g~�
��yA*�Z>�L��`�)��s%9�>(��ɼf�#&"�ltU�-)B��6@��S}�8}�Xg�֭���� 4��{�fJP%�	���o�g�YG9*Jg���Pɱ'�	"�L'3�!B���@��.� �IS��4�7gI ��#��"��� + �N0;0��04�V�ͤ�fR�#E�X�[� |ۣ�g����r�\�t#�i��?e���a���Qj'@�3�0?r��OdWJ�Z�v]��SGLko�� 򌤘�:���/�v��!+kb�L8/�c+�q��2c1@3Ӄ�t>�Zk��j�Ybsz���`�?�r��_�p]�>_�(a��Ő�cF�:�HM��`���)W�+�%��Xfף�
�1֜aO    IDAT���Uں��9O`��ɛwl��ȝ9��P�?�ٷ����� ι'����2�����ND����S��(Bp� ,mܸ�'���������u]�n�a�-0Y\\|%�})���j���si���	8��h>����7���^�̏9gx��"��:F����!�p��FR5A��������j��T>|Cٰ�����`B�� �����>F 3&�+��\A�	U�Ao�r�C�_W��8ň���*�H$�OI�ߜ��M!&B&}��kA���m<Af<d3S���j����0���r�v�|��,����>��u=�^��Z.��al��*�vU�'�l��=r�O���t3��ۧ�&�۬	�}��6�����sO�W�������a� �R樼�i��۟J���Pz��A,2�1J�:!n�f�����A�Ibf��!
�3 ��x��J�8T�Xf�7�I����Jqmp�ū���N�G.Z�]���3~�⌗o�}��8W�nDɟ`�D)�h����9q�4G?g�,ۊ#W�B�r�P����oc=h}֝��_ޱ����;ѷ������o	� 0??�����s�vf�o ��湹���u~��]\\t���}�|/3?������7��֯N�o�O<���[�񹹹�$�}D�ĳ)c|��68����du�� �Q��{`K�ɿ��.yy����B	�u�m�M�}P74a�N~M�*T3��gn;Dp'ۀ�����nv�+�9��s�:��GfmW��B@��;���� �|y_��$3Q���1!���.�	����
�q�!~�P��eV�����{������;8�F9]�Y���xK�E�2<I�&g�
���L6�Z�9��=�9�ģ��ac���%H)bi�~�^�q.ז�A��r���.4N{�$ ���	�3 ��]o@�\-n��$�?_�+)�h�Q���( Y�������TC<����L�W�4�=��QX+16�"#�T�����o R� Ҏ�?08�z�J����)I�d�s��9vU��� QA����
A�rG�ܛ�pN�3�I��F N���'��m������OB*sk��2��vk4-M&�Յ��/mܸ��(3����.a�u ����Dt����O�UW]�#W]u��w�1>�[�m��������t����_��+6-,,]X��J໾�: ��2f@�^#�8d�v������G�6gpB̂�����m�9#��t����T
Blƫ2��M��&*�#�c�_AI�8@�ms֓��bf�B�I����XPt��Z�T�9vh�U
��
���QPU�J\�C=�hv=f�]���:�)������L��9�r�����N�f��\AH1��LD4)�ù��.���·!#\?���۶T�Ey1Y�`�z������gɗ����3."<�ȣj]�\�$�MP�z�9�������q`A]��a�T�ЎE _ރYFN�5�Q�בO�!����_�r���Ɵ�)� �-���(K)�k`~�굡�"�)U��"`��WB�IԪ0�w5�P�m9'�F��%���1��q?��܌J"�R'#{n���Y 3��)"��`5rԪ_�Ӈ�z^O�/���}�M��0���Զ��R%�f�q�ㅅ��}�k/p�s�D�Yf����«/#�X\\�	f�qnn�_\q�?2�}��? lذ��}�֭[�J�� Nѣ7n�e":�lx��ZK νe����[����̙*dC:0)R1���gm�
�>�X����gp����r�{�AA	���8	N�c���afvf�]D����%� �*���R��$�mT`�\�X�#*�P��ژ16�`��E�O�L�*+H1�?��QV���]�IsF�ҺN;�/�6�tV�t2P0���2��R`յ����ʀ��$lR��3=d��ݫ�h�Փr��\����U?B��	�.$Tb��9�\(�����|��P� �U�������̎ڰ(] 
�po���{nQ5��\�}���1X��X�'�I� ���	&�UUq۳n��·(p�
�.ɳ�6���c��u������RJ�I� X*y��}`.���=���O���,	LPq'p�급��],:b���~��g\�g���g�gO,,,<\U� 6{�o�����\777�����?]\\��h4Z��꫿�:g+�s�u��dȨ�% �x8����;�յ� ��k��P��=�($_:t��;o�zh��TY�:��i>yV�.��՜���S��j$
o�o�LX��\'T� 4,�h�*q]3���	��{$��a�(տ �\����D�)��������JB;��K��lL�@���e�\�9���z5)��Z���6����MTHF,b>�T���7R����-�n��
��D�+��2;gA�;>"��5�p)�Ӟ��,{���|_�����-߶� �$���hD�a)\o���xF
T`�X`��RB���'-sW�j�J������"A�P͋��sF��~}��_W!� 6�GS������N�Imw�!��PU Q�MП��B=B�Y(vz�K�ˢ�'�H&�-c1�CB?+Z��l��/�� {�@̨� V�B<T#��J��u��%�q��[:rt��������~����0��-[���⋏���? ��h�s�������ꫯw�q��^��\6l��i_�w�^lٲe����? �kaa����'N���Z� ���>H�~�;ݟ#G���������:x�.��V0`��D�:���G��ê��#�︞���H�6c�(�hUjss�zv�H�ߤ��M/V3^E�II(@*iW�l��@U׳�$'�R�˦�JJu�#RF2E<@;�7oBY��rI��JpD�(��Bs���,x�3�*֝i��1w8r�2'Z��J�N[� �P��%�S_	CA��<\��Dbۚ�߃��ݫo-װ�=ȁ(��3;���H��&��h� N1zy����>�hO T\�W("�Z��Yg�ކ�_Ԕ�;�D9շ�X�5L�_}l��n��ҹ���;��T�!`Q;J����I�ͤ�J��V�vZ���#�N".��B����A���j�ʘ$��t�|U!���-H����e #�f8a�u�_���W <Q�J�>������~[�ly����;�Φ����>6?�����Csss�yaa�w6m�t�����g�H�sk-8��=a�	h`�)
B���c��ۀ�m|���u]#�<�@$��"h�	B]k%"t#<�Ү�^f�<|5�u�Q��h&'�b�zv�h�h�4�	�;��R��$��Z(&0,J�br$t��"\%�#Q�s0W�V�P&e�0�CQm�3ˆL�p� �F.� r�ӨT�Fv�FE�f�Aq�{���C�?~�(����������6�pv�2n1&���R�:��CWIݘ����}�3wN��=��>9"�Fx�z�`S�i
	;![��Bq	L ��6���) o#'�N�^+P?�j}�צT�G��gd8�H0O�֨�x[@%�藮�g��#I����8�IgIZ�Iq'��(� ���X5nIG�k�dT�H��ҍa�D$�+r�N��Y:��.� dtǬ6�r��jp�tk��b����H8||2������ɓ'�G/���~������mۆ͛7��sss����	 u]�|V�,����_6
0z�i���L#���G��w�&�r��F7�XT�@"i��(B62!�`R�fA!e���$p�N��哯��1>y'W��m& rjD$yJ�I�$X���H{�`T��j�3�D>j�1��sAhNN-XS���;EI!�`��Gg,��Z��؝0�ak��E�B���S��k�{�u9P��4�8�'q��8�rm��z��U��@w_��n[�N��Z�����}������Gա��]H�# A�FF-��ڰ�ͫA���$���U�������	���ٌvXt�H�zo��y0s�.J6�b~�����Z|�o���L%�z�)e(�E41��ܵM��4��)G��U_��ʩ�t��5׮�����I��тWA�P� �=��+6@(���Kl,��/��v,^�700��xbY^i��k;����r/��:���&�///���T�����_2d��]D� ^�������sn�u �k�؃e����#�=��m���_x�+��c��@wЙ|����G���t�� �rBl���J4"�]A������6cEfk�+L� b����꒶J��Aӌ�V%����w%��Բ�<���ӟ��(�>�h%f�5�g�8���}@;��;p<0W���y��|��,�L�L��ÇJz���9'so� �_V= '�ͬ���Nb��1��!�4Ϣ�g�}��XS�.�Cs �z��sQZۊ�7�eNI���U�U�8�	�op�'�������a�p�0���	�OO)  ��_ǻ����Dӟ:�8�B;5<�r��X(�T���Xc�Ru��k(��9����f:ǈjE�~��C��( SyFK��! ��Uz��9�9�bS������b�G��{���V��q*�߂����� �aÆ_Y^^��Ӽ��[o�����K�̮@�	��� p�Y?�ZK �;˂<���_���q�c��8 ��ǟ���D��{[��;�\6�P�ξ�H��Z���ql���Q��u���wǋ�i�尲�l�jT�l/֒�h���3Xi��{��R��]�+�1����,-��v(�,��N��������������^D+�
� �JgH l��9�ȑ# +ՋFY�������i��}�����A+RP"��U�� �C;v��$萝?yM%�.�t^��"أl �4N�͙��ȮOIX����9�rڕwO���
�/Nq܏�4)4�iEh{���x>|�S]����A��A�J"C���s�}W�8V��vQ����c���E1?ʬ��P�,��5�d=�\FL�ya�J����-p�t�;�Ő˫@PU���=r���޼����G�BZ�ö������������SJ��G?
C��p����RJ������ ��gb=lY�襄#�nǾ���7����=Z����' +�H@O��IPt.��� ��a��
F���BU������Tz�>�U5B5���	u/�-|�9 �
)�R�8��G�sTX�`(x�*��r!��u�Q�����8'��@����<����Z�)�b�ul�j���-�Ȭ	 ���k�ATs��Ő�#��{B
ڲ&���"R����2�f=����xم	̡H"g��>��'���Hi�8I�$�{��| ���'(���= Ո�sI2����'j�|�cBh��ڪ�T~�ހ?���S]��|~���+LK� ��ȪO<����8�k��,�!�V��/:�)�L���+�ŘȓGU��c�!�$��aGpl�c�'��!�����2���w�qBU���-��A�������#����:����7ވ��%@�;...����=HD2��֭[o�sY��k-x�a0	Z`: ��}Zr.��K~���W��A@<H7�ĝr�G�p�cۢK�T�D��i&�)({,�>�@�n\1*�?
�;��ѵ�DX88_�"�kmJ_�~s�Rt�_m�^c'd��H΁�)�u�0h#�
3��Y�Ϥ-eM�l,�ϸ��3�9\���p�˧����.���,��yP*�ѕ�\��v<��wO� =��%�e���'��c,�h�Y��ܿڑ�A��s¡`: -o��c����#.�|�N������wڸ�Z�w�vz�r�n�s��7v�P2���,n�ⲛ��(�[B�s��#���|%�����S��x�0�zm� �Țly�::f�Q�#�j`R,��$�`�*'$��Go�z��CG�F��gT�!���g���1���
���ݸq�#9���h�6m�t����ϭ<�gj�% ��5� �蓂2�&  ���o��]��������/������T�X�{1q���UM3A�&��;��k�	����,��A�bA%W�BU#�]3љ;
`�O
��
5X�*W�U5Zr9't�Vk2��%/�?������`�i��� ����җ9��*�Z&�\m퇠�ϰ8g;vL~��$x8��VvT�dŻn�Ző�`AX�u ������X^^�wr�&�gXX!.H��!O�Pi��X�ٚ.9E�;[�DG1���&��C�0GF�T����r�OI&H����4gV�	���J|��ӱ#>|�f���o�΂�/r�EjY"�<C��e�t�qp��_���T��
]�c �ʬ��j��� �K�AF)�ͯ^aJ���S;x��R�PU5B��w�wώ��ff�1���������������:����k�������D�$�}Dto�y���G���������>k-x�.��y�'=�OI���m��1�����_:{i���pV��8� �����:P��u#�ԁSBr2���T�]3AU�0��BQ�k��I1�q�)^ �<2�l[�D��û^�G��D@�Н�:7+� Z1�Dp׵��l}x� �V�����V�P8;��e��g+PD���瓧�?�""<�����՗A�Yg�f<$\{C� ����o~��3������~{7���|��3!�͛e�ЁQ�I��O&ڣ4JVŜ��}��᜾�dD��@��K�Z��#gcj��4��9+�C���'���:d� M�X[��2Rz�$j��(}��֡)�אw����h�	�R�o�yˬ \]�]��=��.#ky�� 	��uT�_=Z���Q�[����ྯC�	��ߴ��3���?��s�N|�S���?praa�� �q���Rڹ~��s^��tk-xn/����y�&-�����{��~�%�/@��wo %�K�"��6�V�8��"ϙ�`j��M3A�!T33��)�ުp��Y��1��̺s{�j4*b*]Ӗʋ}�� IV���0��
���H� 䤴�^�H�H1!���`�,��U����xv&~y��Gx��,�(�V����nm�f��͌}����✧N?)J}�u���ì��r��n`p�~�����pN:*B��˃sb��P9r� �/��������vz]�<��<�q�'sF��w��0� Cꃀ_}�&�������[��?�:�#��5;��!ϲ�g��ʄ�R��U@��X�s6��U�y'M��`�B��M]���TX�b�"�jEH���
E��^>�m��=��[D?����*����E�?��R�>����4�\�c7n�;f�:�o�m{��[nyN�������������〜ss�}��;wT��W��U/�x4�uFeJH�#���Z@�b;+t8�l�CL�&8�0�f H@��Q(jz�*W�^�::��*$c������H�j�뚉�Ɂ����sp �N�UB����#�,�m:�o ��I�>��o�FR��*9gĩ����x'N���g��`Dpp��@8"�y�i0���) @ٙ0���� ��|��X� T���$���R� T�I��=.B���շS&�^� Y��d	���]w�V���9+�C����Ƃ8�C�D��0	�/㊳Y����?'�B
$�H����WU�q��L
8EQ��*�mǔ�5�5�
U�bW��͊ˈQ�D��ˍ~���� M��#��!8���QՒ����ݏ���1h�F����C�F���^�������)_��7ûv�J��ُB(��}ι�����;v<g��õ� ��>�֦~m�+���s�4��[v7?��ozɆz}D �$mc����83�n�ڴdF�:F�)I]�`O�m&:�@NP����Ո.�c'��9�]�T��d�I<Qt��J9XV�r�IO�!��uN�!爠t>�%�[��� bY~��i(�#����&�#�33|��]Y9Q��F�b�x=�C�_YxФ�    IDAT��Y�'����0��4�i�ٳK���ΩC�V�z��J�5܅�Ȋ�B�K	�(�`�t90�##{	NlnةP�J3��)�$ɡ(�|F��U���`�_ ��=TF%��?�	���gp�	��*z��:O���uH�{����V�;�d,8�P-�J�ea�t]'�$�*�O
 M:"����g�R�H�2�!?xG���np��������݄�oU����-��f�?X��ݻ7_{��	���8=���;��ݺu뭯|�+�������tk-8�}P�a4p�����m����G�O_��7�x�h��٠Rׂ�����U+M&#!����е-֭� �h�xq2)A����N�GU]�CR���mP�#�,��G#1�1�}A��8p9��^��ȗvxL�o���� �Qx��""�A�B#'���P��� ̙�׉+�%�x87SnUV��B=�:(mk��ލQ��L5�ʻ��@g����ۑR��`/�0/�H@.{��I���2�3�"ѽsH�I��bPΑRa�YD�> �a�	i�C�Y���`: v%����, ՁjaA�Ӯ�}��x��~3 h���E���ѵ�fi]�ޙ���c�+���PU"�匣ߩG�t�BpEAQ>C������V�vDnPW#2ff�ɳ�	�����ܶ{�#��߰�o�>'�W��ݼ����?��Į� +D�83?`'3߻u��/������s�*���iM
��ZC0�{�~������w<��[��g�xt���� P�m'"�/�$ 9%u�3z��x|R*e�99�ZMR��`�.C]#�]q�Q���G�Wu]�T���3f΀��}@���Ia!�J�f���h۶Z	r���.TBm#B�:��y��r��VN�8	V\Ł':�Ǎ�J�+@E'���D�5��s�D��D��?@����C����ef,l]P��'���V��{�9��:t�DtT��1��K�X�{b��H��xNTJ���hc ��7ڟ޿�*�ƒH� �=��0)f��6�q����������Lu�l}�S_S���i"�b�6ǹ`]���2Nb�j���Q��eN�LV1Y=�>$�V{��,xӻ����H�"4��1���������9��Ss��������� ��O}�S݃>�B���������� l۶mۧ ��{�9���uZ� ��k��O�3L"�������7n��m�~��Bv��Ǩ�=��e�@�H��
�k�R����S���� �E� �Y��.B�SQ�� 
�~%�uM��Cij
~"�%��d�yɩ�K0��V7Sh���YڂD�-k@��/g�ۙo��Uqe@QӨh�sJ�S�a�C�������0��r�\�)�̌�ﾫ��`�vu�B=L�K(� (�R��]�R�s	�Pq�l��Z	�2:���4�e���=��zmH������̟��SI�HѸ���쯽�5����>�_�{���A��t0#�m�ء	�]K�ym�"�,Xq�dNaޫ�E�jmM �*<׵�R��Cp�v�8c��8�ܬ��?,|�m���)~6�7�����������Y޽{w��'>�@��ǉh	�����_�9o���+��nݺ�Ϥ3�wk�% ��:.���"�}����K��u?�Z���4YѤ��Af�9�����CP��T��9��Nڛ�u*,~��M�d���\� �P�[�9�f�P	I�EV��~:-�}!H��V�5�-�P&:�
 �^H�� �NE@�!b�?�q�,h��t6*Wh���
K���qfd�
�R����B�0+>t��o{$�VV��C� ����{.r�efn��0$��>�����*��I����L,�zԾ�Q�N��	3�	�N�u��:,����)0��J��(�TO���|��x6k�������!�R��#>Ԋ5���h�)��O0�]ɜ�{�P�F��B�șьW5��y�P��M������H��=et	���{��;x�ަiB���y�yO�{�:���O�8�����6mێ!#�C9�۶m��W��UoL)=|�w>���T��kmp~/� X�oѣY�CԾ�� ���?���7ܱ��M�	 U6��|f�p)���{4:]g�gNd!-�zf3��D׵R���-�(���� tW�̢���N�B'S���R��w=�*xT�|�%ň�x���P!����?u]�[|�F5�F=�A=�� ��)m�LK^�6m��C��ݐUT�H�aq��d��Y;\Z�}��l �[ԴIF /�m�Eq;4��((�
�@��B[H�aF8Y��C�b����^ 3�ꢁ�lN| CUEZ�41�j����]��.;A1(�TUշ������i�G?�E1*�\�H$���h��B�&fF���1ƨbY��!�)uh'�O>)�T"�z���
:q*�l>�rj�p|�?�w���uuu|/��q��(�{����Zg�� �����<h�~�h��m�~�U�z՛SJ�w�}�1�8��k-��XC\@��z:\����+w��׶�k���	 btQ���"s�#�_o��Ţ�3J�N�\\/�۵��M/|���/ ����e�j4��*�(�YE����ڷ�jZ=�8BAS9��@NY_��H7��r��g8	�U=BUսϔ�=���DZYA��=��ҝ�b�TU�)/u��) ����;Ŧv��1s�]w�	"�;Bp��X��,vE�H�@I�S�H@�kP,�$Q\�`/f$�i�ٽ&?C���� 7I$&9�4YJK:����A���l�=�P�W�9P$�}U�7��S��L Bt�!v&������%� XR&ϟ"�ӑEk"��Μ�bD�4�j4B=;+�G�+� c�
��fff�
�3p!��M����Ol����Z�CY��>����S���O~�q˖-V�&�G ��+����F��c��y�\�������kK�T���9����~���'_����0�~�Xr Q!���d������izJ�#p����rF�

Z�9��m���� �OO9�;y|�<�*�Ů�TP�.j��r��*IrQ|c��	ZL�D���8���i:m[�c�#��8+�P\e�,Ҹ� ������b�+2>����= ��u�Z^~	�!giIs�Y��ʇ��Y�B��6*pJ�̭�2P�#2�ށ�^˦�������iI�9���m��w X`��	۽�C`	X�?9��Ч��_{�k��x���@ ���u�H��5�	J�s���8o攄ǯ �P����
9eT����?���c{{|y+�~�oU���'o|�����l�?��O�!��(��̼'���sn�=�ܳ��k������I��ӭ��{kهb(!lI�Sq-�f����W���?���$�t��D;8B�-%��D|��R�)V ���W�2 Zi�V:��Zt]�z�#p�0�D�U���!���L��ͱSLh&���&,��*0v1�hc4;��gAԔ��r������{���u&m6��U����n�r��P���0P�nCp�T7��<��9�� ��CO2.�ͥ{b�~�$Q2%�!}�Xk��P�D�N��J &�����O�6�^��6����v(	 �O�b���,��AW-}�	99��7����ӹ����w�7��SqJ*��z*m�����ā�ĉs��S�
��D����@�)���PU�����{�oA/�k�~k���{b��u���?��?j�y��_���wVU��m�cW_}ux�X���ZK ����bJ `�w���#�{^��^����_���\����y��t@������^�9�#_K�ktL � �I����)IhR"�*�S��Q�L�@2����xB�	@�*3��u�9�
�x�g.
�p�!+ń��䩄 )���~~o�r�h4@@A�9f�^�$�ʙ�T�l⩡Ȟ��2�����ed��,�9����La,�2�GbeF������
���g�NrFBVH����5=�l*�����Q�`�`RI�
Y �d©& � &s��v[��E���qï�������@��ϯ��s������^��3R�5�8gtm[�^�%��&��4���FMs_t!r�p��wo߱wi3���0z�H����{I߳�yee%�����deee2&9 Q���ߝs>T���[n��|EZK ���U���!U�F����Yݺ�c]��oyц��/�P]�ȃ��(W=C;R�y�:��5������6��9Gm���b��D5�*��R1rNHt]+]� Ί�W{[Nɬ�\%u
��C�5�����f�| ���"Bp��Lw$��W��.up)!��Wd8[��K����{��@7Mj��ٜq����/�QĈ�+c�a�N�t�@/��sN	p�2�'=z���3��ME��Y�@:��iu�,ZDޗ�`�{` ^}!�U���/L��J!�����z|�l�  ���[񮷿 ��Z��_U�е-�fRa_	=P$��q9�Tl(���t�r�⢋.�����{���C����S%}���zq����0�?��Y����{��{��}�NBZ�K �...����������ʓ�v����Wk-��^��S�g݀=s`��{]���_t醟x�?��ϸ*&���<@fk�� ~�#bہ��!v�G��Q R�^,-~A�G��
�R��2'fV�������r葻$`:Uh�=
<H�yT�������yu�J>v������E �ffJ�ޅ
uP�fis� �NU�l&n���C(V��?��;�|�����2��^x'���ʹ�Mr�����7�Ӗ�]3�� #�F0
*��P�dE��O�1��-a,~�)`�~֟�`"A�;�ą�@G��]7�iٚM��P�<`�~*M�����*|�3_�����6�7~��R�cR�>�Փ+�],`�zfF�IA�R�^;9E�ή��/��c����8�t��������}���`yy� �?�1������ݾ}�*�'���G�h��_� {�sO�ڵKm�ϵ� ��!�餃h �D�qe���G�~eu�?�{�.��S�����I�V��)KK�9�Y��)	�kQ��_�@-}Ω��ȉ�/���,����|H7t��Pf�jFS���Ei0�NZ��#X�Aژ��W��vXܦ\3����9�c���#B���X̌��&���l���p^"����7��u�!��j��ń��Āj�o�k<G	��2p���Z�Zk^���ġt0`�aX 9
G�>^ɏ����,��^�0;��,�^�����(Η�xȜ���Į�ZY�և�ߌw���"�k��Ե` ��,fffB@J��*RNp����H?������9����ꗾr����x7N���TI��y�	 ���g�9��}�����H�t$��9���w����]v�e���{�ZK ��o��	O h� �<q����o�ї��ҹ�^r������H�$�@g�
�rbu��4�x� tm'��*H�4K�����Ax�'V�T��U_�W���C|�3�(p�faܟn��	���Ĳ����]iɚ澛"8	�fvV/��y����~��d])��
���[NQ�bT��!��)�u�[o�&�#��:^�Y�^?��	]R�3���`E��Q��N��W&$��a2Q�	��
HϳP-"�5��^�L����*�������Y�	qF.�/�z
�d�#~�o�Go��Y1 �#�����7�{��/�zԣB=8au�$������<�γJ��y�﻽H-�%K����m���0�3aB*�q(`2�� �����d2Te�B<�$����T��O08��)f�m��-�޴�����V����������UKjy�����n��R���H�����<�Y�k�$� �k`Y�N���&�ٽmjzz�����O]�$���f�n �6�)�?����w�݆�~� �;�v<��#���n��9wxxx�u뭷������H���zP��I ���G�M<rl��Kֿ���}���"Ry�%ϣ�n� ���X������h��Ɉ�Ƽ$$�Y����bW�\���~�˸`_]P����S���maD�����{�׍���(e��oC �]���-��
�BL;U��e�!�,��s阗̃D����W������c��sT��e�51�1"0��o���L�	Xv�$�c���t�\�̌��� Ik~IN3M���Vj������0S�)j�{9qS��u��J *�;�8��Ph���./�i�Sއ�W���]��[��o��|���(��{8�ѝ�ӑ�(���j�W�)����y��đ�O��?���i?��=�SO�K�ߏ���9|�3�)�����A^����̼�뮻��j���=l~�% F�zPO zM��U e����7�:v�ϗ/��׮]��U��Aj�r09��;��/�a�F�F��B�n��tQ��nN���ks@�Ԏ�(���Sy��5�8�(
�Geo�<I;�cG��e�"��SoXN�Z�.?�~ݺ2ȥ���3I,�E�O��JG���S3I%��%͓/�刻�c�l=@1��
9��"��t ��E<����_�Z��&��`�o���txgh�@�<ԓ�pPm@��
W�_���Į\	]��afm5�V�བྷ}D� U5�J.J�j|Tu"��D�	 ������[?]�{]��oދ���_ňN�UVlʕ�1���ȡ���:<;y���hNM=����&��YH�o�
��u���l��+���v����O~���{fQ��y��͛���;�,w�M?��C���X`,D
���B�9TI@��&'�N�s�s��/���A.ˣ���gO�=�� B@D��B>��Y�"p`D�&.
)?{�,��sQ�o�����C@knNK��P�fI�Ko�2�21P$��R�&'X� �� `�k��d)C�]�y���csQZ"���A�"�"ȥ���}o�ˀ�\��E�3=�ȸ瞻��)�sN�w��P-��i�Dj@$I�����e#j�&fE8���\^>��㎜ҏ��$��מ��T��Nt�@���pN\�&!tR�/WD�Ӄ�������:%^����u���s&>��� ���'�_���p�EF����[p�.f~x��G����1Ƥ�O�
U�?������B��i?�������푑�9H�t�f�	 ̼�����������ؒ	�@9�c�%�k9H��h�� D�3`%�a �\ ��uk��۰z�e��xن$<#��<8��cc,��+��-㇀�.-�I�)�ڧ�<����Z�-3�NG	����̙LnRPP:�,m�c��<��>m�Z��G>�#���Uҗ�1 I�9V'�����pT
xh2�$��E,�af:t���}�1�1�H�?���7V����%pN���ӏR5 ��Oj�����*�/�AD�˨[���4�|?�n8��Y_
���4s?_PX� J����%U �\����� ��Ɨn�I�-�i����4G�,ϰl��=��㧶::1��ԟf�
��ϟ�����=�f�Y|��o�ر����N"z���"�=SSS;v�h?�� ծ�7n�066vP���U ���=��̂�0�"pB/�G�7'�o�=4������욋��ez�L��itJ��X���>���\~��N�;Y�¯N'��J\"��:���I�HX���{���Sc,g���r�����s�
�W_}5܋NG?_T�t�.)���@�LAdV]~���D��7���ַ����k�·�� .�5Q���'h��X�]�?����9H[�Q�$�����&f�:�X>��̆��'q,�x��З��]ԑ�Bz�ɁO��I��T���6�d/�SH^��T�	 ��I����jҞ���u��7�A��X�*���O����Ȝ��`~�ȁ݇�M��x�����P��-�S�?U�,�Jܾ}{��'>����O�y \����,KN    IDATe�?��!,ѽ8� ���-�+�O	$�`� �<||�y�9�n����7m���뇲A���6ǲ��b��sdΡ� ��
a���s�����ʱ/�{�U#�0�d@g�y8����(Bi��'C�BR��(-�X�\XL�L���^�
���?��� � �}��w�=Y�� �n����z�Z�9|���CZ�K�t&0�U?!>�U�Az�Uٟ#�S`.x�
�@w(PY� ��{��#B�����j����_˓�T���j%�4  .-}R�)��6b�#��D�$SiǁX������u���n������/���������}��=�j��B�~��}eo*�/���,�7��?��gx7|�wt?��Ϸ���,M�83�#���7o�"�ED{j���W�/�% ƹ�>lꮁ��4)p�> �8�n�'���}�������X�,�<:��ecZ���H��n#�sQ�CMq� �2�>�d
=Yʮ���_�k[��킲SH'���B��0_u^
�@e?�"2 �mܸ�l�A{�e���jW
�ߟF���żQ̸�o�3'O"#�ç�<�>��CGd��6�sբ�Ȍ�����d�KzJ�̀N+���]�-h)>��S&H7a3���F����d�o�[Q��2det�*�r�Sg�˕�T-*�6���f���N��)���}}}���> ,Շ?y�[�᛾�W��Ջzz�������v�?�Ob~�?����y�k���p�����gw�9`��&�y?�}###ܼy�?��(���V�����% �ӣ�,�5p"�9`�St&xb����C׬^1���\�⊐|�I���N�%�>�N�S
�Ҳ�cl�2��{��n����8��1�b5�hy t1J���h�eo��p��~Rax�j\}�58����2W���>U������\��Q)��w8������o�������rz�%����QtY�<he ���
S e��AKE�98���DF�Ap�3_N�0��A�~ιR�P*3X�P��@�U��QG���]I;�H�<8T����@��+='���������%|���w�^ p�o�������T}���?���?���B�Ol~�?��O�O}�S�/~�䳦	��sn� f~*��񙙙��%�K �gF]P���K ��S�������'�����k_��oݲ��L��CQQ�;Y���? �R�K�.���QC����$E�PQ���Si]��,%� 0�ȵ� �U�f��?2�.��,��~��;���CU�d�Ы6!K�G�*/*�H<���ؿo/<1����䴫����
 H�
9"tա�+�<�`��.��OfEr�׊G�pIL��ǐi��\����MU�
}|������`ȱ���JC,ߛ�,���o��v�1��T�d3�H��<�X68�	FA�����}������x��/�}af>rd�^T���,]���Oɋ����鏯~����n��[Dt���@��wA���o޼�壣����'N�,� ��?R:���0�D��ə���w��~t�_��W\��u+�V����=�@����yM��d9��j��gt�ɖ:W��<W���~s��v�r�;)ùP�=a 2�@����z|��_���g^�����+�߭xLA'#���$&T���n���g#4��v�7�g.��yݎ�je�;��!撈 ܭ���,�H��e�ƨ|j9��'������� ������;W.>]���!�r��JFX�� ���c���G��,-�b�����G*E�[s�(
��'��(ʨ`�� ݃��S�n�������gq�df~��GCQ� ��t⯏���y��6������~6>|�9dL3�Q"��̻FFF� 6m�ty��>��7�);_7�=,0�-�m�������� &���O�~qth��+��u�]���#��t�5�R��.���@���,o��.$�ܐ,}�	���s�s���\iw{(B�2�ωruo�<|ft��00�7��?�w��W�1��rl-iH�Ra��bf��wF�6��<��|��dN0�\�
e� �Ry�����ČP��a/����9DF�j�@_� ����f��A���R蔀,[J��J�'�vf�m���$Oλ���3W	����G�\y�4�5(�9P� .�!�R�P�)[E(�@��ȲL}d,U�[�����}?�~�����7�X�q�7D������oN���M�6}y۶m���[,��<�����׾{챈ʜl��ǉh�� �ܲe�b�{ ٴiS��[o]�����X��8ʊ�^2�4 ���,G�!�
�!�zpp���F�~��Х[_��2)��9z.�x��6G������i�c5�j�^K��+�sIg�����W�[T�����O���,<�[����EMj�舡�s�n�C�џ*�����!��~ {v�BF94\��k��O��� թ�t�P�{i��zޕ�G�ykR�SI�W~]����ާ
�s��H�;�|P+��~A��<���!������/1�!& }�K�!���D(�]�\eȔ��&L�,���!�3�ރ{�V�Y��6�������o~3֬Y�92sq����/��/�?�p�3OѮ������<���{��sD����V��s���o��GM��T]�p����"�'�y{�e�����w�uW�yx*�����x�I� J�!�@2Z�*X1βl��\}����@>0؀�t���S�a �ȴ<C@�gr��`�t�?�|�j�@�Y���ҙ�e�,Ci͛"�/�a,��s�E��'�����,o���@X�D�p�wZ��q�7o��_�<2�rw�Ves:O�i���P��ҟK�^�����FU(&?U�$K���pg�>��I���5����_Պ�TI�4��t)�cȾ�,�:���6��l�d-dV�`/�!	 QV8R�HM�"��A���v���st����v���P��뮻���,ˮ��*������ٳg�(�dC;Y�{tt����)|��_E__���Ɓ.~��'����~nn�*���?	� 3��s�q ;�sZ��	u�[J��% ��z"�s̯����@J���`���_�f���^4����(��� B��8"�:BW�8�&�r�K�}9�+^���QOZ����I���gV�Wb7))OM6�~� �NvR��(D|� �z=���l6���s3�Ȉ�SD���R���
�+�n ���Ji�;���7�uB*,��B��W�u��9�<�ui���T�PV����H�"��҃��h "3:����<�L�$b�H8˜�}�.��I���Z�9�C#C��8��ġ��y|vv� *��t�����l޼�6"�a�) ��|�������M�6��m۶�q�7�|衇��f/�lٲ�9w=3��?b�� �i)��1�q���®����۲eˍ1Ɲι�����z(m7]J,:0��ˢwb�.\h�@	.�TV Xylb���U�k^����.~���<U�C���,m�#'3�,�����΃IQ�����,q��F]�D��P	ߒx�~ۯ�ќ'i��0��|���c�x#���/ ��{�|�O�����r�-��9)�?D8�X��Z%�$J����'&D�rz�� @�,%�e b��#��πr�Щ[a�h�� �N�\H��;W���%��oj�Q���೪ꓓ��R�'��VC'�
��������z��֜�2fY&��QVd B2/��G�cl�̑}G�u�p����vT�>���j��M�6�����6m��W ��si���-[^�'UX�?����I �u���C�%k ��R��$��D�?Ƹ�� ����nw�ꫯ��u�K-��� �l���$��M �i����G��X91ubݲ��o�f����e9��
�4c/�;������t;])gs@��z:M��\-�����sz1W���D) Lv�����?��ϫr��Ζ33����p�?(1�_]���R=9����|
�II_V�r{������%��!FK\�����S݁�\r@V݃$�nQV �Z	�H(��N�c��M-�f6ү�����  E��R�I�
��(���K%���l;�<�����t:�1ƺ?=�����ζm�>� ��b�mf�J��F�1����*}I��=W^��W_Z��|�3�����K�l���q"ګ��G�s��nݺvjj���;�cccKz��X�x�Im©��z{��X�����X��_3�p�k�eCÃ��\�"�A�����y#�@�@��X�Ҥ>�#��e�>q2�ddZ&�廋��/4=�te;w�����5{�"rb�.`�k�x_�QQO����ǋ�QH+��4��	@�Ց���U?�BF] �H����/݇ϼ�0Ku!ƈ"Dݠ*~Q�]��H&@"ԣ���<?҃*���o4r�#t4�Z	�~������!B�y�5N����}�9{x���Q�Z֯�����׿�H�֭[/��=33��K[���p���_c�
`+3_2::��[�n�"�B�AD����O�<ټ袋�,�` �EF}b��d�����@XO�P%C V._��5+/hd˶\:x3P�B��#��p(9�)֫�K�'W�������u6�%�}�?A�����fF���G>�!;z�"2��U���,�J�I�H8)i�*>��+S JAXߡ���+g�<U'�<վ�9�n})(�"M@H� �|F�40��S��x�O6]���)0�^�C��a�햢�r2����t:DE�y�0�u�����>�DQ�pjy�~ʯ�4�__�{�,�ƍ���<44�w�uW���87�pÕ1Ƌ�%"B�Ͳ�h����j�����:���|a	��wj��ԫi�`��@�B0�b���X��k�o�w1�e�Iyإ���~H� ���W�"6�P)%�4Z�+w<����.���9��?�l�IxDd���#���Q��P�͆@%�Kcp)A �J���Ɍ=�B<��˜?J�]�L�Z&%�ܲ����P��U=��!`��U��|�eU��JK�t� �X��y��5�	��B��ضoz���S�B�ٹ���yS�O�3���񟢟|o��䦛nr7�tSܲe˪<�� �X�Z���b��T,0^�,�*Л$�4Q�.Cι�̼�%��x������|� -��.�D��;� ��O�7z
N���;�L'���g�
x�03����_��/��w_u�w����CU	��� 塚��R`O�u&�s/�S]G��^�4¨����6J�EDv"�L{���U�����(���#���|JT�jW$��tߢ/pH�?Ή��� 8��:�s�9����c�)��/3�o��[�/�I�$n�go<ۼ���5#K�N�% �yř�%���t9�2�e�W\|�+��7^���ɬ���׹�H�1j@�Z�	�R�:)��� O��;w����&�߷������X�;������ɑ�'H#j?�䕂�DJ��Ae��ϕb?U�C2�q@U��{R�d�������5�b5�W/�~�C��Nw t໏�9H���_|�eo/�T���}�z���`d�P��8/9]U`�d����L�W���˯�x���ʆ;݈<#5 �ڛ�,�� �r
��/PI ��/�g��Ƴ��#��|�_@�Ӂ���܉�ON�Y(SZ�[�I�����:��LZ�ЗY�w�/B�d�t�"Y��U��4�P�֟��}up�%e��T�ן�ڽ����FANJ(�/9�����?x|�@�(�'����
�)��|���X���{�O��z�,�/<,0�{�U�t]�"�k�A���s��W]��/��Ӡ��R�T`V�̾�޲s2���U[����W\y�i�D�3��8x� ���/��G����3u�[�Z���^_������)��(0�V�O����,���ʬ��\5*�PV�
�Jg��	�U@��w����Z��U��vH��e_C�5������w�՜>����������S��-�����}}+�/&,0����$X��S��/��Zr�]��mN!��)�`:�B�Ȝ��U!�H��Ĉ���q�[ފ6@T�Ճ�[��{R$s���{����bd��2����) ��E�����!�ձ0rZ{\=�4��(	 e�/�RE��$���LOHI?�(/�#Y��I/�S"R��Յz��JQ��������@��������#F������t�O�����T���o�ذ�X�<�d�w�����U+W\>ؗ����+�^�n�V�mtD2�,�� &'߈�W�����^���a�ڵ��D��=��ǎ��ѣؾ};~���ĉ:�� H�ψ���@]=�W%|O$X*�j��ri�=�S�u:�R|�O겠46�U2U �*%�`	��abXjUB��)�$E!��F��2Br����3=~tj�H�S?ޜ܍����l~������z��v�7^�X`,y��d��B0`y�竲,[`�V]�ҵ������h��;1��Yz"*��N^��ëq��4&'��Q�r��7�*��g���7���(���֒���)�\Z (��U��"��}/ꂟDT�i{ !��9}u��{���Id�<�ŐѼ��˃����y�[��z�9=s�l��:c����$����Ko�gX_�8Xt`V���J�ü�^wP��
��@݅pޥ��t�� O�{r_�4\��7�g�C�>��+�r/.ƀȄcq��¡�b/�	�z����!־�f��u��
�<�ɜ$�*qC��\�T���##R���x9@K򵒽�tRo`1"1�\~!J�>��u�r
 i�d�1k��ao3�sY�;q�=�c�����S	?]�ޮ�B���~�)���X�)��앁zB�{=��^�;���}=0�~��.[�3 t݆�+׺8���9L�<8�EH@u�'k08f4��-�E��"����N��\����#�C_���L�M{bH�Jc���y}�2���62Q�Y�����.fD��af����0��^/��^�-p�t�z??	�,��b	���Xle���K=)�]�o���4<||W�{����� j��2�������Ɗ-^U�q�f�B��;���þ��g�Y#{2��Ӹ��� ��K����H��@5Ab�AH^$'	�C�@��N���A�'�h��|��] �
G�e�����q̟�O'�޹������T��u�~�a�K ��̹$u����&�IB_�u@~b��N�]��@>=?~�y�~�d̜տ�/�hӊ~Z@��H��r!-�i�>	����g�ٗ�z V������D��C'���:�5�<��[�Y���*0��>�^zO���b����o�|�x�X`�钁B�=*'B�Z��ݮWR�7Q��}�s?��1.t���c�>^�:�/����$��4���2;3�{����ݳ\���;���ł�a<M,0�S�$��@
����Os�=�/��r����ϥ)�R��,QO ���`\�.z���X���}}�n���˷�o�% �qv�A&�ť��~q=����;õ;�׽�B��_��Sv�P��7P��>[�P�����'|��a<c,0�sg�S�B��u���ש����.�P�&��{.�޶H<�e�d��N��v�7�_2� Ƴ�b����[�vo0��%	���?Q������̂�a<�X`�g
l����@��O�����9���`�������% ���p.q1��/��z�0^dX`/|��lƳγ=7l�aƋ K �0c	b	�a�a,A,0�0�%�% �a����0�0� � �a�� �0�X�X`�aKK �0c	b	�a�a,A,0�0�%�% �a����0�0� � �a�� �0�X�X`�aKK �0c	b	�a�a,A,0�0�%�%���:   �IDAT �a�q�§�� �0�X�X`�a�'���yn	�a�a�p�z�ۖ �a��/p���7�
�a�a��0 0s��5 ���p�0�x.9k|��0�0�O��� �0�8�����M�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�a�����1E� T��    IEND�B`�