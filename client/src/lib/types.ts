export type Painting = {
  id: string;
  created_at: string;
  updated_at: string;
  name: string;
  description?: string;
  image_url: string;
  painter: string;
  price: number;
  order_link: string;
};
