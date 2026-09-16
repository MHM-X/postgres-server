CREATE TABLE items (
    id BIGINT PRIMARY KEY,
    name TEXT,
    "servicePrices" JSONB,
    name_in_english TEXT
);

CREATE TABLE users (
    uid UUID PRIMARY KEY,
    name TEXT,
    role TEXT DEFAULT 'customer',
    has_active_order BOOLEAN,
    email TEXT,
    phone TEXT
);

CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    created_at TIMESTAMPTZ,
    items JSONB,
    status TEXT,
    subtotal DOUBLE PRECISION,
    delivery_fee DOUBLE PRECISION,
    total DOUBLE PRECISION,
    customer_id TEXT,
    notes TEXT,
    time_interval BIGINT
);
