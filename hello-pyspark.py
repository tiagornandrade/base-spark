from pyspark.sql import SparkSession


def main():
    spark = SparkSession.builder \
        .appName("HelloWorld") \
        .master("spark://localhost:7077") \
        .getOrCreate()

    numbers_rdd = spark.sparkContext.parallelize(range(1, 1000))

    count = numbers_rdd.count()

    print(f"Count of numbers from 1 to 1000 is: {count}")

    spark.stop()


if __name__ == "__main__":
    main()
