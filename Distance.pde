// A L-inf distance
float max_distance(float x, float y, float z) {
  return Math.max(Math.max(Math.abs(x), Math.abs(y)), Math.abs(z));
}

float max_distance(PVector vec) {
  return Math.max(Math.max(Math.abs(vec.x), Math.abs(vec.y)), Math.abs(vec.z));
}


float p_distance(float x, float y, float z, int p) {
  float dist = 0.0;
  dist += Math.pow(x, p);
  dist += Math.pow(y, p);
  dist += Math.pow(z, p);
  return (float)Math.pow(dist, 1/p);
}

float p_distance(PVector vec, int p) {
  float dist = 0.0;
  dist += Math.pow(vec.x, p);
  dist += Math.pow(vec.y, p);
  dist += Math.pow(vec.z, p);
  return (float)Math.pow(dist, 1/p);
}


float distance(float x, float y, float z) {
  // This is a Manhattan distance
  float dist = x + y + z;
  return dist;
}

float distance(PVector vec) {
  // This is a Manhattan distance
  float dist = vec.x + vec.y + vec.z;
  return dist;
}
