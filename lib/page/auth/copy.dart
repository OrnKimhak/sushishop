
              SizedBox(height: 20),
              SizedBox(height: 10),
              SizedBox(
                height: 600,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: ListView.builder(
                    itemCount: Myfood.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColorPath.red,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColorPath.grey.withAlpha(70),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "${Myfood[index]['image']}",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: Container(
                              width: 180,
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColorPath.orange.withAlpha(200),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "${Myfood[index]['name']}",
                                  style: TextStyle(
                                    color: AppColorPath.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: CircleButton(
                              icon: Icons.heart_broken,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),