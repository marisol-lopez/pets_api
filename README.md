# Pets APIs

## Endpoints

- `GET /pets` returns all pets
- `GET /pets/1` returns information on specific pet, by id
- `POST /pets` - Create a new pet
  - Acceptable Params:
    - name: string
    - breed: string
    - age: integer
    - about: string
    - vaccinated: boolean
- `PUT /pets/1/vaccinated`
  - Acceptable Params:
    - vaccinated: boolean
- `DELETE /pets/1` to delete a pet
